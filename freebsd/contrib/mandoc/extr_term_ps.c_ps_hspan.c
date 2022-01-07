
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct termp {TYPE_2__* ps; } ;
struct roffsu {int unit; double scale; } ;
struct TYPE_6__ {TYPE_1__* gly; } ;
struct TYPE_5__ {double lineheight; } ;
struct TYPE_4__ {double wx; } ;


 double PNT2AFM (struct termp const*,double) ;
 scalar_t__ TERMFONT_NONE ;
 TYPE_3__* fonts ;

__attribute__((used)) static int
ps_hspan(const struct termp *p, const struct roffsu *su)
{
 double r;





 switch (su->unit) {
 case 136:







  r = PNT2AFM(p, su->scale * 72.0 / 240.0);
  break;
 case 135:
  r = PNT2AFM(p, su->scale * 72.0 / 2.54);
  break;
 case 134:
  r = su->scale *
      fonts[(int)TERMFONT_NONE].gly[109 - 32].wx;
  break;
 case 133:
  r = su->scale *
      fonts[(int)TERMFONT_NONE].gly[110 - 32].wx;
  break;
 case 132:
  r = PNT2AFM(p, su->scale * 72.0);
  break;
 case 131:
  r = su->scale *
      fonts[(int)TERMFONT_NONE].gly[109 - 32].wx / 100.0;
  break;
 case 130:
  r = PNT2AFM(p, su->scale * 12.0);
  break;
 case 129:
  r = PNT2AFM(p, su->scale * 1.0);
  break;
 case 128:
  r = su->scale * p->ps->lineheight;
  break;
 default:
  r = su->scale;
  break;
 }

 return r * 24.0;
}
