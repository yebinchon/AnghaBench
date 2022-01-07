
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int Char ;


 int BUFSIZE ;
 int L_INCR ;
 int SHIN ;
 scalar_t__ arginp ;
 int cantell ;
 int fblocks ;
 int fbobp ;
 void** fbuf ;
 int feobp ;
 int fseekp ;
 scalar_t__ intty ;
 int lseek (int ,int,int ) ;
 scalar_t__ onelflg ;
 void* xcalloc (int,int) ;

void
settell(void)
{
    off_t x;
    cantell = 0;
    if (arginp || onelflg || intty)
 return;
    if ((x = lseek(SHIN, (off_t) 0, L_INCR)) == -1)
 return;
    fbuf = xcalloc(2, sizeof(Char **));
    fblocks = 1;
    fbuf[0] = xcalloc(BUFSIZE, sizeof(Char));
    fseekp = fbobp = feobp = x;
    cantell = 1;
}
