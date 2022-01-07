
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {scalar_t__ data; int datasize; } ;


 int EINVAL ;
 int ENOENT ;
 int FIRMWARE_UNLOAD ;


 TYPE_1__* firmware_get (char*) ;
 int firmware_put (TYPE_1__*,int ) ;
 TYPE_1__* fp ;
 int printf (char*,...) ;

__attribute__((used)) static int
fw_consumer_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  fp = firmware_get("beastie");

  if (fp == ((void*)0))
   return (ENOENT);

  if (((const char *)fp->data)[fp->datasize - 1] != '\0') {
   firmware_put(fp, FIRMWARE_UNLOAD);
   return (EINVAL);
  }
  printf("%s", (const char *)fp->data);

  return (0);
 case 128:
  printf("Bye!\n");

  if (fp != ((void*)0)) {
   printf("%s", (const char *)fp->data);
   firmware_put(fp, FIRMWARE_UNLOAD);
  }

  return (0);
 }
 return (EINVAL);
}
