
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isIncluded(const void* in, const void* container, size_t length)
{
    const char* const ip = (const char*) in;
    const char* const into = (const char*) container;
    size_t u;

    for (u=0; u<length; u++) {
        if (ip[u] != into[u]) break;
    }

    return u==length;
}
