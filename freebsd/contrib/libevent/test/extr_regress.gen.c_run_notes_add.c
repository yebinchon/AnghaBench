
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {scalar_t__ notes_length; scalar_t__ notes_num_allocated; char** notes_data; int notes_set; } ;


 scalar_t__ run_notes_expand_to_hold_more (struct run*) ;
 char* strdup (char const*) ;

char * *
run_notes_add(struct run *msg, const char * value)
{
  if (++msg->notes_length >= msg->notes_num_allocated) {
    if (run_notes_expand_to_hold_more(msg)<0)
      goto error;
  }
  if (value != ((void*)0)) {
    msg->notes_data[msg->notes_length - 1] = strdup(value);
    if (msg->notes_data[msg->notes_length - 1] == ((void*)0)) {
      goto error;
    }
  } else {
    msg->notes_data[msg->notes_length - 1] = ((void*)0);
  }
  msg->notes_set = 1;
  return &(msg->notes_data[msg->notes_length - 1]);
error:
  --msg->notes_length;
  return (((void*)0));
}
