
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tube_callback_type ;
struct tube {int sr; int listen_com; void* listen_arg; int * listen_cb; } ;
struct comm_base {int dummy; } ;


 int comm_point_create_raw (struct comm_base*,int ,int ,int ,struct tube*) ;
 int errno ;
 int log_err (char*) ;
 int tube_handle_listen ;

int tube_setup_bg_listen(struct tube* tube, struct comm_base* base,
        tube_callback_type* cb, void* arg)
{
 tube->listen_cb = cb;
 tube->listen_arg = arg;
 if(!(tube->listen_com = comm_point_create_raw(base, tube->sr,
  0, tube_handle_listen, tube))) {
  int err = errno;
  log_err("tube_setup_bg_l: commpoint creation failed");
  errno = err;
  return 0;
 }
 return 1;
}
