
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct jextent {int je_blocks; int je_daddr; } ;
struct jblocks {size_t jb_head; int jb_off; size_t jb_used; struct jextent* jb_extent; } ;
struct TYPE_2__ {int d_bsize; } ;


 TYPE_1__ disk ;

__attribute__((used)) static ufs2_daddr_t
jblocks_next(struct jblocks *jblocks, int bytes, int *actual)
{
 struct jextent *jext;
 ufs2_daddr_t daddr;
 int freecnt;
 int blocks;

 blocks = bytes / disk.d_bsize;
 jext = &jblocks->jb_extent[jblocks->jb_head];
 freecnt = jext->je_blocks - jblocks->jb_off;
 if (freecnt == 0) {
  jblocks->jb_off = 0;
  if (++jblocks->jb_head > jblocks->jb_used)
   return (0);
  jext = &jblocks->jb_extent[jblocks->jb_head];
  freecnt = jext->je_blocks;
 }
 if (freecnt > blocks)
  freecnt = blocks;
 *actual = freecnt * disk.d_bsize;
 daddr = jext->je_daddr + jblocks->jb_off;

 return (daddr);
}
