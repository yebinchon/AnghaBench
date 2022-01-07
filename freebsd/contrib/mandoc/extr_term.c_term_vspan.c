
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
struct roffsu {int unit; double scale; } ;
 int abort () ;

int
term_vspan(const struct termp *p, const struct roffsu *su)
{
 double r;
 int ri;

 switch (su->unit) {
 case 137:
  r = su->scale / 40.0;
  break;
 case 136:
  r = su->scale * 6.0 / 2.54;
  break;
 case 133:
  r = su->scale * 65536.0 / 40.0;
  break;
 case 132:
  r = su->scale * 6.0;
  break;
 case 131:
  r = su->scale * 0.006;
  break;
 case 130:
  r = su->scale;
  break;
 case 129:
  r = su->scale / 12.0;
  break;
 case 134:
 case 135:
  r = su->scale * 0.6;
  break;
 case 128:
  r = su->scale;
  break;
 default:
  abort();
 }
 ri = r > 0.0 ? r + 0.4995 : r - 0.4995;
 return ri < 66 ? ri : 1;
}
