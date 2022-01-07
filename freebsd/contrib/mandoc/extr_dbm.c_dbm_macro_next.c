
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACRO_MAX ;
 char* macro_bypage (int ,int ) ;

char *
dbm_macro_next(void)
{
 return macro_bypage(MACRO_MAX, 0);
}
