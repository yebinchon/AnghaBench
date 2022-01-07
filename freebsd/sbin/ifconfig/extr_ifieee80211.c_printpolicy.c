
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
printpolicy(int policy)
{
 switch (policy) {
 case 129:
  printf("policy: open\n");
  break;
 case 131:
  printf("policy: allow\n");
  break;
 case 130:
  printf("policy: deny\n");
  break;
 case 128:
  printf("policy: radius\n");
  break;
 default:
  printf("policy: unknown (%u)\n", policy);
  break;
 }
}
