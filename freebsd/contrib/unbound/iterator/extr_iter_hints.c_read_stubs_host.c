
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt {int dummy; } ;
struct config_stub {int name; struct config_strlist* hosts; } ;
struct config_strlist {int str; struct config_strlist* next; } ;


 int delegpt_add_ns_mlc (struct delegpt*,int *,int ) ;
 int free (int *) ;
 int log_assert (int ) ;
 int log_err (char*,...) ;
 int * sldns_str2wire_dname (int ,size_t*) ;

__attribute__((used)) static int
read_stubs_host(struct config_stub* s, struct delegpt* dp)
{
 struct config_strlist* p;
 size_t dname_len;
 uint8_t* dname;
 for(p = s->hosts; p; p = p->next) {
  log_assert(p->str);
  dname = sldns_str2wire_dname(p->str, &dname_len);
  if(!dname) {
   log_err("cannot parse stub %s nameserver name: '%s'",
    s->name, p->str);
   return 0;
  }
  if(!delegpt_add_ns_mlc(dp, dname, 0)) {
   free(dname);
   log_err("out of memory");
   return 0;
  }
  free(dname);
 }
 return 1;
}
