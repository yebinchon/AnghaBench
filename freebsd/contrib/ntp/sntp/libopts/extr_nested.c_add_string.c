
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* strVal; } ;
struct TYPE_7__ {int* pzName; TYPE_1__ v; int valType; } ;
typedef TYPE_2__ tOptionValue ;


 TYPE_2__* AGALOC (size_t,char*) ;
 int NUL ;
 int OPARG_TYPE_NONE ;
 int OPARG_TYPE_STRING ;
 int addArgListEntry (void**,TYPE_2__*) ;
 int get_special_char (char const**,int*) ;
 int memcpy (int*,char const*,size_t) ;

__attribute__((used)) static tOptionValue *
add_string(void ** pp, char const * name, size_t nm_len,
           char const * val, size_t d_len)
{
    tOptionValue * pNV;
    size_t sz = nm_len + d_len + sizeof(*pNV);

    pNV = AGALOC(sz, "option name/str value pair");

    if (val == ((void*)0)) {
        pNV->valType = OPARG_TYPE_NONE;
        pNV->pzName = pNV->v.strVal;

    } else {
        pNV->valType = OPARG_TYPE_STRING;
        if (d_len > 0) {
            char const * src = val;
            char * pzDst = pNV->v.strVal;
            int ct = (int)d_len;
            do {
                int ch = *(src++) & 0xFF;
                if (ch == NUL) goto data_copy_done;
                if (ch == '&')
                    ch = get_special_char(&src, &ct);
                *(pzDst++) = (char)ch;
            } while (--ct > 0);
        data_copy_done:
            *pzDst = NUL;

        } else {
            pNV->v.strVal[0] = NUL;
        }

        pNV->pzName = pNV->v.strVal + d_len + 1;
    }

    memcpy(pNV->pzName, name, nm_len);
    pNV->pzName[ nm_len ] = NUL;
    addArgListEntry(pp, pNV);
    return pNV;
}
