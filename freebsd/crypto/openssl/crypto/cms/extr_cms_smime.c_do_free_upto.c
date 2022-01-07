
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_pop (int *) ;

__attribute__((used)) static void do_free_upto(BIO *f, BIO *upto)
{
    if (upto) {
        BIO *tbio;
        do {
            tbio = BIO_pop(f);
            BIO_free(f);
            f = tbio;
        }
        while (f && f != upto);
    } else
        BIO_free_all(f);
}
