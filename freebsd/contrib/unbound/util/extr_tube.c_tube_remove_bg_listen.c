
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int * cmd_msg; int * listen_com; } ;


 int comm_point_delete (int *) ;
 int free (int *) ;

void tube_remove_bg_listen(struct tube* tube)
{
 if(tube->listen_com) {
  comm_point_delete(tube->listen_com);
  tube->listen_com = ((void*)0);
 }
 free(tube->cmd_msg);
 tube->cmd_msg = ((void*)0);
}
