
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int BUFSIZE ;
 int blkcpy (int **,int **) ;
 int fblocks ;
 int ** fbuf ;
 void* xcalloc (int,int) ;
 int xfree (int **) ;

__attribute__((used)) static void
balloc(int buf)
{
    Char **nfbuf;

    while (buf >= fblocks) {
 nfbuf = xcalloc(fblocks + 2, sizeof(Char **));
 if (fbuf) {
     (void) blkcpy(nfbuf, fbuf);
     xfree(fbuf);
 }
 fbuf = nfbuf;
 fbuf[fblocks] = xcalloc(BUFSIZE, sizeof(Char));
 fblocks++;
    }
}
