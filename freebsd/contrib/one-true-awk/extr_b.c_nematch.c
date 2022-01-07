
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uschar ;
struct TYPE_5__ {int initstat; int** gototab; int curstat; int** posns; scalar_t__* out; scalar_t__ reset; } ;
typedef TYPE_1__ fa ;


 int NCHARS ;
 scalar_t__ calloc (int,int) ;
 int cgoto (TYPE_1__*,int,size_t) ;
 int makeinit (TYPE_1__*,int) ;
 int overflo (char*) ;
 char* patbeg ;
 int patlen ;
 int xfree (int*) ;

int nematch(fa *f, const char *p0)
{
 int s, ns;
 uschar *p = (uschar *) p0;
 uschar *q;
 int i, k;


 if (f->reset) {
  f->initstat = s = makeinit(f,1);
 } else {
  s = f->initstat;
 }
 patlen = -1;
 while (*p) {
  q = p;
  do {
   if (f->out[s])
    patlen = q-p;

   if ((ns = f->gototab[s][*q]) != 0)
    s = ns;
   else
    s = cgoto(f, s, *q);
   if (s == 1) {
    if (patlen > 0) {
     patbeg = (char *) p;
     return(1);
    } else
     goto nnextin;
   }
  } while (*q++ != 0);
  if (f->out[s])
   patlen = q-p-1;
  if (patlen > 0 ) {
   patbeg = (char *) p;
   return(1);
  }
 nnextin:
  s = 2;
  if (f->reset) {
   for (i = 2; i <= f->curstat; i++)
    xfree(f->posns[i]);
   k = *f->posns[0];
   if ((f->posns[2] = (int *) calloc(k+1, sizeof(int))) == ((void*)0))
    overflo("out of state space");
   for (i = 0; i <= k; i++)
    (f->posns[2])[i] = (f->posns[0])[i];
   f->initstat = f->curstat = 2;
   f->out[2] = f->out[0];
   for (i = 0; i < NCHARS; i++)
    f->gototab[2][i] = 0;
  }
  p++;
 }
 return (0);
}
