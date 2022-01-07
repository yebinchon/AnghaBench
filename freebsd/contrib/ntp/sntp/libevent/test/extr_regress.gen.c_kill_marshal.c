
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int how_often_length; int * how_often_data; scalar_t__ how_often_set; int action_data; int weapon_data; } ;
struct evbuffer {int dummy; } ;


 int KILL_ACTION ;
 int KILL_HOW_OFTEN ;
 int KILL_WEAPON ;
 int evtag_marshal_int (struct evbuffer*,int ,int ) ;
 int evtag_marshal_string (struct evbuffer*,int ,int ) ;

void
kill_marshal(struct evbuffer *evbuf, const struct kill *tmp){
  evtag_marshal_string(evbuf, KILL_WEAPON, tmp->weapon_data);
  evtag_marshal_string(evbuf, KILL_ACTION, tmp->action_data);
  if (tmp->how_often_set) {
    {
      int i;
      for (i = 0; i < tmp->how_often_length; ++i) {
    evtag_marshal_int(evbuf, KILL_HOW_OFTEN, tmp->how_often_data[i]);
      }
    }
  }
}
