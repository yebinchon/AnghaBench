
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int dh6opt_stcode_str ;
 char const* tok2str (int ,char*,int const) ;

__attribute__((used)) static const char *
dhcp6stcode(const uint16_t code)
{
 return code > 255 ? "INVALID code" : tok2str(dh6opt_stcode_str, "code%u", code);
}
