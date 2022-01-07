
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int * BIO_new_fp (int ,int) ;
 scalar_t__ istext (int) ;
 int stdin ;

BIO *dup_bio_in(int format)
{
    return BIO_new_fp(stdin,
                      BIO_NOCLOSE | (istext(format) ? BIO_FP_TEXT : 0));
}
