
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt {int dummy; } ;
struct config_stub {int name; } ;


 struct delegpt* delegpt_create_mlc (int *) ;
 int free (int *) ;
 int log_err (char*,...) ;
 int * sldns_str2wire_dname (int ,size_t*) ;

__attribute__((used)) static struct delegpt*
read_fwds_name(struct config_stub* s)
{
 struct delegpt* dp;
 uint8_t* dname;
 size_t dname_len;
 if(!s->name) {
  log_err("forward zone without a name (use name \".\" to forward everything)");
  return ((void*)0);
 }
 dname = sldns_str2wire_dname(s->name, &dname_len);
 if(!dname) {
  log_err("cannot parse forward zone name %s", s->name);
  return ((void*)0);
 }
 if(!(dp=delegpt_create_mlc(dname))) {
  free(dname);
  log_err("out of memory");
  return ((void*)0);
 }
 free(dname);
 return dp;
}
