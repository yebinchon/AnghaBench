
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct worker {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int do_cache_remove (struct worker*,int *,size_t,int ,int ) ;
 int find_arg2 (int *,char*,char**) ;
 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int send_ok (int *) ;
 int sldns_get_rr_type_by_name (char*) ;

__attribute__((used)) static void
do_flush_type(RES* ssl, struct worker* worker, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 char* arg2;
 uint16_t t;
 if(!find_arg2(ssl, arg, &arg2))
  return;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 t = sldns_get_rr_type_by_name(arg2);
 do_cache_remove(worker, nm, nmlen, t, LDNS_RR_CLASS_IN);

 free(nm);
 send_ok(ssl);
}
