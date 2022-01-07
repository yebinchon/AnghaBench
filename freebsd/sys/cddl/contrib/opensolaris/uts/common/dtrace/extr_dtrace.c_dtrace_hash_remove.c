
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dtrace_probe_t ;
struct TYPE_9__ {int * dthb_chain; struct TYPE_9__* dthb_next; } ;
typedef TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_10__ {int dth_mask; scalar_t__ dth_nbuckets; TYPE_1__** dth_tab; } ;
typedef TYPE_2__ dtrace_hash_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_HASHEQ (TYPE_2__*,int *,int *) ;
 int ** DTRACE_HASHNEXT (TYPE_2__*,int *) ;
 int ** DTRACE_HASHPREV (TYPE_2__*,int *) ;
 int DTRACE_HASHSTR (TYPE_2__*,int *) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
dtrace_hash_remove(dtrace_hash_t *hash, dtrace_probe_t *probe)
{
 int ndx = DTRACE_HASHSTR(hash, probe) & hash->dth_mask;
 dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];

 dtrace_probe_t **prevp = DTRACE_HASHPREV(hash, probe);
 dtrace_probe_t **nextp = DTRACE_HASHNEXT(hash, probe);




 for (; bucket != ((void*)0); bucket = bucket->dthb_next) {
  if (DTRACE_HASHEQ(hash, bucket->dthb_chain, probe))
   break;
 }

 ASSERT(bucket != ((void*)0));

 if (*prevp == ((void*)0)) {
  if (*nextp == ((void*)0)) {




   dtrace_hashbucket_t *b = hash->dth_tab[ndx];

   ASSERT(bucket->dthb_chain == probe);
   ASSERT(b != ((void*)0));

   if (b == bucket) {
    hash->dth_tab[ndx] = bucket->dthb_next;
   } else {
    while (b->dthb_next != bucket)
     b = b->dthb_next;
    b->dthb_next = bucket->dthb_next;
   }

   ASSERT(hash->dth_nbuckets > 0);
   hash->dth_nbuckets--;
   kmem_free(bucket, sizeof (dtrace_hashbucket_t));
   return;
  }

  bucket->dthb_chain = *nextp;
 } else {
  *(DTRACE_HASHNEXT(hash, *prevp)) = *nextp;
 }

 if (*nextp != ((void*)0))
  *(DTRACE_HASHPREV(hash, *nextp)) = *prevp;
}
