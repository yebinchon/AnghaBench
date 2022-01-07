
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
struct basic_test_data {int base; } ;


 struct bufferevent* bufferevent_filter_new (struct bufferevent*,int *,int *,int ,int *,int *) ;
 int bufferevent_free (struct bufferevent*) ;
 struct bufferevent* bufferevent_socket_new (int ,int,int ) ;
 int tt_assert (struct bufferevent*) ;

__attribute__((used)) static void
test_bufferevent_socket_filter_inactive(void *arg)
{
 struct basic_test_data *data = arg;
 struct bufferevent *bev = ((void*)0), *bevf = ((void*)0);

 bev = bufferevent_socket_new(data->base, -1, 0);
 tt_assert(bev);
 bevf = bufferevent_filter_new(bev, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
 tt_assert(bevf);

end:
 if (bevf)
  bufferevent_free(bevf);
 if (bev)
  bufferevent_free(bev);
}
