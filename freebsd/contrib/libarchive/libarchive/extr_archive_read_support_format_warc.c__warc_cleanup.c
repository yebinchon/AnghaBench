
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; struct warc_s* str; } ;
struct warc_s {int sver; TYPE_1__ pool; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_4__ {struct warc_s* data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int free (struct warc_s*) ;

__attribute__((used)) static int
_warc_cleanup(struct archive_read *a)
{
 struct warc_s *w = a->format->data;

 if (w->pool.len > 0U) {
  free(w->pool.str);
 }
 archive_string_free(&w->sver);
 free(w);
 a->format->data = ((void*)0);
 return (ARCHIVE_OK);
}
