
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_READING ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int test_ok ;

__attribute__((used)) static void
http_incomplete_errorcb(struct bufferevent *bev, short what, void *arg)
{
 if (what == (BEV_EVENT_READING|BEV_EVENT_EOF))
  test_ok++;
 else
  test_ok = -2;
 event_base_loopexit(exit_base,((void*)0));
}
