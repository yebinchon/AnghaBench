
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ntype; } ;
typedef TYPE_1__ Node ;


 int NSTAT ;

Node *exptostat(Node *a)
{
 a->ntype = NSTAT;
 return(a);
}
