
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_check ;


 int check ;
 int check_default ;

extern void
coder_set_check(lzma_check new_check)
{
 check = new_check;
 check_default = 0;
 return;
}
