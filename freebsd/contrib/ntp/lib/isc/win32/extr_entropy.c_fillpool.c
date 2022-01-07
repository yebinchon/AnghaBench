
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_2__ isc_entropysource_t ;
struct TYPE_10__ {int entropy; int pseudo; } ;
struct TYPE_12__ {int initialized; unsigned int nsources; int sources; TYPE_2__* nextsource; TYPE_1__ pool; } ;
typedef TYPE_3__ isc_entropy_t ;
typedef int isc_boolean_t ;


 scalar_t__ ENTROPY_SOURCETYPE_CALLBACK ;
 scalar_t__ ENTROPY_SOURCETYPE_FILE ;
 void* ISC_LIST_HEAD (int ) ;
 TYPE_2__* ISC_LIST_NEXT (TYPE_2__*,int ) ;
 unsigned int ISC_MAX (unsigned int,int) ;
 unsigned int ISC_MIN (unsigned int,unsigned int) ;
 int REQUIRE (int) ;
 int RND_POOLBITS ;
 int THRESHOLD_BITS ;
 int VALID_ENTROPY (TYPE_3__*) ;
 unsigned int get_from_callback (TYPE_2__*,unsigned int,int ) ;
 unsigned int get_from_filesource (TYPE_2__*,unsigned int) ;
 int link ;

__attribute__((used)) static void
fillpool(isc_entropy_t *ent, unsigned int desired, isc_boolean_t blocking) {
 unsigned int added;
 unsigned int remaining;
 unsigned int needed;
 unsigned int nsource;
 isc_entropysource_t *source;
 isc_entropysource_t *firstsource;

 REQUIRE(VALID_ENTROPY(ent));

 needed = desired;
 if (needed == 0) {
  REQUIRE(!blocking);

  if ((ent->pool.entropy >= RND_POOLBITS / 4)
      && (ent->pool.pseudo <= RND_POOLBITS / 4))
   return;

  needed = THRESHOLD_BITS * 4;
 } else {
  needed = ISC_MAX(needed, THRESHOLD_BITS);
  needed = ISC_MIN(needed, RND_POOLBITS);
 }




 needed = ISC_MIN(needed, RND_POOLBITS - ent->pool.entropy);






 if (ent->initialized < THRESHOLD_BITS)
  needed = ISC_MAX(needed, THRESHOLD_BITS - ent->initialized);
 added = 0;
 remaining = needed;
 if (ent->nextsource == ((void*)0)) {
  ent->nextsource = ISC_LIST_HEAD(ent->sources);
  if (ent->nextsource == ((void*)0))
   return;
 }
 source = ent->nextsource;




 firstsource = source;
 again_file:
 for (nsource = 0; nsource < ent->nsources; nsource++) {
  unsigned int got;

  if (remaining == 0)
   break;

  got = 0;

  if (source->type == ENTROPY_SOURCETYPE_FILE)
   got = get_from_filesource(source, remaining);

  added += got;

  remaining -= ISC_MIN(remaining, got);

  source = ISC_LIST_NEXT(source, link);
  if (source == ((void*)0))
   source = ISC_LIST_HEAD(ent->sources);
 }
 ent->nextsource = source;





 if (!(ent->nextsource == firstsource && added == 0)) {
  if (blocking && remaining != 0) {
    goto again_file;
  }
 }





 source = ISC_LIST_HEAD(ent->sources);
 while ((remaining != 0) && (source != ((void*)0))) {
  unsigned int got;

  got = 0;

  if (source->type == ENTROPY_SOURCETYPE_CALLBACK)
   got = get_from_callback(source, remaining, blocking);

  added += got;
  remaining -= ISC_MIN(remaining, got);

  if (added >= needed)
   break;

  source = ISC_LIST_NEXT(source, link);
 }




 if (ent->initialized < THRESHOLD_BITS)
  ent->initialized += added;
}
