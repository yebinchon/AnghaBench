
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xsave (char*,int ) ;
 int xsave_mask ;

__attribute__((used)) static void
fpusave_xsave(void *addr)
{

 xsave((char *)addr, xsave_mask);
}
