
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CERASE ;
 int* key_backspace ;
 scalar_t__ over_strike ;
 int strlen (int*) ;

__attribute__((used)) static int
default_erase(void)
{
    int result;

    if (over_strike
 && key_backspace != 0
 && strlen(key_backspace) == 1)
 result = key_backspace[0];
    else
 result = CERASE;

    return result;
}
