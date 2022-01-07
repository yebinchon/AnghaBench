
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xrstor (char*,int ) ;
 int xsave_mask ;

__attribute__((used)) static void
fpurestore_xrstor(void *addr)
{

 xrstor((char *)addr, xsave_mask);
}
