
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct config_stub {char* name; struct config_strlist* hosts; struct config_stub* next; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
typedef int socklen_t ;


 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 scalar_t__ extstrtoaddr (char*,struct sockaddr_storage*,int *) ;
 int fprintf (int ,char*,char*,char const*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
warn_hosts(const char* typ, struct config_stub* list)
{
 struct sockaddr_storage a;
 socklen_t alen;
 struct config_stub* s;
 struct config_strlist* h;
 for(s=list; s; s=s->next) {
  for(h=s->hosts; h; h=h->next) {
   if(extstrtoaddr(h->str, &a, &alen)) {
    fprintf(stderr, "unbound-checkconf: warning:"
      " %s %s: \"%s\" is an IP%s address, "
      "and when looked up as a host name "
      "during use may not resolve.\n",
      s->name, typ, h->str,
      addr_is_ip6(&a, alen)?"6":"4");
   }
  }
 }
}
