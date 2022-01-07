
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
state_name(unsigned s)
{
 switch (s) {
 case 128: return ("new");
 case 129: return ("header");
 case 132: return ("data");
 case 131: return ("eof");
 case 133: return ("closed");
 case 130: return ("fatal");
 default: return ("??");
 }
}
