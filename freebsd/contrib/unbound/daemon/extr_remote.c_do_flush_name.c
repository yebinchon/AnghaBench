
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct worker {int dummy; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_CNAME ;
 int LDNS_RR_TYPE_DNAME ;
 int LDNS_RR_TYPE_MX ;
 int LDNS_RR_TYPE_NAPTR ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_PTR ;
 int LDNS_RR_TYPE_SOA ;
 int LDNS_RR_TYPE_SRV ;
 int do_cache_remove (struct worker*,int *,size_t,int ,int ) ;
 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int send_ok (int *) ;

__attribute__((used)) static void
do_flush_name(RES* ssl, struct worker* w, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_A, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_AAAA, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_SOA, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_CNAME, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_DNAME, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_MX, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_PTR, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_SRV, LDNS_RR_CLASS_IN);
 do_cache_remove(w, nm, nmlen, LDNS_RR_TYPE_NAPTR, LDNS_RR_CLASS_IN);

 free(nm);
 send_ok(ssl);
}
