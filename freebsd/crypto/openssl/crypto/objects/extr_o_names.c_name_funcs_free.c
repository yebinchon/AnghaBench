
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NAME_FUNCS ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void name_funcs_free(NAME_FUNCS *ptr)
{
    OPENSSL_free(ptr);
}
