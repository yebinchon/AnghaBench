
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i387_fsave_to_cache (void const*) ;

__attribute__((used)) static void
amd64_store_fpregset(const void *buf)
{

 i387_fsave_to_cache(buf);
}
