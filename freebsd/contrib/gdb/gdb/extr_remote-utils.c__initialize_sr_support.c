
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;


 int add_com (char*,int ,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_obscure ;
 int no_class ;
 int setlist ;
 int showlist ;
 int sr_com ;
 TYPE_1__ sr_settings ;
 int var_filename ;

void
_initialize_sr_support (void)
{

  add_show_from_set (add_set_cmd ("remotedevice", no_class,
      var_filename, (char *) &sr_settings.device,
      "Set device for remote serial I/O.\nThis device is used as the serial port when debugging using remote\ntargets.", &setlist),


       &showlist);

  add_com ("remote <command>", class_obscure, sr_com,
    "Send a command to the remote monitor.");

}
