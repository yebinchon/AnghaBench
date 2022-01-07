
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ctl_be_ramdisk_lun {scalar_t__ cap_bytes; int indir; scalar_t__ cap_used; scalar_t__ pblocksize; int page_lock; int ** pages; } ;
typedef int off_t ;


 int M_RAMDISK ;
 int PPPS ;
 int ** P_ANCHORED ;
 int ** P_UNMAPPED ;
 int free (int **,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
ctl_backend_ramdisk_anchorpage(struct ctl_be_ramdisk_lun *be_lun, off_t pn)
{
 uint8_t ***pp;
 off_t i;
 int s;

 if (be_lun->cap_bytes == 0)
  return;
 sx_xlock(&be_lun->page_lock);
 pp = &be_lun->pages;
 for (s = (be_lun->indir - 1) * PPPS; s >= 0; s -= PPPS) {
  if (*pp == ((void*)0))
   goto noindir;
  i = pn >> s;
  pp = (uint8_t ***)&(*pp)[i];
  pn -= i << s;
 }
 if (*pp == P_UNMAPPED && be_lun->cap_used < be_lun->cap_bytes) {
  be_lun->cap_used += be_lun->pblocksize;
  *pp = P_ANCHORED;
 } else if (*pp != P_ANCHORED) {
  free(*pp, M_RAMDISK);
  *pp = P_ANCHORED;
 }
noindir:
 sx_xunlock(&be_lun->page_lock);
}
