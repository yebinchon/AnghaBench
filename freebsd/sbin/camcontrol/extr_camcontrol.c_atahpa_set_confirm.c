
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct cam_device {int given_unit_number; int given_dev_name; int dev_unit_num; int device_name; } ;
struct ata_params {int dummy; } ;
typedef int str ;


 int ata_print_ident (struct ata_params*) ;
 int * fgets (char*,int,int ) ;
 int printf (char*,...) ;
 int stdin ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
atahpa_set_confirm(struct cam_device *device, struct ata_params* ident_buf,
     u_int64_t maxsize, int persist)
{
 printf("\nYou are about to configure HPA to limit the user accessible\n"
        "sectors to %ju %s on the device:\n%s%d,%s%d: ", maxsize,
        persist ? "persistently" : "temporarily",
        device->device_name, device->dev_unit_num,
        device->given_dev_name, device->given_unit_number);
 ata_print_ident(ident_buf);

 for(;;) {
  char str[50];
  printf("\nAre you SURE you want to configure HPA? (yes/no) ");

  if (((void*)0) != fgets(str, sizeof(str), stdin)) {
   if (0 == strncasecmp(str, "yes", 3)) {
    return (1);
   } else if (0 == strncasecmp(str, "no", 2)) {
    return (0);
   } else {
    printf("Please answer \"yes\" or "
           "\"no\"\n");
   }
  }
 }


 return (0);
}
