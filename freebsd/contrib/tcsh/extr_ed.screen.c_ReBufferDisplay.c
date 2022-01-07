
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ** Display ;
 int INBUFSIZE ;
 int T_co ;
 int TermH ;
 int TermV ;
 int Val (int ) ;
 int ** Vdisplay ;
 int blkfree (int **) ;
 void* xmalloc (int) ;

__attribute__((used)) static void
ReBufferDisplay(void)
{
    int i;
    Char **b;

    b = Display;
    Display = ((void*)0);
    blkfree(b);
    b = Vdisplay;
    Vdisplay = ((void*)0);
    blkfree(b);
    TermH = Val(T_co);
    TermV = (INBUFSIZE * 4) / TermH + 1;
    b = xmalloc(sizeof(*b) * (TermV + 1));
    for (i = 0; i < TermV; i++)
 b[i] = xmalloc(sizeof(*b[i]) * (TermH + 1));
    b[TermV] = ((void*)0);
    Display = b;
    b = xmalloc(sizeof(*b) * (TermV + 1));
    for (i = 0; i < TermV; i++)
 b[i] = xmalloc(sizeof(*b[i]) * (TermH + 1));
    b[TermV] = ((void*)0);
    Vdisplay = b;
}
