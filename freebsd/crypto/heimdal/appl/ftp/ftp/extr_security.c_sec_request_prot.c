
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protection_level { ____Placeholder_protection_level } protection_level ;


 int name_to_level (char*) ;
 int request_data_prot ;

int
sec_request_prot(char *level)
{
    int l = name_to_level(level);
    if(l == -1)
 return -1;
    request_data_prot = (enum protection_level)l;
    return 0;
}
