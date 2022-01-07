
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int length; int s; } ;


 int __archive_errx (int,char*) ;
 int * archive_string_append (struct archive_string*,int ,int ) ;

void
archive_string_concat(struct archive_string *dest, struct archive_string *src)
{
 if (archive_string_append(dest, src->s, src->length) == ((void*)0))
  __archive_errx(1, "Out of memory");
}
