
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct archive_read_passphrase* dataset; } ;
struct TYPE_11__ {int state; scalar_t__ magic; int error_string; } ;
struct TYPE_8__ {struct archive_read_passphrase* first; } ;
struct archive_read_passphrase {int (* cleanup_archive_extract ) (struct archive_read_passphrase*) ;TYPE_3__ client; TYPE_5__ archive; int entry; struct archive_read_passphrase* passphrase; struct archive_read_passphrase* next; TYPE_2__ passphrases; TYPE_4__* bidders; TYPE_1__* formats; TYPE_1__* format; } ;
struct archive_read {int (* cleanup_archive_extract ) (struct archive_read_passphrase*) ;TYPE_3__ client; TYPE_5__ archive; int entry; struct archive_read* passphrase; struct archive_read* next; TYPE_2__ passphrases; TYPE_4__* bidders; TYPE_1__* formats; TYPE_1__* format; } ;
struct archive {int dummy; } ;
struct TYPE_10__ {int (* free ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int (* cleanup ) (struct archive_read_passphrase*) ;} ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_FATAL ;
 int __archive_clean (TYPE_5__*) ;
 int __archive_read_free_filters (struct archive_read_passphrase*) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_entry_free (int ) ;
 int archive_read_close (TYPE_5__*) ;
 int archive_string_free (int *) ;
 int free (struct archive_read_passphrase*) ;
 int memset (struct archive_read_passphrase*,int ,int ) ;
 int strlen (struct archive_read_passphrase*) ;
 int stub1 (struct archive_read_passphrase*) ;
 int stub2 (struct archive_read_passphrase*) ;
 int stub3 (TYPE_4__*) ;

__attribute__((used)) static int
_archive_read_free(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_passphrase *p;
 int i, n;
 int slots;
 int r = ARCHIVE_OK;

 if (_a == ((void*)0))
  return (ARCHIVE_OK);
 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_read_free");
 if (a->archive.state != ARCHIVE_STATE_CLOSED
     && a->archive.state != ARCHIVE_STATE_FATAL)
  r = archive_read_close(&a->archive);


 if (a->cleanup_archive_extract != ((void*)0))
  r = (a->cleanup_archive_extract)(a);


 slots = sizeof(a->formats) / sizeof(a->formats[0]);
 for (i = 0; i < slots; i++) {
  a->format = &(a->formats[i]);
  if (a->formats[i].cleanup)
   (a->formats[i].cleanup)(a);
 }


 __archive_read_free_filters(a);


 n = sizeof(a->bidders)/sizeof(a->bidders[0]);
 for (i = 0; i < n; i++) {
  if (a->bidders[i].free != ((void*)0)) {
   int r1 = (a->bidders[i].free)(&a->bidders[i]);
   if (r1 < r)
    r = r1;
  }
 }


 p = a->passphrases.first;
 while (p != ((void*)0)) {
  struct archive_read_passphrase *np = p->next;


  memset(p->passphrase, 0, strlen(p->passphrase));
  free(p->passphrase);
  free(p);
  p = np;
 }

 archive_string_free(&a->archive.error_string);
 archive_entry_free(a->entry);
 a->archive.magic = 0;
 __archive_clean(&a->archive);
 free(a->client.dataset);
 free(a);
 return (r);
}
