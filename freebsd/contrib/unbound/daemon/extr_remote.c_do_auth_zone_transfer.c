
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {struct auth_zones* auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct auth_zones {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int auth_zones_startprobesequence (struct auth_zones*,TYPE_1__*,int *,size_t,int ) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*,char*) ;

__attribute__((used)) static void
do_auth_zone_transfer(RES* ssl, struct worker* worker, char* arg)
{
 size_t nmlen;
 int nmlabs;
 uint8_t* nm = ((void*)0);
 struct auth_zones* az = worker->env.auth_zones;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 if(!az || !auth_zones_startprobesequence(az, &worker->env, nm, nmlen,
  LDNS_RR_CLASS_IN)) {
  (void)ssl_printf(ssl, "error zone xfr task not found %s\n", arg);
  return;
 }
 send_ok(ssl);
}
