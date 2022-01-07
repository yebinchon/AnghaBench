
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int driver_t ;
typedef int device_t ;
struct TYPE_9__ {int Header; } ;
struct TYPE_7__ {scalar_t__ Length; } ;
struct TYPE_8__ {int Info; TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_TABLE_IVRS ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_IVRS_HARDWARE ;


 scalar_t__ ACPI_DEV_BASE_ORDER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_IVRS ;
 int AcpiGetTable (int ,int,int **) ;
 int * BUS_ADD_CHILD (int ,scalar_t__,char*,int) ;
 int KASSERT (TYPE_3__*,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int REG_BITS (int ,int,int) ;
 scalar_t__ acpi_disabled (char*) ;
 int * device_find_child (int ,char*,int) ;
 int ivhd_count ;
 int ivhd_count_iter ;
 int ** ivhd_devs ;
 TYPE_3__* ivhd_find_by_index (int) ;
 TYPE_3__** ivhd_hdrs ;
 scalar_t__ ivhd_is_newer (int *,int *) ;
 int ivrs_hdr_iterate_tbl (int ,int *) ;
 int ** malloc (int,int ,int) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
ivhd_identify(driver_t *driver, device_t parent)
{
 ACPI_TABLE_IVRS *ivrs;
 ACPI_IVRS_HARDWARE *ivhd;
 ACPI_STATUS status;
 int i, count = 0;
 uint32_t ivrs_ivinfo;

 if (acpi_disabled("ivhd"))
  return;

 status = AcpiGetTable(ACPI_SIG_IVRS, 1, (ACPI_TABLE_HEADER **)&ivrs);
 if (ACPI_FAILURE(status))
  return;

 if (ivrs->Header.Length == 0) {
  return;
 }

 ivrs_ivinfo = ivrs->Info;
 printf("AMD-Vi: IVRS Info VAsize = %d PAsize = %d GVAsize = %d"
        " flags:%b\n",
  REG_BITS(ivrs_ivinfo, 21, 15), REG_BITS(ivrs_ivinfo, 14, 8),
  REG_BITS(ivrs_ivinfo, 7, 5), REG_BITS(ivrs_ivinfo, 22, 22),
  "\020\001EFRSup");

 ivrs_hdr_iterate_tbl(ivhd_count_iter, ((void*)0));
 if (!ivhd_count)
  return;

 for (i = 0; i < ivhd_count; i++) {
  ivhd = ivhd_find_by_index(i);
  KASSERT(ivhd, ("ivhd%d is NULL\n", i));
  ivhd_hdrs[i] = ivhd;
 }





 for (i = ivhd_count - 1 ; i > 0 ; i--){
         if (ivhd_is_newer(&ivhd_hdrs[i-1]->Header,
   &ivhd_hdrs[i]->Header)) {
   ivhd_hdrs[i-1] = ivhd_hdrs[i];
   ivhd_count--;
  }
       }

 ivhd_devs = malloc(sizeof(device_t) * ivhd_count, M_DEVBUF,
  M_WAITOK | M_ZERO);
 for (i = 0; i < ivhd_count; i++) {
  ivhd = ivhd_hdrs[i];
  KASSERT(ivhd, ("ivhd%d is NULL\n", i));





  ivhd_devs[i] = BUS_ADD_CHILD(parent,
      ACPI_DEV_BASE_ORDER + 10 * 10, "ivhd", i);





  if (ivhd_devs[i] == ((void*)0)) {
   ivhd_devs[i] = device_find_child(parent, "ivhd", i);
   if (ivhd_devs[i] == ((void*)0)) {
    printf("AMD-Vi: cant find ivhd%d\n", i);
    break;
   }
  }
  count++;
 }




 ivhd_count = count;
}
