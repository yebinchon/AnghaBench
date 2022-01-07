
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_add (int *) ;
 int ENGINE_free (int *) ;
 int * ENGINE_rdrand () ;
 int ERR_clear_error () ;

void engine_load_rdrand_int(void)
{
    extern unsigned int OPENSSL_ia32cap_P[];

    if (OPENSSL_ia32cap_P[1] & (1 << (62 - 32))) {
        ENGINE *toadd = ENGINE_rdrand();
        if (!toadd)
            return;
        ENGINE_add(toadd);
        ENGINE_free(toadd);
        ERR_clear_error();
    }
}
