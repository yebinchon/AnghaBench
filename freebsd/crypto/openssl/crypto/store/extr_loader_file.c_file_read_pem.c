
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_pass_data {int dummy; } ;
typedef int UI_METHOD ;
typedef int EVP_CIPHER_INFO ;
typedef int BIO ;


 int PEM_FLAG_EAY_COMPATIBLE ;
 int PEM_FLAG_SECURE ;
 int PEM_do_header (int *,unsigned char*,long*,int ,struct pem_pass_data*) ;
 int PEM_get_EVP_CIPHER_INFO (char*,int *) ;
 int PEM_read_bio (int *,char**,char**,unsigned char**,long*) ;
 int PEM_read_bio_ex (int *,char**,char**,unsigned char**,long*,int) ;
 int file_fill_pem_pass_data (struct pem_pass_data*,char*,int const*,void*) ;
 int file_get_pem_pass ;
 int strlen (char*) ;

__attribute__((used)) static int file_read_pem(BIO *bp, char **pem_name, char **pem_header,
                         unsigned char **data, long *len,
                         const UI_METHOD *ui_method,
                         void *ui_data, int secure)
{
    int i = secure
        ? PEM_read_bio_ex(bp, pem_name, pem_header, data, len,
                          PEM_FLAG_SECURE | PEM_FLAG_EAY_COMPATIBLE)
        : PEM_read_bio(bp, pem_name, pem_header, data, len);

    if (i <= 0)
        return 0;







    if (strlen(*pem_header) > 10) {
        EVP_CIPHER_INFO cipher;
        struct pem_pass_data pass_data;

        if (!PEM_get_EVP_CIPHER_INFO(*pem_header, &cipher)
            || !file_fill_pem_pass_data(&pass_data, "PEM", ui_method, ui_data)
            || !PEM_do_header(&cipher, *data, len, file_get_pem_pass,
                              &pass_data)) {
            return 0;
        }
    }
    return 1;
}
