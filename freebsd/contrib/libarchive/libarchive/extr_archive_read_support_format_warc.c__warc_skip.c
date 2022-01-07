
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct warc_s {unsigned int cntlen; unsigned int cntoff; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {struct warc_s* data; } ;


 int ARCHIVE_OK ;
 int __archive_read_consume (struct archive_read*,unsigned int) ;

__attribute__((used)) static int
_warc_skip(struct archive_read *a)
{
 struct warc_s *w = a->format->data;

 __archive_read_consume(a, w->cntlen + 4U );
 w->cntlen = 0U;
 w->cntoff = 0U;
 return (ARCHIVE_OK);
}
