
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_list {scalar_t__ len; int addr; } ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int log_addr (int,char const*,int *,scalar_t__) ;
 int verbose (int,char*,char const*) ;

__attribute__((used)) static void
sock_list_logentry(enum verbosity_value v, const char* s, struct sock_list* p)
{
 if(p->len)
  log_addr(v, s, &p->addr, p->len);
 else verbose(v, "%s cache", s);
}
