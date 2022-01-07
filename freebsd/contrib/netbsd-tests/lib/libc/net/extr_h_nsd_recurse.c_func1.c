
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int * member_2; int * member_1; } ;
typedef TYPE_1__ ns_dtab ;



 int nsdispatch (int *,TYPE_1__ const*,char*,char*,int ) ;
 int printf (char*) ;
 int testsrc ;

__attribute__((used)) static int
func1(void)
{
 static const ns_dtab dtab[] = {
  { "test", 128, ((void*)0) },
  { ((void*)0), ((void*)0), ((void*)0) }
 };
 int r;

 (void)printf("func1: enter\n");
 r = nsdispatch(((void*)0), dtab, "test", "test", testsrc);
 (void)printf("func1: exit\n");

 return r;
}
