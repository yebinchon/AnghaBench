
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
struct roffsu {int unit; double scale; } ;
 int abort () ;

__attribute__((used)) static int
ascii_hspan(const struct termp *p, const struct roffsu *su)
{
 double r;

 switch (su->unit) {
 case 137:
  r = su->scale;
  break;
 case 136:
  r = su->scale * 240.0 / 2.54;
  break;
 case 133:
  r = su->scale * 65536.0;
  break;
 case 132:
  r = su->scale * 240.0;
  break;
 case 131:
  r = su->scale * 0.24;
  break;
 case 128:
 case 130:
  r = su->scale * 40.0;
  break;
 case 129:
  r = su->scale * 10.0 / 3.0;
  break;
 case 134:
 case 135:
  r = su->scale * 24.0;
  break;
 default:
  abort();
 }
 return r > 0.0 ? r + 0.01 : r - 0.01;
}
