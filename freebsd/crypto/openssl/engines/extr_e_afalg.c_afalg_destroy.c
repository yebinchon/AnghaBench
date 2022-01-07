
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ERR_unload_AFALG_strings () ;
 int free_cbc () ;

__attribute__((used)) static int afalg_destroy(ENGINE *e)
{
    ERR_unload_AFALG_strings();
    free_cbc();
    return 1;
}
