
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mips_initializing ;

__attribute__((used)) static void
mips_initialize_cleanups (void *arg)
{
  mips_initializing = 0;
}
