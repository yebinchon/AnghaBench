
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cl_status_t ;


 int CL_STATUS_MSG (scalar_t__) ;
 scalar_t__ CL_SUCCESS ;
 scalar_t__ __cl_timer_prov_create () ;
 int cl_atomic_spinlock ;
 int cl_msg_out (char*,int ) ;
 scalar_t__ cl_spinlock_init (int *) ;
 int exit (int) ;

void complib_init(void)
{
 cl_status_t status = CL_SUCCESS;

 status = cl_spinlock_init(&cl_atomic_spinlock);
 if (status != CL_SUCCESS)
  goto _error;

 status = __cl_timer_prov_create();
 if (status != CL_SUCCESS)
  goto _error;
 return;

_error:
 cl_msg_out("__init: failed to create complib (%s)\n",
     CL_STATUS_MSG(status));
 exit(1);
}
