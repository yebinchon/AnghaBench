
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {char** VendorDefinedData; } ;
typedef TYPE_1__ VENDOR_DEVICE_PATH_WITH_DATA ;
struct TYPE_5__ {int Header; int Guid; } ;
typedef TYPE_2__ VENDOR_DEVICE_PATH ;


 int DevicePathNodeLength (int *) ;
 int asprintf (char**,char*,char const*,char*,...) ;
 char* efi_make_tail (char*) ;
 int free (char*) ;
 int uuid_s_ok ;
 int uuid_to_string (int const*,char**,int*) ;

__attribute__((used)) static char *
efi_vendor_path(const char *type, VENDOR_DEVICE_PATH *node, char *suffix)
{
 uint32_t size = DevicePathNodeLength(&node->Header) - sizeof(*node);
 VENDOR_DEVICE_PATH_WITH_DATA *dp = (VENDOR_DEVICE_PATH_WITH_DATA *)node;
 char *name, *tail, *head;
 char *uuid;
 int rv;

 uuid_to_string((const uuid_t *)(void *)&node->Guid, &uuid, &rv);
 if (rv != uuid_s_ok)
  return (((void*)0));

 tail = efi_make_tail(suffix);
 rv = asprintf(&head, "%sVendor(%s)[%x:", type, uuid, size);
 free(uuid);
 if (rv < 0)
  return (((void*)0));

 if (DevicePathNodeLength(&node->Header) > sizeof(*node)) {
  for (uint32_t i = 0; i < size; i++) {
   rv = asprintf(&name, "%s%02x", head,
       dp->VendorDefinedData[i]);
   if (rv < 0) {
    free(tail);
    free(head);
    return (((void*)0));
   }
   free(head);
   head = name;
  }
 }

 if (asprintf(&name, "%s]%s", head, tail) < 0)
  name = ((void*)0);
 free(head);
 free(tail);
 return (name);
}
