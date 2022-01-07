
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int MODE_ACTIVE ;
 int MODE_BROADCAST ;
 int MODE_CLIENT ;






__attribute__((used)) static u_char
get_correct_host_mode(
 int token
 )
{
 switch (token) {

 case 128:
 case 129:
 case 131:
  return MODE_CLIENT;

 case 130:
  return MODE_ACTIVE;

 case 132:
  return MODE_BROADCAST;

 default:
  return 0;
 }
}
