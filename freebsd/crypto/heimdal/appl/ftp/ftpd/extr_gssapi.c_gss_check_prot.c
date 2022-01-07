
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prot_confidential ;

__attribute__((used)) static int
gss_check_prot(void *app_data, int level)
{
    if(level == prot_confidential)
 return -1;
    return 0;
}
