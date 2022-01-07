
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 struct archive_string* archive_string_append (struct archive_string*,char const*,size_t) ;

struct archive_string *
archive_array_append(struct archive_string *as, const char *p, size_t s)
{
 return archive_string_append(as, p, s);
}
