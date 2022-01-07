
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int puts_filtered (char*) ;

__attribute__((used)) static void
sds_files_info (struct target_ops *ignore)
{
  puts_filtered ("Debugging over a serial connection, using SDS protocol.\n");
}
