
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
struct TYPE_7__ {int rda_procstat; struct proc_handle* rda_php; } ;
typedef TYPE_1__ rd_agent_t ;


 scalar_t__ RD_OK ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int procstat_open_sysctl () ;
 int rd_delete (TYPE_1__*) ;
 scalar_t__ rd_reset (TYPE_1__*) ;

rd_agent_t *
rd_new(struct proc_handle *php)
{
 rd_agent_t *rdap;

 rdap = malloc(sizeof(*rdap));
 if (rdap == ((void*)0))
  return (((void*)0));

 memset(rdap, 0, sizeof(rd_agent_t));
 rdap->rda_php = php;
 rdap->rda_procstat = procstat_open_sysctl();

 if (rd_reset(rdap) != RD_OK) {
  rd_delete(rdap);
  rdap = ((void*)0);
 }
 return (rdap);
}
