
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AcpiGbl_LineScanState ;

__attribute__((used)) static void
PrGetNextLineInit (
    void)
{
    AcpiGbl_LineScanState = 0;
}
