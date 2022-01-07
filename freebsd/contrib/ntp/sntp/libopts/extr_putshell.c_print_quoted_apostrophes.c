
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const APOSTROPHE ;
 int QUOT_APOS ;
 int fputs (int ,int ) ;
 int stdout ;

__attribute__((used)) static char const *
print_quoted_apostrophes(char const * str)
{
    while (*str == APOSTROPHE) {
        fputs(QUOT_APOS, stdout);
        str++;
    }
    return str;
}
