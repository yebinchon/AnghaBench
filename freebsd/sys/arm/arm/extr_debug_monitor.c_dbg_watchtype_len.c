
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







__attribute__((used)) static int
dbg_watchtype_len(uint32_t len)
{

 switch (len) {
 case 131:
  return (1);
 case 130:
  return (2);
 case 129:
  return (4);
 case 128:
  return (8);
 default:
  return (0);
 }
}
