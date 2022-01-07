
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {char* device_name; char* dev_unit_num; int given_unit_number; int given_dev_name; } ;
struct ata_params {int dummy; } ;
typedef int str ;


 int ata_print_ident (struct ata_params*) ;
 int * fgets (char*,int,int ) ;
 int printf (char*,...) ;
 int stdin ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
atasecurity_erase_confirm(struct cam_device *device,
     struct ata_params* ident_buf)
{

 printf("\nYou are about to ERASE ALL DATA from the following"
        " device:\n%s%d,%s%d: ", device->device_name,
        device->dev_unit_num, device->given_dev_name,
        device->given_unit_number);
 ata_print_ident(ident_buf);

 for(;;) {
  char str[50];
  printf("\nAre you SURE you want to ERASE ALL DATA? (yes/no) ");

  if (fgets(str, sizeof(str), stdin) != ((void*)0)) {
   if (strncasecmp(str, "yes", 3) == 0) {
    return (1);
   } else if (strncasecmp(str, "no", 2) == 0) {
    return (0);
   } else {
    printf("Please answer \"yes\" or "
           "\"no\"\n");
   }
  }
 }


 return (0);
}
