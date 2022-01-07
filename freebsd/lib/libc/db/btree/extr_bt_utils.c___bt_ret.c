
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int flags; scalar_t__ bytes; scalar_t__ ksize; scalar_t__ dsize; } ;
struct TYPE_11__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_10__ {int index; int page; } ;
typedef TYPE_1__ EPG ;
typedef TYPE_2__ DBT ;
typedef int BTREE ;
typedef TYPE_3__ BLEAF ;


 int B_DB_LOCK ;
 scalar_t__ F_ISSET (int *,int ) ;
 TYPE_3__* GETBLEAF (int ,int ) ;
 int P_BIGDATA ;
 int P_BIGKEY ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 scalar_t__ __ovfl_get (int *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 void* realloc (scalar_t__,scalar_t__) ;

int
__bt_ret(BTREE *t, EPG *e, DBT *key, DBT *rkey, DBT *data, DBT *rdata, int copy)
{
 BLEAF *bl;
 void *p;

 bl = GETBLEAF(e->page, e->index);






 if (key == ((void*)0))
  goto dataonly;

 if (bl->flags & P_BIGKEY) {
  if (__ovfl_get(t, bl->bytes,
      &key->size, &rkey->data, &rkey->size))
   return (RET_ERROR);
  key->data = rkey->data;
 } else if (copy || F_ISSET(t, B_DB_LOCK)) {
  if (bl->ksize > rkey->size) {
   p = realloc(rkey->data, bl->ksize);
   if (p == ((void*)0))
    return (RET_ERROR);
   rkey->data = p;
   rkey->size = bl->ksize;
  }
  memmove(rkey->data, bl->bytes, bl->ksize);
  key->size = bl->ksize;
  key->data = rkey->data;
 } else {
  key->size = bl->ksize;
  key->data = bl->bytes;
 }

dataonly:
 if (data == ((void*)0))
  return (RET_SUCCESS);

 if (bl->flags & P_BIGDATA) {
  if (__ovfl_get(t, bl->bytes + bl->ksize,
      &data->size, &rdata->data, &rdata->size))
   return (RET_ERROR);
  data->data = rdata->data;
 } else if (copy || F_ISSET(t, B_DB_LOCK)) {

  if (bl->dsize + 1 > rdata->size) {
   p = realloc(rdata->data, bl->dsize + 1);
   if (p == ((void*)0))
    return (RET_ERROR);
   rdata->data = p;
   rdata->size = bl->dsize + 1;
  }
  memmove(rdata->data, bl->bytes + bl->ksize, bl->dsize);
  data->size = bl->dsize;
  data->data = rdata->data;
 } else {
  data->size = bl->dsize;
  data->data = bl->bytes + bl->ksize;
 }

 return (RET_SUCCESS);
}
