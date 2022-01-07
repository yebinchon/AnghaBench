
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VIKEYS ;
struct TYPE_3__ {int key; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;
typedef char CHAR_T ;


 int CH_NOMAP ;
 int CH_QUOTED ;
 scalar_t__ v_event_push (int *,int *,char*,int,int) ;
 int const* vikeys ;

__attribute__((used)) static VIKEYS const *
v_alias(
 SCR *sp,
 VICMD *vp,
 VIKEYS const *kp)
{
 CHAR_T push;

 switch (vp->key) {
 case 'C':
  push = '$';
  vp->key = 'c';
  break;
 case 'D':
  push = '$';
  vp->key = 'd';
  break;
 case 'S':
  push = '_';
  vp->key = 'c';
  break;
 case 'Y':
  push = '_';
  vp->key = 'y';
  break;
 default:
  return (kp);
 }
 return (v_event_push(sp,
     ((void*)0), &push, 1, CH_NOMAP | CH_QUOTED) ? ((void*)0) : &vikeys[vp->key]);
}
