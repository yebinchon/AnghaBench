
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sw; int res_com; } ;
struct comm_base {int dummy; } ;


 int comm_point_create_raw (struct comm_base*,int ,int,int ,struct tube*) ;
 int errno ;
 int log_err (char*) ;
 int tube_handle_write ;

int tube_setup_bg_write(struct tube* tube, struct comm_base* base)
{
 if(!(tube->res_com = comm_point_create_raw(base, tube->sw,
  1, tube_handle_write, tube))) {
  int err = errno;
  log_err("tube_setup_bg_w: commpoint creation failed");
  errno = err;
  return 0;
 }
 return 1;
}
