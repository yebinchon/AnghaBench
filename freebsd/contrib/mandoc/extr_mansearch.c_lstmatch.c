
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strcasestr (char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
lstmatch(const char *want, const char *have)
{
        if (want == ((void*)0) || have == ((void*)0) || *have == '\0')
                return 1;
        while (*have != '\0') {
                if (strcasestr(have, want) != ((void*)0))
                        return 1;
                have = strchr(have, '\0') + 1;
        }
        return 0;
}
