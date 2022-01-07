
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interpos_func_t ;


 int * __libc_interposing ;

interpos_func_t *
__libc_interposing_slot(int interposno)
{

 return (&__libc_interposing[interposno]);
}
