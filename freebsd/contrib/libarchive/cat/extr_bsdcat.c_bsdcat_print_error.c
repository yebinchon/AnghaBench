
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a ;
 int archive_error_string (int ) ;
 int bsdcat_current_path ;
 int exit_status ;
 int lafe_warnc (int ,char*,int ,int ) ;

void
bsdcat_print_error(void)
{
 lafe_warnc(0, "%s: %s",
     bsdcat_current_path, archive_error_string(a));
 exit_status = 1;
}
