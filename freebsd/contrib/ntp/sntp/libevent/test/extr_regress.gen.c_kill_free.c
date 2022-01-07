
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int how_often_set; struct kill* how_often_data; scalar_t__ how_often_num_allocated; scalar_t__ how_often_length; struct kill* action_data; struct kill* weapon_data; } ;


 int free (struct kill*) ;

void
kill_free(struct kill *tmp)
{
  if (tmp->weapon_data != ((void*)0))
      free (tmp->weapon_data);
  if (tmp->action_data != ((void*)0))
      free (tmp->action_data);
  if (tmp->how_often_set == 1) {
    free(tmp->how_often_data);
    tmp->how_often_data = ((void*)0);
    tmp->how_often_set = 0;
    tmp->how_often_length = 0;
    tmp->how_often_num_allocated = 0;
  }
  free(tmp->how_often_data);
  free(tmp);
}
