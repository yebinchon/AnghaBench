
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* output; struct TYPE_4__* input; struct TYPE_4__* name; } ;
typedef TYPE_1__ SEQ ;


 int free (TYPE_1__*) ;

int
seq_free(SEQ *qp)
{
 if (qp->name != ((void*)0))
  free(qp->name);
 if (qp->input != ((void*)0))
  free(qp->input);
 if (qp->output != ((void*)0))
  free(qp->output);
 free(qp);
 return (0);
}
