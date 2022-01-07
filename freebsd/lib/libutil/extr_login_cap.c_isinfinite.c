
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
isinfinite(const char *s)
{
    static const char *infs[] = {
 "infinity",
 "inf",
 "unlimited",
 "unlimit",
 "-1",
 ((void*)0)
    };
    const char **i = &infs[0];

    while (*i != ((void*)0)) {
 if (strcasecmp(s, *i) == 0)
     return 1;
 ++i;
    }
    return 0;
}
