
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* large_list; } ;



__attribute__((used)) static size_t
count_large(struct regional* r)
{
 size_t c = 0;
 char* p = r->large_list;
 while(p) {
  c++;
  p = *(char**)p;
 }
 return c;
}
