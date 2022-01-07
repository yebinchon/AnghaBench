
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win32_extension_fns {scalar_t__ ConnectEx; } ;
struct bufferevent {int ev_base; } ;


 scalar_t__ BEV_IS_ASYNC (struct bufferevent*) ;
 scalar_t__ event_base_get_iocp_ (int ) ;
 struct win32_extension_fns* event_get_win32_extension_fns_ () ;

int
bufferevent_async_can_connect_(struct bufferevent *bev)
{
 const struct win32_extension_fns *ext =
     event_get_win32_extension_fns_();

 if (BEV_IS_ASYNC(bev) &&
     event_base_get_iocp_(bev->ev_base) &&
     ext && ext->ConnectEx)
  return 1;

 return 0;
}
