
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_frag; } ;


 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
clrblock(struct fs *fs, unsigned char *cp, int h)
{
 switch ((fs)->fs_frag) {
 case 8:
  cp[h] = 0;
  return;
 case 4:
  cp[h >> 1] &= ~(0x0f << ((h & 0x1) << 2));
  return;
 case 2:
  cp[h >> 2] &= ~(0x03 << ((h & 0x3) << 1));
  return;
 case 1:
  cp[h >> 3] &= ~(0x01 << (h & 0x7));
  return;
 default:
  fprintf(stderr, "clrblock bad fs_frag %d\n", fs->fs_frag);
  return;
 }
}
