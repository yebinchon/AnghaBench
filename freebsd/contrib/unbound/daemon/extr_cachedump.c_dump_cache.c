
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;
typedef int RES ;


 int dump_msg_cache (int *,struct worker*) ;
 int dump_rrset_cache (int *,struct worker*) ;
 int ssl_printf (int *,char*) ;

int
dump_cache(RES* ssl, struct worker* worker)
{
 if(!dump_rrset_cache(ssl, worker))
  return 0;
 if(!dump_msg_cache(ssl, worker))
  return 0;
 return ssl_printf(ssl, "EOF\n");
}
