
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_enctype ;
__attribute__((used)) static int
older_enctype(krb5_enctype enctype)
{
    switch (enctype) {
    case 130:
    case 129:
    case 128:
    case 131:
    case 136:
    case 135:




    case 132:
    case 134:
    case 133:
 return 1;
    default:
 return 0;
    }
}
