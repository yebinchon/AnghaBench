
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ isc_entropysource_t ;
struct TYPE_8__ {scalar_t__ refcnt; int sources; } ;
typedef TYPE_2__ isc_entropy_t ;
typedef int isc_boolean_t ;




 int ISC_FALSE ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_TRUE ;
 int link ;

__attribute__((used)) static inline isc_boolean_t
destroy_check(isc_entropy_t *ent) {
 isc_entropysource_t *source;

 if (ent->refcnt > 0)
  return (ISC_FALSE);

 source = ISC_LIST_HEAD(ent->sources);
 while (source != ((void*)0)) {
  switch (source->type) {
  case 129:
  case 128:
   break;
  default:
   return (ISC_FALSE);
  }
  source = ISC_LIST_NEXT(source, link);
 }

 return (ISC_TRUE);
}
