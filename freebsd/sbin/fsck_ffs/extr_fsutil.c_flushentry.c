
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * b_buf; int * b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_4__ {scalar_t__ fs_ncg; } ;


 struct bufarea* cgbufs ;
 int flush (int ,struct bufarea*) ;
 scalar_t__ flushtries ;
 int free (int *) ;
 int fswritefd ;
 TYPE_2__ sblock ;

int
flushentry(void)
{
 struct bufarea *cgbp;

 if (flushtries == sblock.fs_ncg || cgbufs == ((void*)0))
  return (0);
 cgbp = &cgbufs[flushtries++];
 if (cgbp->b_un.b_cg == ((void*)0))
  return (0);
 flush(fswritefd, cgbp);
 free(cgbp->b_un.b_buf);
 cgbp->b_un.b_buf = ((void*)0);
 return (1);
}
