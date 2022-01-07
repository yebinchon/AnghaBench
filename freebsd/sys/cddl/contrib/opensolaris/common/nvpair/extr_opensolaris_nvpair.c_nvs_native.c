
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * nvs_ops; } ;
typedef TYPE_1__ nvstream_t ;
typedef int nvs_native_t ;
typedef int nvs_header_t ;
typedef int nvlist_t ;


 int nvs_native_create (TYPE_1__*,int *,char*,size_t) ;
 int nvs_native_destroy (TYPE_1__*) ;
 int nvs_native_ops ;
 int nvs_operation (TYPE_1__*,int *,size_t*) ;

__attribute__((used)) static int
nvs_native(nvstream_t *nvs, nvlist_t *nvl, char *buf, size_t *buflen)
{
 nvs_native_t native;
 int err;

 nvs->nvs_ops = &nvs_native_ops;

 if ((err = nvs_native_create(nvs, &native, buf + sizeof (nvs_header_t),
     *buflen - sizeof (nvs_header_t))) != 0)
  return (err);

 err = nvs_operation(nvs, nvl, buflen);

 nvs_native_destroy(nvs);

 return (err);
}
