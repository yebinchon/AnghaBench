
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct svc_req {int dummy; } ;


 int * rstatproc_havedisk_3_svc (void*,struct svc_req*) ;

u_int *
rstatproc_havedisk_2_svc(void *argp, struct svc_req *rqstp)
{
    return(rstatproc_havedisk_3_svc(argp, rqstp));
}
