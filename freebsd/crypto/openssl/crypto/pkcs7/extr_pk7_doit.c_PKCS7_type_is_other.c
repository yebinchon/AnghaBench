
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ PKCS7 ;
 int OBJ_obj2nid (int ) ;

__attribute__((used)) static int PKCS7_type_is_other(PKCS7 *p7)
{
    int isOther = 1;

    int nid = OBJ_obj2nid(p7->type);

    switch (nid) {
    case 133:
    case 129:
    case 130:
    case 128:
    case 132:
    case 131:
        isOther = 0;
        break;
    default:
        isOther = 1;
    }

    return isOther;

}
