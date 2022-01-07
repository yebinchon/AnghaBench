
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_page {int * arch; int * sect; int * name; } ;


 int assert (int) ;
 int lstcat (char*,size_t*,int *,char*) ;
 int lstlen (int *,int) ;
 char* mandoc_malloc (size_t) ;

__attribute__((used)) static char *
buildnames(const struct dbm_page *page)
{
 char *buf;
 size_t i, sz;

 sz = lstlen(page->name, 2) + 1 + lstlen(page->sect, 2) +
     (page->arch == ((void*)0) ? 0 : 1 + lstlen(page->arch, 2)) + 2;
 buf = mandoc_malloc(sz);
 i = 0;
 lstcat(buf, &i, page->name, ", ");
 buf[i++] = '(';
 lstcat(buf, &i, page->sect, ", ");
 if (page->arch != ((void*)0)) {
  buf[i++] = '/';
  lstcat(buf, &i, page->arch, ", ");
 }
 buf[i++] = ')';
 buf[i++] = '\0';
 assert(i == sz);
 return buf;
}
