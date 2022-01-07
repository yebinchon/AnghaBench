
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
sshkey_type_is_valid_ca(int type)
{
 switch (type) {
 case 129:
 case 132:
 case 131:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
