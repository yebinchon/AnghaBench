
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char recno_t ;
typedef int lno ;
struct TYPE_11__ {int (* get ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;} ;
struct TYPE_10__ {char* data; int size; } ;
struct TYPE_9__ {TYPE_4__* db; } ;
struct TYPE_8__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;
typedef TYPE_3__ DBT ;


 int stub1 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;

int
db_rget(
 SCR *sp,
 recno_t lno,
 char **pp,
 size_t *lenp)
{
 DBT data, key;
 EXF *ep = sp->ep;
 int rval;


 key.data = &lno;
 key.size = sizeof(lno);
 if ((rval = ep->db->get(ep->db, &key, &data, 0)) == 0)
 {
  *lenp = data.size;
  *pp = data.data;
 }

 return (rval);
}
