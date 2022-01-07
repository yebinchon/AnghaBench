
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_probe_t ;
struct TYPE_6__ {int * dthb_chain; struct TYPE_6__* dthb_next; } ;
typedef TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_7__ {int dth_mask; TYPE_1__** dth_tab; } ;
typedef TYPE_2__ dtrace_hash_t ;


 scalar_t__ DTRACE_HASHEQ (TYPE_2__*,int *,int *) ;
 int DTRACE_HASHSTR (TYPE_2__*,int *) ;

__attribute__((used)) static dtrace_probe_t *
dtrace_hash_lookup(dtrace_hash_t *hash, dtrace_probe_t *template)
{
 int hashval = DTRACE_HASHSTR(hash, template);
 int ndx = hashval & hash->dth_mask;
 dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];

 for (; bucket != ((void*)0); bucket = bucket->dthb_next) {
  if (DTRACE_HASHEQ(hash, bucket->dthb_chain, template))
   return (bucket->dthb_chain);
 }

 return (((void*)0));
}
