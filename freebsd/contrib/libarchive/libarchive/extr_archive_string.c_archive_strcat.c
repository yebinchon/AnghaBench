
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 struct archive_string* archive_strncat (struct archive_string*,void const*,int) ;

struct archive_string *
archive_strcat(struct archive_string *as, const void *p)
{






 return archive_strncat(as, p, 0x1000000);
}
