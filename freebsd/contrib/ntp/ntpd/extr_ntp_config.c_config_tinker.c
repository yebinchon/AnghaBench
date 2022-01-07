
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tinker; } ;
typedef TYPE_2__ config_tree ;
struct TYPE_6__ {int d; } ;
struct TYPE_8__ {int attr; TYPE_1__ value; struct TYPE_8__* link; } ;
typedef TYPE_3__ attr_val ;


 TYPE_3__* HEAD_PFIFO (int ) ;
 int LOOP_ALLAN ;
 int LOOP_FREQ ;
 int LOOP_HUFFPUFF ;
 int LOOP_MAX ;
 int LOOP_MAX_BACK ;
 int LOOP_MAX_FWD ;
 int LOOP_MINSTEP ;
 int LOOP_PANIC ;
 int LOOP_PHI ;
 int LOOP_TICK ;
 int fatal_error (char*,int) ;
 int loop_config (int,int ) ;

__attribute__((used)) static void
config_tinker(
 config_tree *ptree
 )
{
 attr_val * tinker;
 int item;

 tinker = HEAD_PFIFO(ptree->tinker);
 for (; tinker != ((void*)0); tinker = tinker->link) {
  switch (tinker->attr) {

  default:
   fatal_error("config_tinker: attr-token=%d", tinker->attr);

  case 137:
   item = LOOP_ALLAN;
   break;

  case 136:
   item = LOOP_PHI;
   break;

  case 135:
   item = LOOP_FREQ;
   break;

  case 134:
   item = LOOP_HUFFPUFF;
   break;

  case 133:
   item = LOOP_PANIC;
   break;

  case 132:
   item = LOOP_MAX;
   break;

  case 131:
   item = LOOP_MAX_BACK;
   break;

  case 130:
   item = LOOP_MAX_FWD;
   break;

  case 129:
   item = LOOP_MINSTEP;
   break;

  case 128:
   item = LOOP_TICK;
   break;
  }
  loop_config(item, tinker->value.d);
 }
}
