
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffsu {double scale; int unit; } ;
 int abort () ;

__attribute__((used)) static size_t
html_tbl_sulen(const struct roffsu *su, void *arg)
{
 if (su->scale < 0.0)
  return 0;

 switch (su->unit) {
 case 133:
  return su->scale * 65536.0 / 24.0;
 case 132:
  return su->scale * 10.0;
 case 136:
  return su->scale * 10.0 / 2.54;
 case 130:
 case 128:
  return su->scale * 10.0 / 6.0;
 case 134:
 case 135:
  return su->scale;
 case 129:
  return su->scale * 10.0 / 6.0 / 12.0;
 case 137:
  return su->scale / 24.0;
 case 131:
  return su->scale / 100.0;
 default:
  abort();
 }
}
