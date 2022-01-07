
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;





__attribute__((used)) static unsigned int conf_offset_val(enum confidentiality_offset co)
{
 switch (co) {
 case 129:
  return 30;
  break;
 case 128:
  return 50;
 default:
  return 0;
 }
}
