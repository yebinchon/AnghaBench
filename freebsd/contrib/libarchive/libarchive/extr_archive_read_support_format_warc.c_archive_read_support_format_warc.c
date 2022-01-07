
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warc_s {int dummy; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct warc_s*,char*,int ,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int _warc_bid ;
 int _warc_cleanup ;
 int _warc_rdhdr ;
 int _warc_read ;
 int _warc_skip ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 struct warc_s* calloc (int,int) ;
 int free (struct warc_s*) ;

int
archive_read_support_format_warc(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct warc_s *w;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_warc");

 if ((w = calloc(1, sizeof(*w))) == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate warc data");
  return (ARCHIVE_FATAL);
 }

 r = __archive_read_register_format(
  a, w, "warc",
  _warc_bid, ((void*)0), _warc_rdhdr, _warc_read,
  _warc_skip, ((void*)0), _warc_cleanup, ((void*)0), ((void*)0));

 if (r != ARCHIVE_OK) {
  free(w);
  return (r);
 }
 return (ARCHIVE_OK);
}
