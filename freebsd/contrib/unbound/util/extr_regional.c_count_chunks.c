
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* next; } ;



__attribute__((used)) static size_t
count_chunks(struct regional* r)
{
 size_t c = 1;
 char* p = r->next;
 while(p) {
  c++;
  p = *(char**)p;
 }
 return c;
}
