
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ recno_t ;
struct TYPE_8__ {size_t size; int * data; } ;
struct TYPE_10__ {int bt_bval; scalar_t__ bt_nrecs; TYPE_1__ bt_rdata; int bt_rfp; } ;
struct TYPE_9__ {int size; int * data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ BTREE ;


 int EOF ;
 int F_SET (TYPE_3__*,int ) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 scalar_t__ RET_SUCCESS ;
 int R_EOF ;
 scalar_t__ __rec_iput (TYPE_3__*,scalar_t__,TYPE_2__*,int ) ;
 int getc (int ) ;
 int * reallocf (int *,size_t) ;

int
__rec_vpipe(BTREE *t, recno_t top)
{
 DBT data;
 recno_t nrec;
 size_t len;
 size_t sz;
 int bval, ch;
 u_char *p;

 bval = t->bt_bval;
 for (nrec = t->bt_nrecs; nrec < top; ++nrec) {
  for (p = t->bt_rdata.data,
      sz = t->bt_rdata.size;; *p++ = ch, --sz) {
   if ((ch = getc(t->bt_rfp)) == EOF || ch == bval) {
    data.data = t->bt_rdata.data;
    data.size = p - (u_char *)t->bt_rdata.data;
    if (ch == EOF && data.size == 0)
     break;
    if (__rec_iput(t, nrec, &data, 0)
        != RET_SUCCESS)
     return (RET_ERROR);
    break;
   }
   if (sz == 0) {
    len = p - (u_char *)t->bt_rdata.data;
    t->bt_rdata.size += (sz = 256);
    t->bt_rdata.data = reallocf(t->bt_rdata.data, t->bt_rdata.size);
    if (t->bt_rdata.data == ((void*)0))
     return (RET_ERROR);
    p = (u_char *)t->bt_rdata.data + len;
   }
  }
  if (ch == EOF)
   break;
 }
 if (nrec < top) {
  F_SET(t, R_EOF);
  return (RET_SPECIAL);
 }
 return (RET_SUCCESS);
}
