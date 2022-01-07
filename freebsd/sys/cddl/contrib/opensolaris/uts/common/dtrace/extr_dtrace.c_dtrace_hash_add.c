
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int dtrace_probe_t ;
struct TYPE_10__ {int dthb_len; int * dthb_chain; struct TYPE_10__* dthb_next; } ;
typedef TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_11__ {int dth_mask; int dth_nbuckets; int dth_size; TYPE_1__** dth_tab; } ;
typedef TYPE_2__ dtrace_hash_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_HASHEQ (TYPE_2__*,int *,int *) ;
 int ** DTRACE_HASHNEXT (TYPE_2__*,int *) ;
 int ** DTRACE_HASHPREV (TYPE_2__*,int *) ;
 int DTRACE_HASHSTR (TYPE_2__*,int *) ;
 int KM_SLEEP ;
 int dtrace_hash_resize (TYPE_2__*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static void
dtrace_hash_add(dtrace_hash_t *hash, dtrace_probe_t *new)
{
 int hashval = DTRACE_HASHSTR(hash, new);
 int ndx = hashval & hash->dth_mask;
 dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];
 dtrace_probe_t **nextp, **prevp;

 for (; bucket != ((void*)0); bucket = bucket->dthb_next) {
  if (DTRACE_HASHEQ(hash, bucket->dthb_chain, new))
   goto add;
 }

 if ((hash->dth_nbuckets >> 1) > hash->dth_size) {
  dtrace_hash_resize(hash);
  dtrace_hash_add(hash, new);
  return;
 }

 bucket = kmem_zalloc(sizeof (dtrace_hashbucket_t), KM_SLEEP);
 bucket->dthb_next = hash->dth_tab[ndx];
 hash->dth_tab[ndx] = bucket;
 hash->dth_nbuckets++;

add:
 nextp = DTRACE_HASHNEXT(hash, new);
 ASSERT(*nextp == ((void*)0) && *(DTRACE_HASHPREV(hash, new)) == ((void*)0));
 *nextp = bucket->dthb_chain;

 if (bucket->dthb_chain != ((void*)0)) {
  prevp = DTRACE_HASHPREV(hash, bucket->dthb_chain);
  ASSERT(*prevp == ((void*)0));
  *prevp = new;
 }

 bucket->dthb_chain = new;
 bucket->dthb_len++;
}
