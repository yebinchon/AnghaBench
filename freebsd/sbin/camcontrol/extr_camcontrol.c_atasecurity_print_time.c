
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
atasecurity_print_time(u_int16_t tw)
{

 if (tw == 0)
  printf("unspecified");
 else if (tw >= 255)
  printf("> 508 min");
 else
  printf("%i min", 2 * tw);
}
