
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lib_t ;


 scalar_t__ __itt_get_proc (int *,char*) ;

__attribute__((used)) static int __itt_lib_version(lib_t lib)
{
    if (lib == ((void*)0))
        return 0;
    if (__itt_get_proc(lib, "__itt_api_init"))
        return 2;
    if (__itt_get_proc(lib, "__itt_api_version"))
        return 1;
    return 0;
}
