
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_wstring {int length; int s; } ;


 int __archive_errx (int,char*) ;
 int * archive_wstring_append (struct archive_wstring*,int ,int ) ;

void
archive_wstring_concat(struct archive_wstring *dest,
    struct archive_wstring *src)
{
 if (archive_wstring_append(dest, src->s, src->length) == ((void*)0))
  __archive_errx(1, "Out of memory");
}
