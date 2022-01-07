
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sample_queue_t ;
typedef int isc_uint32_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int samplequeue; } ;
struct TYPE_7__ {TYPE_1__ callback; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ sources; } ;
typedef TYPE_3__ isc_entropysource_t ;


 scalar_t__ ENTROPY_SOURCETYPE_CALLBACK ;
 int REQUIRE (int) ;
 int VALID_SOURCE (TYPE_3__*) ;
 int addsample (int *,int ,int ) ;

isc_result_t
isc_entropy_addcallbacksample(isc_entropysource_t *source, isc_uint32_t sample,
         isc_uint32_t extra)
{
 sample_queue_t *sq;
 isc_result_t result;

 REQUIRE(VALID_SOURCE(source));
 REQUIRE(source->type == ENTROPY_SOURCETYPE_CALLBACK);

 sq = &source->sources.callback.samplequeue;
 result = addsample(sq, sample, extra);

 return (result);
}
