
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_uint32_t ;
struct TYPE_4__ {int entropy; } ;
struct TYPE_5__ {TYPE_1__ pool; } ;
typedef TYPE_2__ isc_entropy_t ;


 scalar_t__ ISC_MIN (scalar_t__,int ) ;

__attribute__((used)) static inline void
subtract_entropy(isc_entropy_t *ent, isc_uint32_t entropy) {
 entropy = ISC_MIN(entropy, ent->pool.entropy);
 ent->pool.entropy -= entropy;
}
