
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char) ;
 scalar_t__ isdigit (int ) ;
 scalar_t__ isspace (int ) ;
 scalar_t__ strchr (char*,int ) ;

__attribute__((used)) static char *
skip_list(char *value)
{
    while (*value != '\0' &&
    (isdigit(UChar(*value)) ||
     isspace(UChar(*value)) ||
     strchr("+,", UChar(*value)) != 0)) {
 ++value;
    }
    return value;
}
