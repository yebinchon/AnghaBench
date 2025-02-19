
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cmd; } ;
struct TYPE_8__ {char* name; void* type; TYPE_2__ fun; int key; } ;
typedef TYPE_3__ funckey_t ;
struct TYPE_6__ {TYPE_3__* t_fkey; } ;
struct TYPE_9__ {TYPE_1__ el_terminal; } ;
typedef TYPE_4__ EditLine ;


 size_t A_K_DE ;
 size_t A_K_DN ;
 size_t A_K_EN ;
 size_t A_K_HO ;
 size_t A_K_LT ;
 size_t A_K_RT ;
 size_t A_K_UP ;
 int ED_DELETE_NEXT_CHAR ;
 int ED_MOVE_TO_BEG ;
 int ED_MOVE_TO_END ;
 int ED_NEXT_CHAR ;
 int ED_NEXT_HISTORY ;
 int ED_PREV_CHAR ;
 int ED_PREV_HISTORY ;
 int T_at7 ;
 int T_kD ;
 int T_kd ;
 int T_kh ;
 int T_kl ;
 int T_kr ;
 int T_ku ;
 void* XK_CMD ;

__attribute__((used)) static void
terminal_init_arrow(EditLine *el)
{
 funckey_t *arrow = el->el_terminal.t_fkey;

 arrow[A_K_DN].name = L"down";
 arrow[A_K_DN].key = T_kd;
 arrow[A_K_DN].fun.cmd = ED_NEXT_HISTORY;
 arrow[A_K_DN].type = XK_CMD;

 arrow[A_K_UP].name = L"up";
 arrow[A_K_UP].key = T_ku;
 arrow[A_K_UP].fun.cmd = ED_PREV_HISTORY;
 arrow[A_K_UP].type = XK_CMD;

 arrow[A_K_LT].name = L"left";
 arrow[A_K_LT].key = T_kl;
 arrow[A_K_LT].fun.cmd = ED_PREV_CHAR;
 arrow[A_K_LT].type = XK_CMD;

 arrow[A_K_RT].name = L"right";
 arrow[A_K_RT].key = T_kr;
 arrow[A_K_RT].fun.cmd = ED_NEXT_CHAR;
 arrow[A_K_RT].type = XK_CMD;

 arrow[A_K_HO].name = L"home";
 arrow[A_K_HO].key = T_kh;
 arrow[A_K_HO].fun.cmd = ED_MOVE_TO_BEG;
 arrow[A_K_HO].type = XK_CMD;

 arrow[A_K_EN].name = L"end";
 arrow[A_K_EN].key = T_at7;
 arrow[A_K_EN].fun.cmd = ED_MOVE_TO_END;
 arrow[A_K_EN].type = XK_CMD;

 arrow[A_K_DE].name = L"delete";
 arrow[A_K_DE].key = T_kD;
 arrow[A_K_DE].fun.cmd = ED_DELETE_NEXT_CHAR;
 arrow[A_K_DE].type = XK_CMD;
}
