
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int nrecs; int free; int psize; int version; int magic; } ;
struct TYPE_6__ {int bt_mp; int bt_nrecs; int bt_free; int bt_psize; } ;
typedef TYPE_1__ BTREE ;
typedef TYPE_2__ BTMETA ;


 int BTREEMAGIC ;
 int BTREEVERSION ;
 int F_ISSET (TYPE_1__*,int ) ;
 int MPOOL_DIRTY ;
 int P_META ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int SAVEMETA ;
 int memmove (void*,TYPE_2__*,int) ;
 void* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,void*,int ) ;

__attribute__((used)) static int
bt_meta(BTREE *t)
{
 BTMETA m;
 void *p;

 if ((p = mpool_get(t->bt_mp, P_META, 0)) == ((void*)0))
  return (RET_ERROR);


 m.magic = BTREEMAGIC;
 m.version = BTREEVERSION;
 m.psize = t->bt_psize;
 m.free = t->bt_free;
 m.nrecs = t->bt_nrecs;
 m.flags = F_ISSET(t, SAVEMETA);

 memmove(p, &m, sizeof(BTMETA));
 mpool_put(t->bt_mp, p, MPOOL_DIRTY);
 return (RET_SUCCESS);
}
