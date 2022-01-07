
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int errorcb_invoked ;

__attribute__((used)) static void
errorcb(struct bufferevent *bev, short what, void *arg)
{
 errorcb_invoked = 1;
}
