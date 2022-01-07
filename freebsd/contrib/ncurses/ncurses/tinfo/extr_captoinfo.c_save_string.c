
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_NO_MEMORY ;
 int _nc_STRCPY (char*,char const* const,size_t) ;
 scalar_t__ _nc_doalloc (char*,size_t) ;
 int _nc_err_abort (int ) ;
 size_t my_length ;
 char* my_string ;
 size_t strlen (char const* const) ;

__attribute__((used)) static char *
save_string(char *d, const char *const s)
{
    size_t have = (size_t) (d - my_string);
    size_t need = have + strlen(s) + 2;
    if (need > my_length) {
 my_string = (char *) _nc_doalloc(my_string, my_length = (need + need));
 if (my_string == 0)
     _nc_err_abort(MSG_NO_MEMORY);
 d = my_string + have;
    }
    _nc_STRCPY(d, s, my_length - have);
    return d + strlen(d);
}
