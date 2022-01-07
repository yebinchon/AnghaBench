
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static inline int is_responder(uint8_t opcode)
{
 switch (opcode) {
 case 128:
 case 131:
 case 130:
 case 129:
 case 132:
  return 1;
 }

 return 0;
}
