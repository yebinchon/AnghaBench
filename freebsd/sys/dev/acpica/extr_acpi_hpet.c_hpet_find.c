
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_GetInteger (int ,char*,scalar_t__*) ;
 scalar_t__ acpi_MatchHid (int ,char*) ;
 void* acpi_get_device (int ) ;
 char** hpet_ids ;

__attribute__((used)) static ACPI_STATUS
hpet_find(ACPI_HANDLE handle, UINT32 level, void *context,
    void **status)
{
 char **ids;
 uint32_t id = (uint32_t)(uintptr_t)context;
 uint32_t uid = 0;

 for (ids = hpet_ids; *ids != ((void*)0); ids++) {
  if (acpi_MatchHid(handle, *ids))
          break;
 }
 if (*ids == ((void*)0))
  return (AE_OK);
 if (ACPI_FAILURE(acpi_GetInteger(handle, "_UID", &uid)) ||
     id == uid)
  *status = acpi_get_device(handle);
 return (AE_OK);
}
