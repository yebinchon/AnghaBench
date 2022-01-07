
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_async_io () ;
 int enable_async_io () ;
 int putpkt (char*) ;
 scalar_t__ server_waiting ;
 int sprintf (char*,char*,int) ;

void
new_thread_notify (int id)
{
  char own_buf[256];


  if (1)
    return;

  if (server_waiting == 0)
    return;

  sprintf (own_buf, "n%x", id);
  disable_async_io ();
  putpkt (own_buf);
  enable_async_io ();
}
