
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wint_t ;
typedef int el_action_t ;
struct TYPE_11__ {int action; scalar_t__ pos; } ;
struct TYPE_12__ {TYPE_3__ c_vcmd; } ;
struct TYPE_10__ {scalar_t__ cursor; scalar_t__ buffer; scalar_t__ lastchar; } ;
struct TYPE_9__ {int key; int current; } ;
struct TYPE_13__ {TYPE_4__ el_chared; TYPE_2__ el_line; TYPE_1__ el_map; } ;
typedef TYPE_5__ EditLine ;


 int CC_ARGHACK ;
 int CC_ERROR ;
 int CC_REFRESH ;
 int INSERT ;
 int NOP ;
 int YANK ;
 int cv_undo (TYPE_5__*) ;
 int cv_yank (TYPE_5__*,scalar_t__,int) ;

__attribute__((used)) static el_action_t
cv_action(EditLine *el, wint_t c)
{

 if (el->el_chared.c_vcmd.action != NOP) {

  if (c != (wint_t)el->el_chared.c_vcmd.action)
   return CC_ERROR;

  if (!(c & YANK))
   cv_undo(el);
  cv_yank(el, el->el_line.buffer,
      (int)(el->el_line.lastchar - el->el_line.buffer));
  el->el_chared.c_vcmd.action = NOP;
  el->el_chared.c_vcmd.pos = 0;
  if (!(c & YANK)) {
   el->el_line.lastchar = el->el_line.buffer;
   el->el_line.cursor = el->el_line.buffer;
  }
  if (c & INSERT)
   el->el_map.current = el->el_map.key;

  return CC_REFRESH;
 }
 el->el_chared.c_vcmd.pos = el->el_line.cursor;
 el->el_chared.c_vcmd.action = c;
 return CC_ARGHACK;
}
