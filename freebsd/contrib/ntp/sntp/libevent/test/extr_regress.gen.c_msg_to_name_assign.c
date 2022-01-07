
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int to_name_set; int * to_name_data; } ;


 int free (int *) ;
 int * strdup (char const*) ;

int
msg_to_name_assign(struct msg *msg,
    const char * value)
{
  if (msg->to_name_data != ((void*)0))
    free(msg->to_name_data);
  if ((msg->to_name_data = strdup(value)) == ((void*)0))
    return (-1);
  msg->to_name_set = 1;
  return (0);
}
