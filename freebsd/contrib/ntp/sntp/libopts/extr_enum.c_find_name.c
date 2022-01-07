
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 scalar_t__ IS_DEC_DIGIT_CHAR (char const) ;
 scalar_t__ IS_INVERSION_CHAR (char const) ;
 char NUL ;
 int enum_err (int *,int *,char const* const*,int) ;
 int option_usage_fp ;
 int pz_enum_err_fmt ;
 int stderr ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const* const,char const*,size_t) ;
 unsigned long strtoul (char const*,char**,int ) ;
 int zNoKey ;
 int zambiguous_key ;
 int znum_too_large ;

__attribute__((used)) static uintptr_t
find_name(char const * name, tOptions * pOpts, tOptDesc * pOD,
          char const * const * paz_names, unsigned int name_ct)
{




    uintptr_t res = name_ct;
    size_t len = strlen(name);
    uintptr_t idx;

    if (IS_DEC_DIGIT_CHAR(*name)) {
        char * pz;
        unsigned long val = strtoul(name, &pz, 0);
        if ((*pz == NUL) && (val < name_ct))
            return (uintptr_t)val;
        pz_enum_err_fmt = znum_too_large;
        option_usage_fp = stderr;
        enum_err(pOpts, pOD, paz_names, (int)name_ct);
        return name_ct;
    }

    if (IS_INVERSION_CHAR(*name) && (name[2] == NUL)) {
        if ( ((name[0] == '~') && (name[1] == '0'))
           || ((name[0] == '-') && (name[1] == '1')))
        return (uintptr_t)(name_ct - 1);
        goto oops;
    }





    for (idx = 0; idx < name_ct; idx++) {
        if (strncmp(paz_names[idx], name, len) == 0) {
            if (paz_names[idx][len] == NUL)
                return idx;

            if (res == name_ct)
                res = idx;
            else
                res = (uintptr_t)~0;
        }
    }

    if (res < name_ct)
        return res;

 oops:

    pz_enum_err_fmt = (res == name_ct) ? zNoKey : zambiguous_key;
    option_usage_fp = stderr;
    enum_err(pOpts, pOD, paz_names, (int)name_ct);
    return name_ct;
}
