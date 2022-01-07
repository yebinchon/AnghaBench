
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {int context; int (* free_context ) (int ) ;} ;
struct bufferevent {int dummy; } ;


 int EVUTIL_ASSERT (struct bufferevent_filtered*) ;
 int stub1 (int ) ;
 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_filter_destruct(struct bufferevent *bev)
{
 struct bufferevent_filtered *bevf = upcast(bev);
 EVUTIL_ASSERT(bevf);
 if (bevf->free_context)
  bevf->free_context(bevf->context);
}
