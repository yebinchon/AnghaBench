
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strhdr {struct strhdr* next; } ;


 size_t STRTBLINCR ;
 size_t strlen (char*) ;
 struct strhdr* strtblhdr ;

void
freename(char *name)
{
 struct strhdr *tp, *np;

 tp = &strtblhdr[strlen(name) / STRTBLINCR];
 np = (struct strhdr *)name;
 np->next = tp->next;
 tp->next = np;
}
