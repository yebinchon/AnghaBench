
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int q_next; } ;
typedef TYPE_2__ queue_t ;
struct TYPE_13__ {TYPE_1__* b_datap; } ;
typedef TYPE_3__ mblk_t ;
struct TYPE_11__ {scalar_t__ db_type; } ;


 int DD_RSVC ;
 scalar_t__ QPCTL ;
 scalar_t__ canput (int ) ;
 TYPE_3__* getq (TYPE_2__*) ;
 int parseprintf (int ,char*) ;
 int putbq (TYPE_2__*,TYPE_3__*) ;
 int putnext (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int
parsersvc(
 queue_t *q
 )
{
 mblk_t *mp;

 while ((mp = getq(q)))
 {
  if (canput(q->q_next) || (mp->b_datap->db_type > QPCTL))
  {
   putnext(q, mp);
   parseprintf(DD_RSVC,("parse: RSVC - putnext\n"));
  }
  else
  {
   putbq(q, mp);
   parseprintf(DD_RSVC,("parse: RSVC - flow control wait\n"));
   break;
  }
 }
 return 0;
}
