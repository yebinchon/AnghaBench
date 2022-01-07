
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valtype; } ;
typedef TYPE_1__ OPTIONS ;



__attribute__((used)) static const char *valtype2param(const OPTIONS *o)
{
    switch (o->valtype) {
    case 0:
    case '-':
        return "";
    case 's':
        return "val";
    case '/':
        return "dir";
    case '<':
        return "infile";
    case '>':
        return "outfile";
    case 'p':
        return "+int";
    case 'n':
        return "int";
    case 'l':
        return "long";
    case 'u':
        return "ulong";
    case 'E':
        return "PEM|DER|ENGINE";
    case 'F':
        return "PEM|DER";
    case 'f':
        return "format";
    case 'M':
        return "intmax";
    case 'U':
        return "uintmax";
    }
    return "parm";
}
