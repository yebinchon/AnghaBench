
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t* recommendsize; scalar_t__ maxcharset; TYPE_2__** recommend; } ;
typedef TYPE_1__ _ISO2022EncodingInfo ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ final; scalar_t__ interm; } ;
typedef TYPE_2__ _ISO2022Charset ;







__attribute__((used)) static int
recommendation(_ISO2022EncodingInfo * __restrict ei,
    _ISO2022Charset * __restrict cs)
{
 _ISO2022Charset *recommend;
 size_t j;
 int i;


 for (i = 0; i < 4; i++) {
  recommend = ei->recommend[i];
  for (j = 0; j < ei->recommendsize[i]; j++) {
   if (cs->type != recommend[j].type)
    continue;
   if (cs->final != recommend[j].final)
    continue;
   if (cs->interm != recommend[j].interm)
    continue;

   return (i);
  }
 }


 for (i = 0; i < 4; i++) {
  recommend = ei->recommend[i];
  for (j = 0; j < ei->recommendsize[i]; j++) {
   if (cs->type != recommend[j].type)
    continue;
   if (cs->final && (cs->final != recommend[j].final))
    continue;
   if (cs->interm && (cs->interm != recommend[j].interm))
    continue;

   return (i);
  }
 }


 if (ei->maxcharset == 0) {
  return (0);
 } else {
  switch (cs->type) {
  case 131:
  case 130:
   return (0);
  case 129:
  case 128:
   return (1);
  }
 }
 return (0);
}
