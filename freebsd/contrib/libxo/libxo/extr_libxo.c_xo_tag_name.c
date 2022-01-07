
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
xo_tag_name (int ftype)
{
    switch (ftype) {
    case 'E': return "__error";
    case 'W': return "__warning";
    }

    return ((void*)0);
}
