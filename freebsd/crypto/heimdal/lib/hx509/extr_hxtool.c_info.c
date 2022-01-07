
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA_METHOD ;
typedef int DH_METHOD ;


 int * DH_get_default_method () ;
 char* DH_meth_get0_name (int const*) ;
 int ENGINE_add_conf_module () ;
 int RAND_status () ;
 int * RSA_get_default_method () ;
 char* RSA_meth_get0_name (int const*) ;
 int printf (char*,...) ;

int
info(void *opt, int argc, char **argv)
{

    ENGINE_add_conf_module();

    {
 const RSA_METHOD *m = RSA_get_default_method();
 if (m != ((void*)0))
     printf("rsa: %s\n", RSA_meth_get0_name(m));
    }
    {
 const DH_METHOD *m = DH_get_default_method();
 if (m != ((void*)0))
     printf("dh: %s\n", DH_meth_get0_name(m));
    }





    {
 printf("ecdsa: hcrypto null\n");
    }

    {
 int ret = RAND_status();
 printf("rand: %s\n", ret == 1 ? "ok" : "not available");
    }

    return 0;
}
