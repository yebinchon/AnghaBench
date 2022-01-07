
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ recno_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_8__ {int bt_bval; scalar_t__ bt_nrecs; scalar_t__ bt_cmap; scalar_t__ bt_emap; } ;
struct TYPE_7__ {int* data; int size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ BTREE ;


 int F_SET (TYPE_2__*,int ) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 scalar_t__ RET_SUCCESS ;
 int R_EOF ;
 scalar_t__ __rec_iput (TYPE_2__*,scalar_t__,TYPE_1__*,int ) ;

int
__rec_vmap(BTREE *t, recno_t top)
{
 DBT data;
 u_char *sp, *ep;
 recno_t nrec;
 int bval;

 sp = (u_char *)t->bt_cmap;
 ep = (u_char *)t->bt_emap;
 bval = t->bt_bval;

 for (nrec = t->bt_nrecs; nrec < top; ++nrec) {
  if (sp >= ep) {
   F_SET(t, R_EOF);
   return (RET_SPECIAL);
  }
  for (data.data = sp; sp < ep && *sp != bval; ++sp);
  data.size = sp - (u_char *)data.data;
  if (__rec_iput(t, nrec, &data, 0) != RET_SUCCESS)
   return (RET_ERROR);
  ++sp;
 }
 t->bt_cmap = (caddr_t)sp;
 return (RET_SUCCESS);
}
