
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * Pidf ;
 int SM_TIME_DEFAULT ;
 int sm_io_close (int *,int ) ;

void
close_sendmail_pid()
{
 if (Pidf == ((void*)0))
  return;

 (void) sm_io_close(Pidf, SM_TIME_DEFAULT);
 Pidf = ((void*)0);
}
