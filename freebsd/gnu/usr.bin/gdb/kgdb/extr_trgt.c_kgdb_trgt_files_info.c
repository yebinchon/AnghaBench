
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int printf_filtered (char*,char*) ;
 char* vmcore ;
 int wrap_here (char*) ;

__attribute__((used)) static void
kgdb_trgt_files_info(struct target_ops *target)
{

 printf_filtered ("\t`%s', ", vmcore);
 wrap_here ("        ");
 printf_filtered ("file type %s.\n", "FreeBSD kernel vmcore");
}
