
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ longVal; } ;
struct TYPE_7__ {char* pzName; int valType; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;


 TYPE_2__* AGALOC (size_t,char*) ;
 scalar_t__ IS_WHITESPACE_CHAR (char const) ;
 char NUL ;
 int OPARG_TYPE_NUMERIC ;
 int addArgListEntry (void**,TYPE_2__*) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strtol (char const*,int ,int ) ;

__attribute__((used)) static tOptionValue *
add_number(void ** pp, char const * name, size_t nm_len,
           char const * val, size_t d_len)
{
    size_t sz = nm_len + sizeof(tOptionValue) + 1;
    tOptionValue * new_val = AGALOC(sz, "int val");




    while (IS_WHITESPACE_CHAR(*val) && (d_len > 0)) {
        d_len--; val++;
    }
    if (d_len == 0)
        new_val->v.longVal = 0;
    else
        new_val->v.longVal = strtol(val, 0, 0);

    new_val->valType = OPARG_TYPE_NUMERIC;
    new_val->pzName = (char *)(new_val + 1);
    memcpy(new_val->pzName, name, nm_len);
    new_val->pzName[ nm_len ] = NUL;
    addArgListEntry(pp, new_val);
    return new_val;
}
