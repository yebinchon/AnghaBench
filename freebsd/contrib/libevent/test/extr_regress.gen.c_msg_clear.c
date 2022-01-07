
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int from_name_set; int to_name_set; int attack_set; int run_set; int run_length; scalar_t__ run_num_allocated; int * run_data; int * attack_data; int * to_name_data; int * from_name_data; } ;


 int free (int *) ;
 int kill_free (int *) ;
 int run_free (int ) ;

void
msg_clear(struct msg *tmp)
{
  if (tmp->from_name_set == 1) {
    free(tmp->from_name_data);
    tmp->from_name_data = ((void*)0);
    tmp->from_name_set = 0;
  }
  if (tmp->to_name_set == 1) {
    free(tmp->to_name_data);
    tmp->to_name_data = ((void*)0);
    tmp->to_name_set = 0;
  }
  if (tmp->attack_set == 1) {
    kill_free(tmp->attack_data);
    tmp->attack_data = ((void*)0);
    tmp->attack_set = 0;
  }
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
}
