
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmnerr_t ;







const char *jsmn_strerror(jsmnerr_t err)
{
 switch (err) {
 case 130:
  return "No enough tokens";
 case 131:
  return "Invalid character inside JSON string";
 case 129:
  return "The string is not a full JSON packet, more bytes expected";
 case 128:
  return "Success";
 default:
  return "Unknown json error";
 }
}
