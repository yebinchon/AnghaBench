
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dprompt ;
 char* dprompt_pos ;

void
dprompt_clear(void)
{

 *dprompt = '\0';
 dprompt_pos = dprompt;
}
