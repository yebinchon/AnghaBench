
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pair ;
typedef int caddr_t ;
struct TYPE_5__ {struct TYPE_5__* cdr; int car; } ;


 TYPE_1__* calloc (int,int) ;
 int error (char*) ;

pair
cons(caddr_t car, pair cdr)
{
 pair foo = calloc(1, sizeof(*foo));
 if (!foo)
  error("no memory for cons.");
 foo->car = car;
 foo->cdr = cdr;
 return (foo);
}
