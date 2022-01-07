
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (char*,int) ;
 scalar_t__ KEY ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int tt_assert (int *) ;

__attribute__((used)) static EVP_PKEY *
getkey(void)
{
 EVP_PKEY *key;
 BIO *bio;


 bio = BIO_new_mem_buf((char*)KEY, -1);
 tt_assert(bio);

 key = PEM_read_bio_PrivateKey(bio,((void*)0),((void*)0),((void*)0));
 BIO_free(bio);
 tt_assert(key);

 return key;
end:
 return ((void*)0);
}
