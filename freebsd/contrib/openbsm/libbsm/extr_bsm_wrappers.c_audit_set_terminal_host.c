
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CTL_KERN ;
 int KERN_HOSTID ;
 int LOG_ERR ;
 int errno ;
 int kAUBadParamErr ;
 int kAUNoErr ;
 int kAUSysctlErr ;
 int strerror (int ) ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int *,int ) ;
 int syslog (int ,char*,int ) ;

int
audit_set_terminal_host(uint32_t *m)
{
 *m = -1;
 return (kAUNoErr);

}
