
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fxsave (char*) ;

__attribute__((used)) static void
fpusave_fxsave(void *addr)
{

 fxsave((char *)addr);
}
