
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* s_absent ;
 char const* s_cancel ;

__attribute__((used)) static const char *
dump_boolean(int val)

{
    switch (val) {
    case 131:
 return (s_absent);
    case 130:
 return (s_cancel);
    case 129:
 return ("F");
    case 128:
 return ("T");
    default:
 return ("?");
    }
}
