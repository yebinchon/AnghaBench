
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * remote_desc ;
 int serial_close (int *) ;

__attribute__((used)) static void
remote_close (int quitting)
{
  if (remote_desc)
    serial_close (remote_desc);
  remote_desc = ((void*)0);
}
