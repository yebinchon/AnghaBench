
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dlsym (void*,char*) ;

__attribute__((used)) static void * tncs_get_sym(void *handle, char *func)
{
 void *fptr;

 fptr = dlsym(handle, func);

 return fptr;
}
