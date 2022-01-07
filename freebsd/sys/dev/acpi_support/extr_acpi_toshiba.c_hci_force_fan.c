
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int HCI_FAN_SHIFT ;
 int HCI_GET ;
 int HCI_REG_FAN ;
 int HCI_SET ;
 int hci_call (int ,int,int ,int*) ;
 int toshiba ;

__attribute__((used)) static int
hci_force_fan(ACPI_HANDLE h, int op, UINT32 *state)
{
 int ret;

 ACPI_SERIAL_ASSERT(toshiba);
 if (op == HCI_SET) {
  if (*state > 1)
   return (EINVAL);
  *state <<= HCI_FAN_SHIFT;
 }
 ret = hci_call(h, op, HCI_REG_FAN, state);
 if (ret == 0 && op == HCI_GET)
  *state >>= HCI_FAN_SHIFT;
 return (ret);
}
