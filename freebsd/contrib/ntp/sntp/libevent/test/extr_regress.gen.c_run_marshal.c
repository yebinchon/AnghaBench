
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int some_bytes_length; int notes_length; int other_numbers_length; int * other_numbers_data; scalar_t__ other_numbers_set; int large_number_data; scalar_t__ large_number_set; int * notes_data; scalar_t__ notes_set; int fixed_bytes_data; int some_bytes_data; scalar_t__ some_bytes_set; int how_data; } ;
struct evbuffer {int dummy; } ;


 int RUN_FIXED_BYTES ;
 int RUN_HOW ;
 int RUN_LARGE_NUMBER ;
 int RUN_NOTES ;
 int RUN_OTHER_NUMBERS ;
 int RUN_SOME_BYTES ;
 int evtag_marshal (struct evbuffer*,int ,int ,int) ;
 int evtag_marshal_int (struct evbuffer*,int ,int ) ;
 int evtag_marshal_int64 (struct evbuffer*,int ,int ) ;
 int evtag_marshal_string (struct evbuffer*,int ,int ) ;

void
run_marshal(struct evbuffer *evbuf, const struct run *tmp){
  evtag_marshal_string(evbuf, RUN_HOW, tmp->how_data);
  if (tmp->some_bytes_set) {
    evtag_marshal(evbuf, RUN_SOME_BYTES, tmp->some_bytes_data, tmp->some_bytes_length);
  }
  evtag_marshal(evbuf, RUN_FIXED_BYTES, tmp->fixed_bytes_data, (24));
  if (tmp->notes_set) {
    {
      int i;
      for (i = 0; i < tmp->notes_length; ++i) {
    evtag_marshal_string(evbuf, RUN_NOTES, tmp->notes_data[i]);
      }
    }
  }
  if (tmp->large_number_set) {
    evtag_marshal_int64(evbuf, RUN_LARGE_NUMBER, tmp->large_number_data);
  }
  if (tmp->other_numbers_set) {
    {
      int i;
      for (i = 0; i < tmp->other_numbers_length; ++i) {
    evtag_marshal_int(evbuf, RUN_OTHER_NUMBERS, tmp->other_numbers_data[i]);
      }
    }
  }
}
