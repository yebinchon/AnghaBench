
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warc_s {int dummy; } ;
struct archive_write {struct warc_s* format_data; } ;


 int ARCHIVE_OK ;
 int free (struct warc_s*) ;

__attribute__((used)) static int
_warc_free(struct archive_write *a)
{
 struct warc_s *w = a->format_data;

 free(w);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
