
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int curstat; int* out; int** posns; int accept; scalar_t__** gototab; TYPE_1__* re; scalar_t__ reset; } ;
typedef TYPE_2__ fa ;
struct TYPE_5__ {int* lfollow; } ;


 int HAT ;
 int NCHARS ;
 scalar_t__ calloc (int,int) ;
 int cgoto (TYPE_2__*,int,int ) ;
 int overflo (char*) ;
 int xfree (int*) ;

int makeinit(fa *f, int anchor)
{
 int i, k;

 f->curstat = 2;
 f->out[2] = 0;
 f->reset = 0;
 k = *(f->re[0].lfollow);
 xfree(f->posns[2]);
 if ((f->posns[2] = (int *) calloc(k+1, sizeof(int))) == ((void*)0))
  overflo("out of space in makeinit");
 for (i=0; i <= k; i++) {
  (f->posns[2])[i] = (f->re[0].lfollow)[i];
 }
 if ((f->posns[2])[1] == f->accept)
  f->out[2] = 1;
 for (i=0; i < NCHARS; i++)
  f->gototab[2][i] = 0;
 f->curstat = cgoto(f, 2, HAT);
 if (anchor) {
  *f->posns[2] = k-1;
  for (i=0; i < k; i++) {
   (f->posns[0])[i] = (f->posns[2])[i];
  }

  f->out[0] = f->out[2];
  if (f->curstat != 2)
   --(*f->posns[f->curstat]);
 }
 return f->curstat;
}
