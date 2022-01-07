
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fatEntry {size_t head; int flags; } ;
struct bootblock {int bpbRootDirEnts; int bpbSecPerClust; int bpbBytesPerSec; int flags; size_t bpbRootClust; size_t NumClusters; } ;
struct TYPE_4__ {size_t head; } ;


 size_t CLUST_FIRST ;
 int FAT32 ;
 int FAT_USED ;
 int FSFATAL ;
 int FSOK ;
 size_t MAX (int,int) ;
 int * buffer ;
 int * delbuf ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* newDosDirEntry () ;
 int perr (char*,...) ;
 int pfatal (char*,...) ;
 TYPE_1__* rootDir ;

int
resetDosDirSection(struct bootblock *boot, struct fatEntry *fat)
{
 int b1, b2;
 int ret = FSOK;
 size_t len;

 b1 = boot->bpbRootDirEnts * 32;
 b2 = boot->bpbSecPerClust * boot->bpbBytesPerSec;

 if ((buffer = malloc(len = MAX(b1, b2))) == ((void*)0)) {
  perr("No space for directory buffer (%zu)", len);
  return FSFATAL;
 }

 if ((delbuf = malloc(len = b2)) == ((void*)0)) {
  free(buffer);
  perr("No space for directory delbuf (%zu)", len);
  return FSFATAL;
 }

 if ((rootDir = newDosDirEntry()) == ((void*)0)) {
  free(buffer);
  free(delbuf);
  perr("No space for directory entry");
  return FSFATAL;
 }

 memset(rootDir, 0, sizeof *rootDir);
 if (boot->flags & FAT32) {
  if (boot->bpbRootClust < CLUST_FIRST ||
      boot->bpbRootClust >= boot->NumClusters) {
   pfatal("Root directory starts with cluster out of range(%u)",
          boot->bpbRootClust);
   return FSFATAL;
  }
  if (fat[boot->bpbRootClust].head != boot->bpbRootClust) {
   pfatal("Root directory doesn't start a cluster chain");
   return FSFATAL;
  }

  fat[boot->bpbRootClust].flags |= FAT_USED;
  rootDir->head = boot->bpbRootClust;
 }

 return ret;
}
