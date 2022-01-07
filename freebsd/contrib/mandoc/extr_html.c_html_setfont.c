
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int metal; int metac; } ;
typedef enum mandoc_esc { ____Placeholder_mandoc_esc } mandoc_esc ;
int
html_setfont(struct html *h, enum mandoc_esc font)
{
 switch (font) {
 case 129:
  font = h->metal;
  break;
 case 130:
 case 132:
 case 133:
 case 131:
 case 128:
  break;
 case 134:
  font = 128;
  break;
 default:
  return 0;
 }
 h->metal = h->metac;
 h->metac = font;
 return 1;
}
