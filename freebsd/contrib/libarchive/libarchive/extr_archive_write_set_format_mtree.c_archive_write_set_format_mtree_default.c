
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree_writer {int first; int buf; int ebuf; scalar_t__ indent; scalar_t__ dironly; int keys; int set; int * mtree_entry; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int format_write_data; int format_close; int format_write_header; int format_options; int (* format_free ) (struct archive_write*) ;struct mtree_writer* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_MTREE ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int DEFAULT_KEYS ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char const*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_string_init (int *) ;
 int archive_write_mtree_close ;
 int archive_write_mtree_data ;
 int archive_write_mtree_finish_entry ;
 int archive_write_mtree_free (struct archive_write*) ;
 int archive_write_mtree_header ;
 int archive_write_mtree_options ;
 struct mtree_writer* calloc (int,int) ;
 int memset (int *,int ,int) ;
 int mtree_entry_register_init (struct mtree_writer*) ;
 int stub1 (struct archive_write*) ;

__attribute__((used)) static int
archive_write_set_format_mtree_default(struct archive *_a, const char *fn)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct mtree_writer *mtree;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC, ARCHIVE_STATE_NEW, fn);

 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 if ((mtree = calloc(1, sizeof(*mtree))) == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate mtree data");
  return (ARCHIVE_FATAL);
 }

 mtree->mtree_entry = ((void*)0);
 mtree->first = 1;
 memset(&(mtree->set), 0, sizeof(mtree->set));
 mtree->keys = DEFAULT_KEYS;
 mtree->dironly = 0;
 mtree->indent = 0;
 archive_string_init(&mtree->ebuf);
 archive_string_init(&mtree->buf);
 mtree_entry_register_init(mtree);
 a->format_data = mtree;
 a->format_free = archive_write_mtree_free;
 a->format_name = "mtree";
 a->format_options = archive_write_mtree_options;
 a->format_write_header = archive_write_mtree_header;
 a->format_close = archive_write_mtree_close;
 a->format_write_data = archive_write_mtree_data;
 a->format_finish_entry = archive_write_mtree_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_MTREE;
 a->archive.archive_format_name = "mtree";

 return (ARCHIVE_OK);
}
