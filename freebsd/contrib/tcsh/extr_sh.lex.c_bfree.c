
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZE ;
 int blkcpy (int *,int *) ;
 scalar_t__ cantell ;
 int fblocks ;
 int * fbuf ;
 int feobp ;
 int fseekp ;
 scalar_t__ whyles ;
 int xfree (int ) ;

__attribute__((used)) static void
bfree(void)
{
    int sb, i;

    if (cantell)
 return;
    if (whyles)
 return;
    sb = (int) (fseekp - 1) / BUFSIZE;
    if (sb > 0) {
 for (i = 0; i < sb; i++)
     xfree(fbuf[i]);
 (void) blkcpy(fbuf, &fbuf[sb]);
 fseekp -= BUFSIZE * sb;
 feobp -= BUFSIZE * sb;
 fblocks -= sb;
    }
}
