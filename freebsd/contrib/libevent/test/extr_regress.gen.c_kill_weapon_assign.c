
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int weapon_set; int * weapon_data; } ;


 int free (int *) ;
 int * strdup (char const*) ;

int
kill_weapon_assign(struct kill *msg,
    const char * value)
{
  if (msg->weapon_data != ((void*)0))
    free(msg->weapon_data);
  if ((msg->weapon_data = strdup(value)) == ((void*)0))
    return (-1);
  msg->weapon_set = 1;
  return (0);
}
