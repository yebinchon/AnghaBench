
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dos_partition {scalar_t__ dp_flag; } ;
struct TYPE_7__ {struct dos_partition* parts; } ;
struct TYPE_6__ {int n_args; TYPE_1__* args; } ;
struct TYPE_5__ {int arg_val; } ;
typedef TYPE_2__ CMD ;


 scalar_t__ ACTIVE ;
 int NDOSPART ;
 int active_processed ;
 int current_line_number ;
 TYPE_4__ mboot ;
 int warnx (char*,int ,...) ;

__attribute__((used)) static int
process_active(CMD *command)
{
    int status = 0, partition, i;
    struct dos_partition *partp;

 while (1) {
 active_processed = 1;
  if (command->n_args != 1) {
     warnx("ERROR line %d: incorrect number of active args",
      current_line_number);
     status = 0;
     break;
 }
 partition = command->args[0].arg_val;
  if (partition < 1 || partition > 4) {
     warnx("ERROR line %d: invalid partition number %d",
      current_line_number, partition);
     break;
 }



 partp = mboot.parts;
 for (i = 0; i < NDOSPART; i++)
     partp[i].dp_flag = 0;
 partp[partition-1].dp_flag = ACTIVE;

 status = 1;
 break;
    }
    return (status);
}
