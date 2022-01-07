
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * nestVal; } ;
struct TYPE_8__ {char* pzName; int valType; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;


 TYPE_2__* AGALOC (size_t,char*) ;
 char NUL ;
 int OPARG_TYPE_HIERARCHY ;
 int addArgListEntry (void**,TYPE_2__*) ;
 int memcpy (char*,char const*,size_t) ;
 TYPE_2__* optionLoadNested (char*,char const*,size_t) ;

__attribute__((used)) static tOptionValue *
add_nested(void ** pp, char const * name, size_t nm_len,
           char * val, size_t d_len)
{
    tOptionValue * new_val;

    if (d_len == 0) {
        size_t sz = nm_len + sizeof(*new_val) + 1;
        new_val = AGALOC(sz, "empty nest");
        new_val->v.nestVal = ((void*)0);
        new_val->valType = OPARG_TYPE_HIERARCHY;
        new_val->pzName = (char *)(new_val + 1);
        memcpy(new_val->pzName, name, nm_len);
        new_val->pzName[ nm_len ] = NUL;

    } else {
        new_val = optionLoadNested(val, name, nm_len);
    }

    if (new_val != ((void*)0))
        addArgListEntry(pp, new_val);

    return new_val;
}
