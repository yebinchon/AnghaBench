
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I386_SET_GSBASE ;
 int sysarch (int ,void**) ;

int
i386_set_gsbase(void *addr)
{

 return (sysarch(I386_SET_GSBASE, &addr));
}
