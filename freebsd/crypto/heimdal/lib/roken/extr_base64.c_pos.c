
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* base64_chars ;

__attribute__((used)) static int
pos(char c)
{
    const char *p;
    for (p = base64_chars; *p; p++)
 if (*p == c)
     return p - base64_chars;
    return -1;
}
