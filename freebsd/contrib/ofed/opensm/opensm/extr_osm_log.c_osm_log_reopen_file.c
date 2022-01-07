
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ out_port; int lock; } ;
typedef TYPE_1__ osm_log_t ;


 int cl_spinlock_acquire (int *) ;
 int cl_spinlock_release (int *) ;
 int fclose (scalar_t__) ;
 int open_out_port (TYPE_1__*) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

int osm_log_reopen_file(osm_log_t * p_log)
{
 int ret;

 if (p_log->out_port == stdout || p_log->out_port == stderr)
  return 0;
 cl_spinlock_acquire(&p_log->lock);
 fclose(p_log->out_port);
 ret = open_out_port(p_log);
 cl_spinlock_release(&p_log->lock);
 return ret;
}
