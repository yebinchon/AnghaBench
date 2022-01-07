
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DSIZE; int nsegs; int SSHIFT; int ** dir; } ;
typedef int * SEGMENT ;
typedef TYPE_1__ HTAB ;


 void* calloc (int,int) ;
 int errno ;
 int hdestroy (TYPE_1__*) ;

__attribute__((used)) static int
alloc_segs(HTAB *hashp, int nsegs)
{
 int i;
 SEGMENT store;

 int save_errno;

 if ((hashp->dir =
     calloc(hashp->DSIZE, sizeof(SEGMENT *))) == ((void*)0)) {
  save_errno = errno;
  (void)hdestroy(hashp);
  errno = save_errno;
  return (-1);
 }
 hashp->nsegs = nsegs;
 if (nsegs == 0)
  return (0);

 if ((store = calloc(nsegs << hashp->SSHIFT, sizeof(SEGMENT))) == ((void*)0)) {
  save_errno = errno;
  (void)hdestroy(hashp);
  errno = save_errno;
  return (-1);
 }
 for (i = 0; i < nsegs; i++)
  hashp->dir[i] = &store[i << hashp->SSHIFT];
 return (0);
}
