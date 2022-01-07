
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
xo_class_name (int ftype)
{
    switch (ftype) {
    case 'D': return "decoration";
    case 'E': return "error";
    case 'L': return "label";
    case 'N': return "note";
    case 'P': return "padding";
    case 'W': return "warning";
    }

    return ((void*)0);
}
