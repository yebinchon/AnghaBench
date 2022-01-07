
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {scalar_t__ refcnt; } ;
struct bufferevent_filtered {scalar_t__ got_eof; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;


 int BEV_FINISHED ;
 int BEV_LOCK (struct bufferevent*) ;
 int BEV_NORMAL ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int EV_READ ;
 int be_filter_process_input (struct bufferevent_filtered*,int,int*) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int ,int ) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;

__attribute__((used)) static void
be_filter_readcb(struct bufferevent *underlying, void *me_)
{
 struct bufferevent_filtered *bevf = me_;
 enum bufferevent_filter_result res;
 enum bufferevent_flush_mode state;
 struct bufferevent *bufev = downcast(bevf);
 struct bufferevent_private *bufev_private = BEV_UPCAST(bufev);
 int processed_any = 0;

 BEV_LOCK(bufev);


 EVUTIL_ASSERT(bufev_private->refcnt >= 0);


 if (bufev_private->refcnt > 0) {

  if (bevf->got_eof)
   state = BEV_FINISHED;
  else
   state = BEV_NORMAL;


  res = be_filter_process_input(bevf, state, &processed_any);
  (void)res;




  if (processed_any)
   bufferevent_trigger_nolock_(bufev, EV_READ, 0);
 }

 BEV_UNLOCK(bufev);
}
