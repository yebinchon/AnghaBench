
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int drive_str ;


 int OF_getencprop (int ,char*,int*,int) ;

__attribute__((used)) static int
aw_gpio_parse_drive_strength(phandle_t node, uint32_t *drive)
{
 uint32_t drive_str;

 if (OF_getencprop(node, "drive", drive, sizeof(*drive)) != -1)
  return (0);
 if (OF_getencprop(node, "allwinner,drive", drive, sizeof(*drive)) != -1)
  return (0);
 if (OF_getencprop(node, "drive-strength", &drive_str,
     sizeof(drive_str)) != -1) {
  *drive = (drive_str / 10) - 1;
  return (0);
 }

 return (1);
}
