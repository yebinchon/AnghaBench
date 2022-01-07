
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sec_num_to_name(int flavor)
{
 switch (flavor) {
 case 130:
  return ("krb5");
 case 129:
  return ("krb5i");
 case 128:
  return ("krb5p");
 case 131:
  return ("sys");
 }
 return (((void*)0));
}
