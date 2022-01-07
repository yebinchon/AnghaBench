
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int token; int enabled; } ;
typedef TYPE_2__ bc_entry ;
typedef int attr_val_fifo ;
struct TYPE_6__ {int i; } ;
struct TYPE_8__ {TYPE_1__ value; struct TYPE_8__* link; } ;
typedef TYPE_3__ attr_val ;


 TYPE_3__* HEAD_PFIFO (int *) ;
 int LOG_ERR ;
 int PROTO_AUTHENTICATE ;
 int PROTO_BROADCLIENT ;
 int PROTO_CAL ;
 int PROTO_FILEGEN ;
 int PROTO_KERNEL ;
 int PROTO_MODE7 ;
 int PROTO_MONITOR ;
 int PROTO_NTP ;
 int PROTO_PCEDIGEST ;
 int PROTO_UECRYPTO ;
 int PROTO_UECRYPTONAK ;
 int PROTO_UEDIGEST ;
 TYPE_2__* bc_list ;
 int msyslog (int ,char*,int) ;
 int proto_config (int ,int,int,int *) ;

__attribute__((used)) static void
apply_enable_disable(
 attr_val_fifo * fifo,
 int enable
 )
{
 attr_val *curr_tok_fifo;
 int option;




 for (curr_tok_fifo = HEAD_PFIFO(fifo);
      curr_tok_fifo != ((void*)0);
      curr_tok_fifo = curr_tok_fifo->link) {

  option = curr_tok_fifo->value.i;
  switch (option) {

  default:
   msyslog(LOG_ERR,
    "can not apply enable/disable token %d, unknown",
    option);
   break;

  case 140:
   proto_config(PROTO_AUTHENTICATE, enable, 0., ((void*)0));
   break;

  case 138:
   proto_config(PROTO_BROADCLIENT, enable, 0., ((void*)0));
   break;

  case 137:
   proto_config(PROTO_CAL, enable, 0., ((void*)0));
   break;

  case 136:
   proto_config(PROTO_KERNEL, enable, 0., ((void*)0));
   break;

  case 134:
   proto_config(PROTO_MONITOR, enable, 0., ((void*)0));
   break;

  case 135:
   proto_config(PROTO_MODE7, enable, 0., ((void*)0));
   break;

  case 133:
   proto_config(PROTO_NTP, enable, 0., ((void*)0));
   break;

  case 132:
   proto_config(PROTO_PCEDIGEST, enable, 0., ((void*)0));
   break;

  case 131:
   proto_config(PROTO_FILEGEN, enable, 0., ((void*)0));
   break;

  case 130:
   proto_config(PROTO_UECRYPTO, enable, 0., ((void*)0));
   break;

  case 129:
   proto_config(PROTO_UECRYPTONAK, enable, 0., ((void*)0));
   break;

  case 128:
   proto_config(PROTO_UEDIGEST, enable, 0., ((void*)0));
   break;
  }
 }
}
