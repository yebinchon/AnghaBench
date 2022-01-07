
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int *,int ) ;
 int X509_NAME_print (int *,int const*,int) ;
 unsigned long XN_FLAG_COMPAT ;
 int do_name_ex (int ,int *,int const*,int,unsigned long) ;
 int send_fp_chars ;

int X509_NAME_print_ex_fp(FILE *fp, const X509_NAME *nm, int indent,
                          unsigned long flags)
{
    if (flags == XN_FLAG_COMPAT) {
        BIO *btmp;
        int ret;
        btmp = BIO_new_fp(fp, BIO_NOCLOSE);
        if (!btmp)
            return -1;
        ret = X509_NAME_print(btmp, nm, indent);
        BIO_free(btmp);
        return ret;
    }
    return do_name_ex(send_fp_chars, fp, nm, indent, flags);
}
