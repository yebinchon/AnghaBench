
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_PUT_error (scalar_t__,int,int,char*,int) ;
 scalar_t__ ERR_get_next_error_library () ;
 scalar_t__ lib_code ;

__attribute__((used)) static void ERR_AFALG_error(int function, int reason, char *file, int line)
{
    if (lib_code == 0)
        lib_code = ERR_get_next_error_library();
    ERR_PUT_error(lib_code, function, reason, file, line);
}
