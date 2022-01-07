
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LastChar ;
 int c_substitute () ;

int
ExpandHistory(void)
{
    *LastChar = '\0';
    return c_substitute();
}
