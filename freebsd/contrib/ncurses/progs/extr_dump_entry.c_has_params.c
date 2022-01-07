
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool
has_params(const char *src)
{
    bool result = FALSE;
    int len = (int) strlen(src);
    int n;
    bool ifthen = FALSE;
    bool params = FALSE;

    for (n = 0; n < len - 1; ++n) {
 if (!strncmp(src + n, "%p", (size_t) 2)) {
     params = TRUE;
 } else if (!strncmp(src + n, "%;", (size_t) 2)) {
     ifthen = TRUE;
     result = params;
     break;
 }
    }
    if (!ifthen) {
 result = ((len > 50) && params);
    }
    return result;
}
