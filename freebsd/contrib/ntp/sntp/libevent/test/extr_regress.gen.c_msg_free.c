
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int run_set; int run_length; struct msg* run_data; scalar_t__ run_num_allocated; int * attack_data; struct msg* to_name_data; struct msg* from_name_data; } ;


 int free (struct msg*) ;
 int kill_free (int *) ;
 int run_free (struct msg) ;

void
msg_free(struct msg *tmp)
{
  if (tmp->from_name_data != ((void*)0))
      free (tmp->from_name_data);
  if (tmp->to_name_data != ((void*)0))
      free (tmp->to_name_data);
  if (tmp->attack_data != ((void*)0))
      kill_free(tmp->attack_data);
  if (tmp->run_set == 1) {
    int i;
    for (i = 0; i < tmp->run_length; ++i) {
      run_free(tmp->run_data[i]);
    }
    free(tmp->run_data);
    tmp->run_data = ((void*)0);
    tmp->run_set = 0;
    tmp->run_length = 0;
    tmp->run_num_allocated = 0;
  }
  free(tmp->run_data);
  free(tmp);
}
