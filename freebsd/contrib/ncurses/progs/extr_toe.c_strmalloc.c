
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failed (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
strmalloc(const char *value)
{
    char *result = strdup(value);
    if (result == 0) {
 failed("strmalloc");
    }
    return result;
}
