
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t nd_uint8_t ;


 char const** netdb_protocol_names ;

const char *
netdb_protoname (const nd_uint8_t protoid)
{
 return netdb_protocol_names[protoid];
}
