
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct local_zones {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int free (int *) ;
 int local_zones_del_data (struct local_zones*,int *,size_t,int,int ) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;

__attribute__((used)) static int
perform_data_remove(RES* ssl, struct local_zones* zones, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return 0;
 local_zones_del_data(zones, nm,
  nmlen, nmlabs, LDNS_RR_CLASS_IN);
 free(nm);
 return 1;
}
