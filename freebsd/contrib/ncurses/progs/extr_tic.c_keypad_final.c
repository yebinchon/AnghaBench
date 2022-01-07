
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VALID_STRING (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char
keypad_final(const char *string)
{
    char result = '\0';

    if (VALID_STRING(string)
 && *string++ == '\033'
 && *string++ == 'O'
 && strlen(string) == 1) {
 result = *string;
    }

    return result;
}
