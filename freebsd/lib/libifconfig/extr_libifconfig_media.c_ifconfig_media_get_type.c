
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia_description {char const* ifmt_string; } ;


 struct ifmedia_description* get_toptype_desc (int) ;

const char *
ifconfig_media_get_type(int ifmw)
{
 struct ifmedia_description *desc;




 desc = get_toptype_desc(ifmw);
 if (desc->ifmt_string == ((void*)0)) {
  return ("<unknown type>");
 } else {
  return (desc->ifmt_string);
 }
}
