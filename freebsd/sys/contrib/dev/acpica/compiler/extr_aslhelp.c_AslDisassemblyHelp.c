
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void
AslDisassemblyHelp (
    void)
{

    printf ("\nObtaining binary ACPI tables and disassembling to ASL source code.\n\n");
    printf ("Use the following ACPICA toolchain:\n");
    printf ("  AcpiDump: Dump all ACPI tables to a hex ascii file\n");
    printf ("  AcpiXtract: Extract one or more binary ACPI tables from AcpiDump output\n");
    printf ("  iASL -d <file>: Disassemble a binary ACPI table to ASL source code\n");
    printf ("\n");
}
