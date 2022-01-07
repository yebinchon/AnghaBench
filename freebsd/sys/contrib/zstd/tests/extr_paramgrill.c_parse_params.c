
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;


 size_t NUM_PARAMS ;
 int * g_paramNames ;
 int * g_shortParamNames ;
 scalar_t__ longCommandWArg (char const**,int ) ;
 int readU32FromChar (char const**) ;

__attribute__((used)) static int parse_params(const char** argptr, paramValues_t* pv) {
    int matched = 0;
    const char* argOrig = *argptr;
    varInds_t v;
    for(v = 0; v < NUM_PARAMS; v++) {
        if ( longCommandWArg(argptr,g_shortParamNames[v])
          || longCommandWArg(argptr, g_paramNames[v]) ) {
            if(**argptr == '=') {
                (*argptr)++;
                pv->vals[v] = readU32FromChar(argptr);
                matched = 1;
                break;
            }
        }

        *argptr = argOrig;
    }
    return matched;
}
