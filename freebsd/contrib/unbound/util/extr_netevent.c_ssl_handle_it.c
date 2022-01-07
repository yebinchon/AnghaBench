
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {scalar_t__ tcp_is_reading; } ;


 int ssl_handle_read (struct comm_point*) ;
 int ssl_handle_write (struct comm_point*) ;

__attribute__((used)) static int
ssl_handle_it(struct comm_point* c)
{
 if(c->tcp_is_reading)
  return ssl_handle_read(c);
 return ssl_handle_write(c);
}
