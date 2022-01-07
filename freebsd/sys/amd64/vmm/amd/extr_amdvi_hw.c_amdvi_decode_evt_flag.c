
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int AMDVI_EVENT_FLAG_MASK ;
 int printf (char*,int ,char*) ;

__attribute__((used)) static inline void
amdvi_decode_evt_flag(uint16_t flag)
{

 flag &= AMDVI_EVENT_FLAG_MASK;
 printf(" 0x%b]\n", flag,
  "\020"
  "\001GN"
  "\002NX"
  "\003US"
  "\004I"
  "\005PR"
  "\006RW"
  "\007PE"
  "\010RZ"
  "\011TR"
  );
}
