
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {scalar_t__ n_added; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;


 int BEV_NORMAL ;
 int be_filter_process_output (struct bufferevent_filtered*,int ,int*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;

__attribute__((used)) static void
bufferevent_filtered_outbuf_cb(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo, void *arg)
{
 struct bufferevent_filtered *bevf = arg;
 struct bufferevent *bev = downcast(bevf);

 if (cbinfo->n_added) {
  int processed_any = 0;


  bufferevent_incref_and_lock_(bev);
  be_filter_process_output(bevf, BEV_NORMAL, &processed_any);
  bufferevent_decref_and_unlock_(bev);
 }
}
