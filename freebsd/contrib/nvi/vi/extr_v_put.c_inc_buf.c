
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char buffer; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_5__ {char buffer; } ;
struct TYPE_7__ {TYPE_1__ sdot; } ;
typedef int SCR ;
typedef char CHAR_T ;


 TYPE_4__* VIP (int *) ;

__attribute__((used)) static void
inc_buf(SCR *sp, VICMD *vp)
{
 CHAR_T v;

 switch (vp->buffer) {
 case '1':
  v = '2';
  break;
 case '2':
  v = '3';
  break;
 case '3':
  v = '4';
  break;
 case '4':
  v = '5';
  break;
 case '5':
  v = '6';
  break;
 case '6':
  v = '7';
  break;
 case '7':
  v = '8';
  break;
 case '8':
  v = '9';
  break;
 default:
  return;
 }
 VIP(sp)->sdot.buffer = vp->buffer = v;
}
