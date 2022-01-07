
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int output; } ;


 scalar_t__ evbuffer_get_length (int ) ;
 int test_ok ;

__attribute__((used)) static void
writecb(struct bufferevent *bev, void *arg)
{
 if (evbuffer_get_length(bev->output) == 0) {
  test_ok++;
 }
}
