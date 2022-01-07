
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nvs_op; TYPE_2__* nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_6__ {char* n_curr; char* n_base; char* n_end; int n_flag; } ;
typedef TYPE_2__ nvs_native_t ;


 int EINVAL ;




__attribute__((used)) static int
nvs_native_create(nvstream_t *nvs, nvs_native_t *native, char *buf,
    size_t buflen)
{
 switch (nvs->nvs_op) {
 case 129:
 case 130:
  nvs->nvs_private = native;
  native->n_curr = native->n_base = buf;
  native->n_end = buf + buflen;
  native->n_flag = 0;
  return (0);

 case 128:
  nvs->nvs_private = native;
  native->n_curr = native->n_base = native->n_end = ((void*)0);
  native->n_flag = 0;
  return (0);
 default:
  return (EINVAL);
 }
}
