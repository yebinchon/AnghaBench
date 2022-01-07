
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGIO ;
 int input_interrupt ;
 int signal (int ,int ) ;

void
enable_async_io (void)
{
  signal (SIGIO, input_interrupt);
}
