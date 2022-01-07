
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scratch_buffer; } ;
struct worker {TYPE_1__ env; } ;
typedef int RES ;


 int load_msg_cache (int *,struct worker*) ;
 int load_rrset_cache (int *,struct worker*) ;
 int read_fixed (int *,int ,char*) ;

int
load_cache(RES* ssl, struct worker* worker)
{
 if(!load_rrset_cache(ssl, worker))
  return 0;
 if(!load_msg_cache(ssl, worker))
  return 0;
 return read_fixed(ssl, worker->env.scratch_buffer, "EOF");
}
