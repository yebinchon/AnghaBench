
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int atexit (int ) ;
 int change_logfile (char const*,int ) ;
 int cleanup_log ;
 int counter ;

void
open_logfile(
 const char *logfile
 )
{
 change_logfile(logfile, FALSE);
 counter = 1;
 atexit(cleanup_log);
}
