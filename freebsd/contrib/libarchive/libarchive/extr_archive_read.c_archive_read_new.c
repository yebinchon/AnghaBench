
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {int vtable; int state; int magic; } ;
struct TYPE_2__ {int first; int * last; } ;
struct archive_read {struct archive archive; TYPE_1__ passphrases; int entry; } ;


 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_entry_new2 (struct archive*) ;
 int archive_read_vtable () ;
 scalar_t__ calloc (int,int) ;

struct archive *
archive_read_new(void)
{
 struct archive_read *a;

 a = (struct archive_read *)calloc(1, sizeof(*a));
 if (a == ((void*)0))
  return (((void*)0));
 a->archive.magic = ARCHIVE_READ_MAGIC;

 a->archive.state = ARCHIVE_STATE_NEW;
 a->entry = archive_entry_new2(&a->archive);
 a->archive.vtable = archive_read_vtable();

 a->passphrases.last = &a->passphrases.first;

 return (&a->archive);
}
