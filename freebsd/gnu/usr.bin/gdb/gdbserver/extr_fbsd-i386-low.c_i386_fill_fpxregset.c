
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i387_cache_to_fxsave (void*) ;

__attribute__((used)) static void
i386_fill_fpxregset (void *buf)
{
  i387_cache_to_fxsave (buf);
}
