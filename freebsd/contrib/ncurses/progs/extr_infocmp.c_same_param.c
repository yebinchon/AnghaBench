
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int UChar (char const) ;
 int isdigit (int ) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool
same_param(const char *table, const char *param, size_t length)
{
    bool result = FALSE;
    if (strncmp(table, param, length) == 0) {
 result = !isdigit(UChar(param[length]));
    }
    return result;
}
