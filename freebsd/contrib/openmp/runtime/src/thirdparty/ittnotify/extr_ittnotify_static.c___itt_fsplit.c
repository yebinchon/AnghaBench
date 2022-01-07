
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* __itt_fsplit(const char* s, const char* sep, const char** out, int* len)
{
    int i;
    int j;

    if (!s || !sep || !out || !len)
        return ((void*)0);

    for (i = 0; s[i]; i++)
    {
        int b = 0;
        for (j = 0; sep[j]; j++)
            if (s[i] == sep[j])
            {
                b = 1;
                break;
            }
        if (!b)
            break;
    }

    if (!s[i])
        return ((void*)0);

    *len = 0;
    *out = &s[i];

    for (; s[i]; i++, (*len)++)
    {
        int b = 0;
        for (j = 0; sep[j]; j++)
            if (s[i] == sep[j])
            {
                b = 1;
                break;
            }
        if (b)
            break;
    }

    for (; s[i]; i++)
    {
        int b = 0;
        for (j = 0; sep[j]; j++)
            if (s[i] == sep[j])
            {
                b = 1;
                break;
            }
        if (!b)
            break;
    }

    return &s[i];
}
