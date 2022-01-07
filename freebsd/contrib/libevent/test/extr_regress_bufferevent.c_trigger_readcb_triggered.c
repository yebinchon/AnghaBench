
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int TT_BLATHER (char*) ;
 int bufferevent_trigger_event (struct bufferevent*,int ,int ) ;
 int bufferevent_trigger_test_flags ;
 int n_reads_invoked ;

__attribute__((used)) static void
trigger_readcb_triggered(struct bufferevent *bev, void *ctx)
{
 TT_BLATHER(("Read successfully triggered."));
 n_reads_invoked++;
 bufferevent_trigger_event(bev, ~0, bufferevent_trigger_test_flags);
}
