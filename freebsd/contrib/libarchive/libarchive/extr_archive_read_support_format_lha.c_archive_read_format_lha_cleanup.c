
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lha {int ws; int gname; int uname; int filename; int dirname; int strm; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int archive_wstring_free (int *) ;
 int free (struct lha*) ;
 int lzh_decode_free (int *) ;

__attribute__((used)) static int
archive_read_format_lha_cleanup(struct archive_read *a)
{
 struct lha *lha = (struct lha *)(a->format->data);

 lzh_decode_free(&(lha->strm));
 archive_string_free(&(lha->dirname));
 archive_string_free(&(lha->filename));
 archive_string_free(&(lha->uname));
 archive_string_free(&(lha->gname));
 archive_wstring_free(&(lha->ws));
 free(lha);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
