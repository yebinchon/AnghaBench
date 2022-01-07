
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ptable {int sectorsize; int type; int entries; int sectors; } ;
struct TYPE_2__ {scalar_t__ index; int type; int end; scalar_t__ start; } ;
struct pentry {TYPE_1__ part; } ;
struct iso_primary_descriptor {int id; } ;
typedef scalar_t__ (* diskread_t ) (void*,int *,int,int ) ;


 int DPRINTF (char*) ;
 int ISO_STANDARD_ID ;
 int PART_ISO9660 ;
 int PTABLE_ISO9660 ;
 int STAILQ_INSERT_TAIL (int *,struct pentry*,struct pentry*) ;
 scalar_t__ bcmp (int ,int ,int) ;
 int cdb2devb (int) ;
 int free (int *) ;
 void* malloc (int) ;
 int ptable_close (struct ptable*) ;

__attribute__((used)) static struct ptable *
ptable_iso9660read(struct ptable *table, void *dev, diskread_t dread)
{
 uint8_t *buf;
 struct iso_primary_descriptor *vd;
 struct pentry *entry;

 buf = malloc(table->sectorsize);
 if (buf == ((void*)0))
  return (table);

 if (dread(dev, buf, 1, cdb2devb(16)) != 0) {
  DPRINTF("read failed");
  ptable_close(table);
  table = ((void*)0);
  goto out;
 }
 vd = (struct iso_primary_descriptor *)buf;
 if (bcmp(vd->id, ISO_STANDARD_ID, sizeof vd->id) != 0)
  goto out;

 entry = malloc(sizeof(*entry));
 if (entry == ((void*)0))
  goto out;
 entry->part.start = 0;
 entry->part.end = table->sectors;
 entry->part.type = PART_ISO9660;
 entry->part.index = 0;
 STAILQ_INSERT_TAIL(&table->entries, entry, entry);

 table->type = PTABLE_ISO9660;

out:
 free(buf);
 return (table);
}
