
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strhdr {struct strhdr* next; } ;
struct TYPE_2__ {struct strhdr* next; } ;


 size_t STRTBLINCR ;
 int allocsize (size_t) ;
 char* malloc (int ) ;
 int panic (char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 TYPE_1__* strtblhdr ;

char *
savename(char *name)
{
 struct strhdr *np;
 size_t len;
 char *cp;

 if (name == ((void*)0))
  panic("bad name\n");
 len = strlen(name);
 np = strtblhdr[len / STRTBLINCR].next;
 if (np != ((void*)0)) {
  strtblhdr[len / STRTBLINCR].next = np->next;
  cp = (char *)np;
 } else {
  cp = malloc(allocsize(len));
  if (cp == ((void*)0))
   panic("no space for string table\n");
 }
 (void) strcpy(cp, name);
 return (cp);
}
