
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int opt_block_list ;

extern void
args_free(void)
{
 free(opt_block_list);
 return;
}
