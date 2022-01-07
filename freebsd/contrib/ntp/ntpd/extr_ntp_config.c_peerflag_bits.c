
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int peerflags; } ;
typedef TYPE_2__ peer_node ;
struct TYPE_6__ {int i; } ;
struct TYPE_8__ {TYPE_1__ value; struct TYPE_8__* link; } ;
typedef TYPE_3__ attr_val ;


 int FLAG_BURST ;
 int FLAG_IBURST ;
 int FLAG_NOSELECT ;
 int FLAG_PREEMPT ;
 int FLAG_PREFER ;
 int FLAG_SKEY ;
 int FLAG_TRUE ;
 int FLAG_XLEAVE ;
 TYPE_3__* HEAD_PFIFO (int ) ;
 int fatal_error (char*,int) ;

__attribute__((used)) static int
peerflag_bits(
 peer_node *pn
 )
{
 int peerflags;
 attr_val *option;


 peerflags = 0;
 option = HEAD_PFIFO(pn->peerflags);
 for (; option != ((void*)0); option = option->link) {
  switch (option->value.i) {

  default:
   fatal_error("peerflag_bits: option-token=%d", option->value.i);

  case 135:
   peerflags |= FLAG_SKEY;
   break;

  case 134:
   peerflags |= FLAG_BURST;
   break;

  case 133:
   peerflags |= FLAG_IBURST;
   break;

  case 132:
   peerflags |= FLAG_NOSELECT;
   break;

  case 131:
   peerflags |= FLAG_PREEMPT;
   break;

  case 130:
   peerflags |= FLAG_PREFER;
   break;

  case 129:
   peerflags |= FLAG_TRUE;
   break;

  case 128:
   peerflags |= FLAG_XLEAVE;
   break;
  }
 }

 return peerflags;
}
