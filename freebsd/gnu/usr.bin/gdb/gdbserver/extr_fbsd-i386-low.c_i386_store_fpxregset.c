
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i387_fxsave_to_cache (void const*) ;

__attribute__((used)) static void
i386_store_fpxregset (const void *buf)
{
  i387_fxsave_to_cache (buf);
}
