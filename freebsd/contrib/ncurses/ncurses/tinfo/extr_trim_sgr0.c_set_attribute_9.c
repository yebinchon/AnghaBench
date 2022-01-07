
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 scalar_t__ PRESENT (char const*) ;
 int set_attributes ;
 char* strdup (char const*) ;
 char* tparm (int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static char *
set_attribute_9(TERMTYPE *tp, int flag)
{
    const char *value;
    char *result;

    value = tparm(set_attributes, 0, 0, 0, 0, 0, 0, 0, 0, flag);
    if (PRESENT(value))
 result = strdup(value);
    else
 result = 0;
    return result;
}
