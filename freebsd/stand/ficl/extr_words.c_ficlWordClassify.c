
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORDKIND ;
struct TYPE_3__ {scalar_t__ code; } ;
typedef TYPE_1__ FICL_WORD ;
typedef scalar_t__ FICL_CODE ;
 int PRIMITIVE ;
 int nMAP ;







WORDKIND ficlWordClassify(FICL_WORD *pFW)
{
    typedef struct
    {
        WORDKIND kind;
        FICL_CODE code;
    } CODEtoKIND;

    static CODEtoKIND codeMap[] =
    {
        {159, 142},
        {158, 141},
        {157, 140},
        {156, 139},
        {154, 136},
        {153, 137},
        {152, 143},
        {151, 135},
        {150, 134},
        {149, 133},
        {148, 132},
        {147, 131},
        {155, 138},
        {146, 130},



        {144, 128},
    };



    FICL_CODE code = pFW->code;
    int i;

    for (i=0; i < (sizeof(codeMap) / sizeof(CODEtoKIND)); i++)
    {
        if (codeMap[i].code == code)
            return codeMap[i].kind;
    }

    return PRIMITIVE;
}
