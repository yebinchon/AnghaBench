
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ recno_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_8__ {size_t size; int * data; } ;
struct TYPE_10__ {size_t bt_reclen; scalar_t__ bt_nrecs; scalar_t__ bt_cmap; int bt_bval; TYPE_1__ bt_rdata; scalar_t__ bt_emap; } ;
struct TYPE_9__ {size_t size; int * data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ BTREE ;


 int F_SET (TYPE_3__*,int ) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 scalar_t__ RET_SUCCESS ;
 int R_EOF ;
 scalar_t__ __rec_iput (TYPE_3__*,scalar_t__,TYPE_2__*,int ) ;
 int memset (int *,int ,size_t) ;
 int * reallocf (int *,size_t) ;

int
__rec_fmap(BTREE *t, recno_t top)
{
 DBT data;
 recno_t nrec;
 u_char *sp, *ep, *p;
 size_t len;

 if (t->bt_rdata.size < t->bt_reclen) {
  t->bt_rdata.data = reallocf(t->bt_rdata.data, t->bt_reclen);
  if (t->bt_rdata.data == ((void*)0))
   return (RET_ERROR);
  t->bt_rdata.size = t->bt_reclen;
 }
 data.data = t->bt_rdata.data;
 data.size = t->bt_reclen;

 sp = (u_char *)t->bt_cmap;
 ep = (u_char *)t->bt_emap;
 for (nrec = t->bt_nrecs; nrec < top; ++nrec) {
  if (sp >= ep) {
   F_SET(t, R_EOF);
   return (RET_SPECIAL);
  }
  len = t->bt_reclen;
  for (p = t->bt_rdata.data;
      sp < ep && len > 0; *p++ = *sp++, --len);
  if (len != 0)
   memset(p, t->bt_bval, len);
  if (__rec_iput(t, nrec, &data, 0) != RET_SUCCESS)
   return (RET_ERROR);
 }
 t->bt_cmap = (caddr_t)sp;
 return (RET_SUCCESS);
}
