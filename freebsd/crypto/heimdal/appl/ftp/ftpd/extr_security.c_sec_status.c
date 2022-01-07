
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 scalar_t__ buffer_size ;
 int command_prot ;
 int data_prot ;
 char* level_to_name (int ) ;
 TYPE_1__* mech ;
 int printf (char*,...) ;
 scalar_t__ sec_complete ;

void
sec_status(void)
{
    if(sec_complete){
 printf("Using %s for authentication.\n", mech->name);
 printf("Using %s command channel.\n", level_to_name(command_prot));
 printf("Using %s data channel.\n", level_to_name(data_prot));
 if(buffer_size > 0)
     printf("Protection buffer size: %lu.\n",
     (unsigned long)buffer_size);
    }else{
 printf("Not using any security mechanism.\n");
    }
}
