
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum fman_kg_gen_extract_src { ____Placeholder_fman_kg_gen_extract_src } fman_kg_gen_extract_src ;
 int FM_KG_SCH_GEN_HT_INVALID ;

__attribute__((used)) static uint8_t get_gen_ht_code(enum fman_kg_gen_extract_src src,
    bool no_validation,
    uint8_t *offset)
{
 int code;

 switch (src) {
 case 156:
  code = no_validation ? 0x73 : 0x3;
  break;

 case 155:
  code = no_validation ? 0x77 : 0x7;
  break;

 case 132:
  code = no_validation ? 0x74 : 0x4;
  break;

 case 129:
  code = no_validation ? 0x75 : 0x5;
  break;

 case 128:
  code = no_validation ? 0x76 : 0x6;
  break;

 case 136:
  code = no_validation ? 0x78 : 0x8;
  break;

 case 140:
  code = no_validation ? 0x79 : 0x9;
  break;

 case 139:
  code = no_validation ? FM_KG_SCH_GEN_HT_INVALID : 0x19;
  break;

 case 138:
  code = no_validation ? FM_KG_SCH_GEN_HT_INVALID : 0x29;
  break;

 case 137:
  code = no_validation ? 0x7a : 0xa;
  break;

 case 145:
  code = no_validation ? 0x7b : 0xb;
  break;

 case 143:
  code = no_validation ? 0x7b : 0x1b;
  break;

 case 144:
  code = no_validation ? 0x7c : 0xc;
  break;

 case 142:
  code = no_validation ? 0x7c : 0x1c;
  break;

 case 141:
  code = no_validation ? 0x7c : 0x2c;
  break;

 case 146:
  code = no_validation ? 0x72 : 0x2;
  break;

 case 149:
  code = no_validation ? 0x7d : 0xd;
  break;

 case 131:
  code = no_validation ? 0x7e : 0xe;
  break;

 case 130:
  code = no_validation ? 0x7e : 0x1e;
  break;

 case 135:
  code = no_validation ? 0x7e : 0x3e;
  break;

 case 157:
  code = no_validation ? 0x7e : 0x4e;
  break;

 case 148:
  code = no_validation ? 0x7e : 0x2e;
  break;

 case 147:
  code = no_validation ? 0x7e : 0x6e;
  break;

 case 134:
  code = 0x70;
  break;

 case 133:
  code = 0x71;
  break;

 case 154:
  code = 0x10;
  break;

 case 151:
  code = 0x40;
  break;

 case 150:
  code = 0x20;
  break;

 case 153:
  code = 0x7f;
  break;

 case 152:
  code = 0x20;
  *offset += 0x20;
  break;

 default:
  code = FM_KG_SCH_GEN_HT_INVALID;
 }

 return (uint8_t)code;
}
