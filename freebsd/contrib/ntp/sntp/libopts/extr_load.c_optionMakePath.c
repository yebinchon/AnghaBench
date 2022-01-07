
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_env_val (char*,int,char const*) ;
 int add_prog_path (char*,int,char const*,char const*) ;
 int get_realpath (char*,int) ;
 int const* program_pkgdatadir ;
 int snprintf (char*,size_t,char*,int const*,char const*) ;
 size_t strlen (char const*) ;

bool
optionMakePath(char * p_buf, int b_sz, char const * fname, char const * prg_path)
{
    {
        size_t len = strlen(fname);

        if (((size_t)b_sz <= len) || (len == 0))
            return 0;
    }




    if (*fname != '$') {
        char const * src = fname;
        char * dst = p_buf;
        int ct = b_sz;

        for (;;) {
            if ( (*(dst++) = *(src++)) == 128)
                break;
            if (--ct <= 0)
                return 0;
        }
    }






    else switch (fname[1]) {
    case 128:
        return 0;

    case '$':
        if (! add_prog_path(p_buf, b_sz, fname, prg_path))
            return 0;
        break;

    case '@':
        if (program_pkgdatadir[0] == 128)
            return 0;

        if (snprintf(p_buf, (size_t)b_sz, "%s%s",
                     program_pkgdatadir, fname + 2) >= b_sz)
            return 0;
        break;

    default:
        if (! add_env_val(p_buf, b_sz, fname))
            return 0;
    }

    return get_realpath(p_buf, b_sz);
}
