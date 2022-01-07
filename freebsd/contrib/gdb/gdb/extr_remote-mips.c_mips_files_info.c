
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int printf_unfiltered (char*) ;

__attribute__((used)) static void
mips_files_info (struct target_ops *ignore)
{
  printf_unfiltered ("Debugging a MIPS board over a serial line.\n");
}
