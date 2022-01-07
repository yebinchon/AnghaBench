
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_OC_ADD (int ) ;
 int digit ;
 int letter ;
 int lower ;
 int lws ;
 int p ;
 int pfcs ;
 int upper ;
 int ws ;
 int xdigit ;

__attribute__((used)) static int
t_prepare(int argc, char *argv[])
{

 (void)argc;
 (void)argv;
 T_OC_ADD(digit);
 T_OC_ADD(xdigit);
 T_OC_ADD(upper);
 T_OC_ADD(lower);
 T_OC_ADD(letter);
 T_OC_ADD(lws);
 T_OC_ADD(ws);
 T_OC_ADD(p);
 T_OC_ADD(pfcs);
 return (0);
}
