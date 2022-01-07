
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uschar ;
struct TYPE_5__ {int initstat; int** gototab; scalar_t__* out; scalar_t__ reset; } ;
typedef TYPE_1__ fa ;


 int cgoto (TYPE_1__*,int,size_t) ;
 int makeinit (TYPE_1__*,int ) ;

int match(fa *f, const char *p0)
{
 int s, ns;
 uschar *p = (uschar *) p0;

 s = f->reset ? makeinit(f,0) : f->initstat;
 if (f->out[s])
  return(1);
 do {

  if ((ns = f->gototab[s][*p]) != 0)
   s = ns;
  else
   s = cgoto(f, s, *p);
  if (f->out[s])
   return(1);
 } while (*p++ != 0);
 return(0);
}
