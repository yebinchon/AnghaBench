
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xsave_mask ;
 int xsaveopt (char*,int ) ;

__attribute__((used)) static void
fpusave_xsaveopt(void *addr)
{

 xsaveopt((char *)addr, xsave_mask);
}
