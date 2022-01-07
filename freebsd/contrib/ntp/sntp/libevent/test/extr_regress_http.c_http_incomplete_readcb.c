
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int test_ok ;

__attribute__((used)) static void
http_incomplete_readcb(struct bufferevent *bev, void *arg)
{
 test_ok = -1;
 event_base_loopexit(exit_base,((void*)0));
}
