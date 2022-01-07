
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int queue_t ;
struct TYPE_7__ {TYPE_1__* b_datap; } ;
typedef TYPE_2__ mblk_t ;
struct TYPE_6__ {scalar_t__ db_type; } ;


 int DD_RSVC ;
 scalar_t__ QPCTL ;
 scalar_t__ canputnext (int *) ;
 TYPE_2__* getq (int *) ;
 int pprintf (int ,char*) ;
 int putbq (int *,TYPE_2__*) ;
 int putnext (int *,TYPE_2__*) ;

__attribute__((used)) static int
parsersvc(
   queue_t *q
   )
{
 mblk_t *mp;

 while ((mp = getq(q)))
 {
  if (canputnext(q) || (mp->b_datap->db_type > QPCTL))
  {
   putnext(q, mp);
   pprintf(DD_RSVC, "parse: RSVC - putnext\n");
  }
  else
  {
   putbq(q, mp);
   pprintf(DD_RSVC, "parse: RSVC - flow control wait\n");
   break;
  }
 }
 return 0;
}
