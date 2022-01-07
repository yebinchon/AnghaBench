
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int action_set; int * action_data; } ;


 int free (int *) ;
 int * strdup (char const*) ;

int
kill_action_assign(struct kill *msg,
    const char * value)
{
  if (msg->action_data != ((void*)0))
    free(msg->action_data);
  if ((msg->action_data = strdup(value)) == ((void*)0))
    return (-1);
  msg->action_set = 1;
  return (0);
}
