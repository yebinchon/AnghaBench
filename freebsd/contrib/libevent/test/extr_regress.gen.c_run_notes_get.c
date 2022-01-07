
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int notes_length; char** notes_data; int notes_set; } ;



int
run_notes_get(struct run *msg, int offset,
    char * *value)
{
  if (!msg->notes_set || offset < 0 || offset >= msg->notes_length)
    return (-1);
  *value = msg->notes_data[offset];
  return (0);
}
