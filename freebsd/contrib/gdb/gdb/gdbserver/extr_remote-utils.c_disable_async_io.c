
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGIO ;
 int SIG_IGN ;
 int signal (int ,int ) ;

void
disable_async_io (void)
{
  signal (SIGIO, SIG_IGN);
}
