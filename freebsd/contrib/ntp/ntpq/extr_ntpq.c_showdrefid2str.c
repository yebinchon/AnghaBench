
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drefid ;

__attribute__((used)) static const char *
showdrefid2str(void)
{
 switch (drefid) {
     case 129:
      return "hash";
     case 128:
      return "ipv4";
     default:
      return "Unknown";
 }
}
