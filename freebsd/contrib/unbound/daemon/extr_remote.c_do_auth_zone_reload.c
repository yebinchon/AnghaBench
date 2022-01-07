
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int cfg; struct auth_zones* auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct auth_zones {int lock; } ;
struct auth_zone {int lock; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 struct auth_zone* auth_zone_find (struct auth_zones*,int *,size_t,int ) ;
 int auth_zone_read_zonefile (struct auth_zone*,int ) ;
 int free (int *) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*,char*) ;

__attribute__((used)) static void
do_auth_zone_reload(RES* ssl, struct worker* worker, char* arg)
{
 size_t nmlen;
 int nmlabs;
 uint8_t* nm = ((void*)0);
 struct auth_zones* az = worker->env.auth_zones;
 struct auth_zone* z = ((void*)0);
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 if(az) {
  lock_rw_rdlock(&az->lock);
  z = auth_zone_find(az, nm, nmlen, LDNS_RR_CLASS_IN);
  if(z) {
   lock_rw_wrlock(&z->lock);
  }
  lock_rw_unlock(&az->lock);
 }
 free(nm);
 if(!z) {
  (void)ssl_printf(ssl, "error no auth-zone %s\n", arg);
  return;
 }
 if(!auth_zone_read_zonefile(z, worker->env.cfg)) {
  lock_rw_unlock(&z->lock);
  (void)ssl_printf(ssl, "error failed to read %s\n", arg);
  return;
 }
 lock_rw_unlock(&z->lock);
 send_ok(ssl);
}
