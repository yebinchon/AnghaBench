
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int max_single_write; int max_single_read; int * rate_limiting; } ;


 int MAX_SINGLE_READ_DEFAULT ;
 int MAX_SINGLE_WRITE_DEFAULT ;

int
bufferevent_ratelim_init_(struct bufferevent_private *bev)
{
 bev->rate_limiting = ((void*)0);
 bev->max_single_read = MAX_SINGLE_READ_DEFAULT;
 bev->max_single_write = MAX_SINGLE_WRITE_DEFAULT;

 return 0;
}
