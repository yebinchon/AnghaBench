
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_MAD_METHOD_GET ;
 int IB_MAD_METHOD_SET ;
 int IB_MAD_METHOD_TRAP ;

__attribute__((used)) static inline int response_expected(int method)
{
 return method == IB_MAD_METHOD_GET ||
     method == IB_MAD_METHOD_SET || method == IB_MAD_METHOD_TRAP;
}
