
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_err_e ;


 int pt_md_init () ;

__attribute__((used)) static td_err_e
pt_init(void)
{
 pt_md_init();
 return (0);
}
