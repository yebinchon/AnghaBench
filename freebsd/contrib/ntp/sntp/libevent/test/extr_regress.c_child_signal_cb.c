
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int evutil_socket_t ;


 int event_loopexit (struct timeval*) ;

__attribute__((used)) static void
child_signal_cb(evutil_socket_t fd, short event, void *arg)
{
 struct timeval tv;
 int *pint = arg;

 *pint = 1;

 tv.tv_usec = 500000;
 tv.tv_sec = 0;
 event_loopexit(&tv);
}
