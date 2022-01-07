
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int * user_abort_pipe ;
 int write (int ,char*,int) ;

extern void
io_write_to_user_abort_pipe(void)
{





 uint8_t b = '\0';
 const int ret = write(user_abort_pipe[1], &b, 1);
 (void)ret;
 return;
}
