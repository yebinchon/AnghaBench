
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_5__ {int fs_bsize; } ;
struct TYPE_4__ {struct TYPE_4__* b_HNext; scalar_t__ b_Offset; scalar_t__ b_Data; } ;
typedef TYPE_1__ Block ;


 int BLKFACTOR ;
 TYPE_1__** BlockHash ;
 int BlockSize ;
 scalar_t__ DataBase ;
 int HFACTOR ;
 int HSize ;
 int MAP_ANON ;
 int MAXBSIZE ;
 int NBlocks ;
 int PROT_READ ;
 int PROT_WRITE ;
 int cachesize ;
 void* calloc (int,int) ;
 scalar_t__ mmap (int *,int,int,int ,int,int ) ;
 int msg (char*,int,int) ;
 TYPE_2__* sblock ;

__attribute__((used)) static void
cinit(void)
{
 int i;
 int hi;
 Block *base;

 if ((BlockSize = sblock->fs_bsize * BLKFACTOR) > MAXBSIZE)
  BlockSize = MAXBSIZE;
 NBlocks = cachesize / BlockSize;
 HSize = NBlocks / HFACTOR;

 msg("Cache %d MB, blocksize = %d\n",
     NBlocks * BlockSize / (1024 * 1024), BlockSize);

 base = calloc(sizeof(Block), NBlocks);
 BlockHash = calloc(sizeof(Block *), HSize);
 DataBase = mmap(((void*)0), NBlocks * BlockSize,
   PROT_READ|PROT_WRITE, MAP_ANON, -1, 0);
 for (i = 0; i < NBlocks; ++i) {
  base[i].b_Data = DataBase + i * BlockSize;
  base[i].b_Offset = (off_t)-1;
  hi = i / HFACTOR;
  base[i].b_HNext = BlockHash[hi];
  BlockHash[hi] = &base[i];
 }
}
