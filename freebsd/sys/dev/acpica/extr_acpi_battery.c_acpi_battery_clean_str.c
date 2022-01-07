
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char) ;

__attribute__((used)) static void
acpi_battery_clean_str(char *str, int len)
{
    int i;

    for (i = 0; i < len && *str != '\0'; i++, str++) {
 if (!isprint(*str))
     *str = '?';
    }


    if (i == len)
 *str = '\0';
}
