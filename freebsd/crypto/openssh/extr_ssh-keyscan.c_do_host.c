
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KT_MAX ;
 int KT_MIN ;
 scalar_t__ MAXCON ;
 int conalloc (char*,char*,int) ;
 int conloop () ;
 int get_keytypes ;
 scalar_t__ ncon ;
 char* strnnsep (char**,char*) ;

__attribute__((used)) static void
do_host(char *host)
{
 char *name = strnnsep(&host, " \t\n");
 int j;

 if (name == ((void*)0))
  return;
 for (j = KT_MIN; j <= KT_MAX; j *= 2) {
  if (get_keytypes & j) {
   while (ncon >= MAXCON)
    conloop();
   conalloc(name, *host ? host : name, j);
  }
 }
}
