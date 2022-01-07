
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int __archive_errx (int,char*) ;
 struct archive_string* archive_string_append (struct archive_string*,char const*,size_t) ;

struct archive_string *
archive_strncat(struct archive_string *as, const void *_p, size_t n)
{
 size_t s;
 const char *p, *pp;

 p = (const char *)_p;


 s = 0;
 pp = p;
 while (s < n && *pp) {
  pp++;
  s++;
 }
 if ((as = archive_string_append(as, p, s)) == ((void*)0))
  __archive_errx(1, "Out of memory");
 return (as);
}
