
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int run_length; int * run_data; scalar_t__ run_set; int attack_data; scalar_t__ attack_set; int to_name_data; int from_name_data; } ;
struct evbuffer {int dummy; } ;


 int MSG_ATTACK ;
 int MSG_FROM_NAME ;
 int MSG_RUN ;
 int MSG_TO_NAME ;
 int evtag_marshal_kill (struct evbuffer*,int ,int ) ;
 int evtag_marshal_run (struct evbuffer*,int ,int ) ;
 int evtag_marshal_string (struct evbuffer*,int ,int ) ;

void
msg_marshal(struct evbuffer *evbuf, const struct msg *tmp){
  evtag_marshal_string(evbuf, MSG_FROM_NAME, tmp->from_name_data);
  evtag_marshal_string(evbuf, MSG_TO_NAME, tmp->to_name_data);
  if (tmp->attack_set) {
    evtag_marshal_kill(evbuf, MSG_ATTACK, tmp->attack_data);
  }
  if (tmp->run_set) {
    {
      int i;
      for (i = 0; i < tmp->run_length; ++i) {
    evtag_marshal_run(evbuf, MSG_RUN, tmp->run_data[i]);
      }
    }
  }
}
