
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct local_zones {int lock; } ;
struct local_zone {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int free (int *) ;
 int local_zones_del_zone (struct local_zones*,struct local_zone*) ;
 struct local_zone* local_zones_find (struct local_zones*,int *,size_t,int,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;

__attribute__((used)) static int
perform_zone_remove(RES* ssl, struct local_zones* zones, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 struct local_zone* z;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return 0;
 lock_rw_wrlock(&zones->lock);
 if((z=local_zones_find(zones, nm, nmlen,
  nmlabs, LDNS_RR_CLASS_IN))) {

  local_zones_del_zone(zones, z);
 }
 lock_rw_unlock(&zones->lock);
 free(nm);
 return 1;
}
