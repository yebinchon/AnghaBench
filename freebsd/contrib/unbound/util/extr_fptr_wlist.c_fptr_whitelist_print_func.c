
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void config_collate_func (char*,void*) ;
 void config_print_func (char*,void*) ;
 void remote_get_opt_ssl (char*,void*) ;

int fptr_whitelist_print_func(void (*fptr)(char*,void*))
{
 if(fptr == &config_print_func) return 1;
 else if(fptr == &config_collate_func) return 1;
 else if(fptr == &remote_get_opt_ssl) return 1;
 return 0;
}
