
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
comma_is_needed(const char *source)
{
    bool result = FALSE;

    if (source != 0) {
 size_t len = strlen(source);
 if (len != 0)
     result = (source[len - 1] != ',');
    } else {
 result = FALSE;
    }
    return result;
}
