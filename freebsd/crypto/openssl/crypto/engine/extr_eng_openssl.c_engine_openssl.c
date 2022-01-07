
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_free (int *) ;
 int * ENGINE_new () ;
 int bind_helper (int *) ;

__attribute__((used)) static ENGINE *engine_openssl(void)
{
    ENGINE *ret = ENGINE_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!bind_helper(ret)) {
        ENGINE_free(ret);
        return ((void*)0);
    }
    return ret;
}
