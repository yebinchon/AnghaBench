
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inuse; } ;
struct TYPE_3__ {int irq; int base; } ;


 int ICU_MASK ;
 int add_info (char*,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_obscure ;
 int dos_info ;
 int dos_ops ;
 int icu_oldmask ;
 int inportb (int ) ;
 TYPE_2__* intrupts ;
 TYPE_1__* ports ;
 int serial_add_interface (int *) ;
 int setlist ;
 int showlist ;
 int var_zinteger ;

void
_initialize_ser_dos (void)
{
  serial_add_interface (&dos_ops);


  icu_oldmask = inportb (ICU_MASK);


  intrupts[0].inuse =
    intrupts[1].inuse =
    intrupts[2].inuse = 1;

  add_show_from_set (
        add_set_cmd ("com1base", class_obscure, var_zinteger,
       (char *) &ports[0].base,
       "Set COM1 base i/o port address.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com1irq", class_obscure, var_zinteger,
       (char *) &ports[0].irq,
       "Set COM1 interrupt request.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com2base", class_obscure, var_zinteger,
       (char *) &ports[1].base,
       "Set COM2 base i/o port address.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com2irq", class_obscure, var_zinteger,
       (char *) &ports[1].irq,
       "Set COM2 interrupt request.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com3base", class_obscure, var_zinteger,
       (char *) &ports[2].base,
       "Set COM3 base i/o port address.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com3irq", class_obscure, var_zinteger,
       (char *) &ports[2].irq,
       "Set COM3 interrupt request.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com4base", class_obscure, var_zinteger,
       (char *) &ports[3].base,
       "Set COM4 base i/o port address.",
       &setlist),
        &showlist);

  add_show_from_set (
        add_set_cmd ("com4irq", class_obscure, var_zinteger,
       (char *) &ports[3].irq,
       "Set COM4 interrupt request.",
       &setlist),
        &showlist);

  add_info ("serial", dos_info,
     "Print DOS serial port status.");
}
