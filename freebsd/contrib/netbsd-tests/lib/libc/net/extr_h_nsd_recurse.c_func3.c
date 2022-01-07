
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int NS_SUCCESS ;
 int printf (char*) ;

__attribute__((used)) static int
func3(void *rv, void *cb_data, va_list ap)
{
 (void)printf("func3: enter\n");
 (void)printf("func3: exit\n");

 return NS_SUCCESS;
}
