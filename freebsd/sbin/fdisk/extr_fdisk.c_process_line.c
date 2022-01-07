
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cmd; } ;
typedef TYPE_1__ CMD ;


 int parse_config_line (char*,TYPE_1__*) ;
 int process_active (TYPE_1__*) ;
 int process_geometry (TYPE_1__*) ;
 int process_partition (TYPE_1__*) ;

__attribute__((used)) static int
process_line(char *line)
{
    CMD command;
    int status = 1;

 while (1) {
 parse_config_line(line, &command);
  switch (command.cmd) {
 case 0:



     break;
 case 'g':



     status = process_geometry(&command);
     break;
 case 'p':
     status = process_partition(&command);
     break;
 case 'a':
     status = process_active(&command);
     break;
 default:
     status = 0;
     break;
 }
 break;
    }
    return (status);
}
