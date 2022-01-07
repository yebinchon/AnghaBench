
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
typedef int UCHAR_T ;
struct TYPE_2__ {int cflags; } ;


 int EMIT (int ,int ) ;
 int OCHAR ;
 int REG_ICASE ;
 int bothcases (struct parse*,int) ;
 scalar_t__ isalpha (int) ;
 int othercase (int) ;

__attribute__((used)) static void
ordinary(struct parse *p, int ch)
{




 if ((p->g->cflags&REG_ICASE) && isalpha(ch) && othercase(ch) != ch)
  bothcases(p, ch);
 else {
  EMIT(OCHAR, (UCHAR_T)ch);




 }
}
