
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nval; } ;
struct TYPE_3__ {scalar_t__* narg; struct TYPE_3__* nnext; } ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ Cell ;


 scalar_t__ strcmp (int ,char const*) ;

int isarg(const char *s)
{
 extern Node *arglist;
 Node *p = arglist;
 int n;

 for (n = 0; p != ((void*)0); p = p->nnext, n++)
  if (strcmp(((Cell *)(p->narg[0]))->nval, s) == 0)
   return n;
 return -1;
}
