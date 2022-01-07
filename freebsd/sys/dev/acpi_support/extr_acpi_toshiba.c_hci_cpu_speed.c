
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int HCI_CPU_SPEED_MAX ;
 int HCI_CPU_SPEED_SHIFT ;
 int HCI_GET ;
 int HCI_REG_CPU_SPEED ;
 int HCI_SET ;
 int hci_call (int ,int,int ,int*) ;
 int toshiba ;

__attribute__((used)) static int
hci_cpu_speed(ACPI_HANDLE h, int op, UINT32 *speed)
{
 int ret;

 ACPI_SERIAL_ASSERT(toshiba);
 if (op == HCI_SET) {
  if (*speed > HCI_CPU_SPEED_MAX)
   return (EINVAL);
  *speed <<= HCI_CPU_SPEED_SHIFT;
 }
 ret = hci_call(h, op, HCI_REG_CPU_SPEED, speed);
 if (ret == 0 && op == HCI_GET)
  *speed >>= HCI_CPU_SPEED_SHIFT;
 return (ret);
}
