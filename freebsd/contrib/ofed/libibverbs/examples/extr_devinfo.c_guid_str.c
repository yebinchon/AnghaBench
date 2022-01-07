
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int __be64 ;


 int be64toh (int ) ;
 int sprintf (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static const char *guid_str(__be64 _node_guid, char *str)
{
 uint64_t node_guid = be64toh(_node_guid);
 sprintf(str, "%04x:%04x:%04x:%04x",
  (unsigned) (node_guid >> 48) & 0xffff,
  (unsigned) (node_guid >> 32) & 0xffff,
  (unsigned) (node_guid >> 16) & 0xffff,
  (unsigned) (node_guid >> 0) & 0xffff);
 return str;
}
