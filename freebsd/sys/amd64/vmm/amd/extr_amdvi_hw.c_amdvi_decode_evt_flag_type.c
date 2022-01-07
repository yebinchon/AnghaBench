
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMDVI_EVENT_FLAG_TYPE (int ) ;
 int printf (char*) ;

__attribute__((used)) static inline void
amdvi_decode_evt_flag_type(uint8_t type)
{

 switch (AMDVI_EVENT_FLAG_TYPE(type)) {
 case 0:
  printf("RSVD\n");
  break;
 case 1:
  printf("Master Abort\n");
  break;
 case 2:
  printf("Target Abort\n");
  break;
 case 3:
  printf("Data Err\n");
  break;
 default:
  break;
 }
}
