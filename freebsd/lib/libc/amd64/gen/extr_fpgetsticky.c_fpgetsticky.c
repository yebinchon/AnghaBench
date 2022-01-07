
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;


 int __fpgetsticky () ;

fp_except_t fpgetsticky(void)
{
 return __fpgetsticky();
}
