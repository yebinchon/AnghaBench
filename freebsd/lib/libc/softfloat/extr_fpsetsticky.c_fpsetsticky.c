
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except ;


 int float_exception_flags ;

fp_except
fpsetsticky(fp_except except)
{
 fp_except old;

 old = float_exception_flags;
 float_exception_flags = except;
 return old;
}
