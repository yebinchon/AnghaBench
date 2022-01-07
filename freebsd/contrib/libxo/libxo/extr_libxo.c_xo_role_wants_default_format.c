
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
xo_role_wants_default_format (int ftype)
{
    switch (ftype) {

    case 'C':
    case 'G':
    case '[':
    case ']':
 return 0;
    }

    return 1;
}
