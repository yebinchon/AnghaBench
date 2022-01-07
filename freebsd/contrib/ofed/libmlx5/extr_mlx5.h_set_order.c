
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int set_arg (int,int *) ;

__attribute__((used)) static inline void set_order(int order, off_t *offset)
{
 set_arg(order, offset);
}
