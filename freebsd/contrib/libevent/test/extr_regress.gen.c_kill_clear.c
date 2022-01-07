
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int weapon_set; int action_set; int how_often_set; scalar_t__ how_often_num_allocated; scalar_t__ how_often_length; int * how_often_data; int * action_data; int * weapon_data; } ;


 int free (int *) ;

void
kill_clear(struct kill *tmp)
{
  if (tmp->weapon_set == 1) {
    free(tmp->weapon_data);
    tmp->weapon_data = ((void*)0);
    tmp->weapon_set = 0;
  }
  if (tmp->action_set == 1) {
    free(tmp->action_data);
    tmp->action_data = ((void*)0);
    tmp->action_set = 0;
  }
  if (tmp->how_often_set == 1) {
    free(tmp->how_often_data);
    tmp->how_often_data = ((void*)0);
    tmp->how_often_set = 0;
    tmp->how_often_length = 0;
    tmp->how_often_num_allocated = 0;
  }
}
