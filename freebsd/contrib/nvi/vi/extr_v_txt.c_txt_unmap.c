
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int cno; size_t ai; size_t offset; int * lb; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int CHAR_T ;


 int EC_MAPINPUT ;
 int FL_CLR (int ,int ) ;
 int FL_SET (int ,int ) ;
 scalar_t__ ex_is_unmap (int *,size_t) ;
 scalar_t__ isblank (int ) ;

__attribute__((used)) static void
txt_unmap(SCR *sp, TEXT *tp, u_int32_t *ec_flagsp)
{
 size_t len, off;
 CHAR_T *p;


 for (off = tp->cno - 1, p = tp->lb + off, len = 0;; --p, --off) {
  if (isblank(*p)) {
   ++p;
   break;
  }
  ++len;
  if (off == tp->ai || off == tp->offset)
   break;
 }
 if ((off == tp->ai || off == tp->offset) && ex_is_unmap(p, len))
  FL_CLR(*ec_flagsp, EC_MAPINPUT);
 else
  FL_SET(*ec_flagsp, EC_MAPINPUT);
}
