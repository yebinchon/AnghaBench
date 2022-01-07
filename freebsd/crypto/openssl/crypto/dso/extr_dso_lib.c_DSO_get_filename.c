
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* filename; } ;
typedef TYPE_1__ DSO ;


 int DSO_F_DSO_GET_FILENAME ;
 int DSOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

const char *DSO_get_filename(DSO *dso)
{
    if (dso == ((void*)0)) {
        DSOerr(DSO_F_DSO_GET_FILENAME, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    return dso->filename;
}
