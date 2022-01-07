
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int counter ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * syslog_file ;
 int syslogit ;

__attribute__((used)) static void
cleanup_log(void)
{


 if(counter == 1){
  syslogit = TRUE;
  fflush(syslog_file);
  fclose(syslog_file);
  syslog_file = ((void*)0);
  counter = 0;
 }
}
