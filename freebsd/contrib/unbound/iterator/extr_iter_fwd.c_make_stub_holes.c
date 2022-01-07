
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iter_forwards {int dummy; } ;
struct config_stub {int name; struct config_stub* next; } ;
struct config_file {struct config_stub* stubs; } ;


 int LDNS_RR_CLASS_IN ;
 int free (int *) ;
 int fwd_add_stub_hole (struct iter_forwards*,int ,int *) ;
 int log_err (char*,...) ;
 int * sldns_str2wire_dname (int ,size_t*) ;

__attribute__((used)) static int
make_stub_holes(struct iter_forwards* fwd, struct config_file* cfg)
{
 struct config_stub* s;
 uint8_t* dname;
 size_t dname_len;
 for(s = cfg->stubs; s; s = s->next) {
  if(!s->name) continue;
  dname = sldns_str2wire_dname(s->name, &dname_len);
  if(!dname) {
   log_err("cannot parse stub name '%s'", s->name);
   return 0;
  }
  if(!fwd_add_stub_hole(fwd, LDNS_RR_CLASS_IN, dname)) {
   free(dname);
   log_err("out of memory");
   return 0;
  }
  free(dname);
 }
 return 1;
}
