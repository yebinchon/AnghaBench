
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int EINVAL ;
 int ENXIO ;
 int HCI_REG_VIDEO_OUTPUT ;
 int HCI_SET ;
 int HCI_VIDEO_OUTPUT_FLAG ;
 int METHOD_VIDEO ;
 int acpi_SetInteger (int *,int ,int) ;
 int hci_call (int *,int,int ,int*) ;
 int toshiba ;

__attribute__((used)) static int
hci_video_output(ACPI_HANDLE h, int op, UINT32 *video_output)
{
 int ret;
 ACPI_STATUS status;

 ACPI_SERIAL_ASSERT(toshiba);
 if (op == HCI_SET) {
  if (*video_output < 1 || *video_output > 7)
   return (EINVAL);
  if (h == ((void*)0))
   return (ENXIO);
  *video_output |= HCI_VIDEO_OUTPUT_FLAG;
  status = acpi_SetInteger(h, METHOD_VIDEO, *video_output);
  if (ACPI_SUCCESS(status))
   ret = 0;
  else
   ret = ENXIO;
 } else {
  ret = hci_call(h, op, HCI_REG_VIDEO_OUTPUT, video_output);
  if (ret == 0)
   *video_output &= 0xff;
 }

 return (ret);
}
