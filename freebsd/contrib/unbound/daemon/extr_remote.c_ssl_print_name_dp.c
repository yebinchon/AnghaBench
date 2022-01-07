
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct delegpt_ns {int * name; struct delegpt_ns* next; } ;
struct delegpt_addr {int addrlen; int addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; struct delegpt_ns* nslist; } ;
typedef int buf ;
typedef int RES ;


 int addr_to_str (int *,int ,char*,int) ;
 int dname_str (int *,char*) ;
 int free (char*) ;
 char* sldns_wire2str_class (int ) ;
 int ssl_printf (int *,char*,...) ;

__attribute__((used)) static int
ssl_print_name_dp(RES* ssl, const char* str, uint8_t* nm, uint16_t dclass,
 struct delegpt* dp)
{
 char buf[257];
 struct delegpt_ns* ns;
 struct delegpt_addr* a;
 int f = 0;
 if(str) {
  char* c = sldns_wire2str_class(dclass);
  dname_str(nm, buf);
  if(!ssl_printf(ssl, "%s %s %s ", buf, (c?c:"CLASS??"), str)) {
   free(c);
   return 0;
  }
  free(c);
 }
 for(ns = dp->nslist; ns; ns = ns->next) {
  dname_str(ns->name, buf);
  if(!ssl_printf(ssl, "%s%s", (f?" ":""), buf))
   return 0;
  f = 1;
 }
 for(a = dp->target_list; a; a = a->next_target) {
  addr_to_str(&a->addr, a->addrlen, buf, sizeof(buf));
  if(!ssl_printf(ssl, "%s%s", (f?" ":""), buf))
   return 0;
  f = 1;
 }
 return ssl_printf(ssl, "\n");
}
