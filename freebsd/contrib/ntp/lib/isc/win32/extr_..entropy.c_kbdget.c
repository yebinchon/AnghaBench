
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char isc_uint32_t ;
typedef int isc_time_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_4__ {int kbd; } ;
typedef TYPE_1__ isc_entropysource_t ;
typedef int isc_boolean_t ;


 scalar_t__ ISC_R_NOTBLOCKING ;
 scalar_t__ ISC_R_SUCCESS ;
 int TIME_NOW (int *) ;
 int UNUSED (void*) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ isc_entropy_addcallbacksample (TYPE_1__*,unsigned char,unsigned char) ;
 scalar_t__ isc_keyboard_getchar (int *,unsigned char*) ;
 unsigned char isc_time_nanoseconds (int *) ;
 int stderr ;

__attribute__((used)) static isc_result_t
kbdget(isc_entropysource_t *source, void *arg, isc_boolean_t blocking) {
 isc_result_t result;
 isc_time_t t;
 isc_uint32_t sample;
 isc_uint32_t extra;
 unsigned char c;

 UNUSED(arg);

 if (!blocking)
  return (ISC_R_NOTBLOCKING);

 result = isc_keyboard_getchar(&source->kbd, &c);
 if (result != ISC_R_SUCCESS)
  return (result);

 TIME_NOW(&t);

 sample = isc_time_nanoseconds(&t);
 extra = c;

 result = isc_entropy_addcallbacksample(source, sample, extra);
 if (result != ISC_R_SUCCESS) {
  fprintf(stderr, "\r\n");
  return (result);
 }

 fprintf(stderr, ".");
 fflush(stderr);

 return (result);
}
