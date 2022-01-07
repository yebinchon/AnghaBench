
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int nvs_op; scalar_t__ nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_10__ {scalar_t__ n_curr; } ;
typedef TYPE_2__ nvs_native_t ;
struct TYPE_11__ {scalar_t__ nvp_size; } ;
typedef TYPE_3__ nvpair_t ;


 int NVP_NELEM (TYPE_3__*) ;
 scalar_t__ NVP_VALOFF (TYPE_3__*) ;
 scalar_t__ NVP_VALUE (TYPE_3__*) ;


 int bzero (int *,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
nvpair_native_string_array(nvstream_t *nvs, nvpair_t *nvp)
{
 switch (nvs->nvs_op) {
 case 128: {
  nvs_native_t *native = (nvs_native_t *)nvs->nvs_private;
  uint64_t *strp = (void *)
      (native->n_curr - nvp->nvp_size + NVP_VALOFF(nvp));





  bzero(strp, NVP_NELEM(nvp) * sizeof (uint64_t));
  break;
 }
 case 129: {
  char **strp = (void *)NVP_VALUE(nvp);
  char *buf = ((char *)strp + NVP_NELEM(nvp) * sizeof (uint64_t));
  int i;

  for (i = 0; i < NVP_NELEM(nvp); i++) {
   strp[i] = buf;
   buf += strlen(buf) + 1;
  }
  break;
 }
 }
}
