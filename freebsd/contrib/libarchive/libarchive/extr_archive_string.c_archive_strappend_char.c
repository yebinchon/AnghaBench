
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int __archive_errx (int,char*) ;
 struct archive_string* archive_string_append (struct archive_string*,char*,int) ;

struct archive_string *
archive_strappend_char(struct archive_string *as, char c)
{
 if ((as = archive_string_append(as, &c, 1)) == ((void*)0))
  __archive_errx(1, "Out of memory");
 return (as);
}
