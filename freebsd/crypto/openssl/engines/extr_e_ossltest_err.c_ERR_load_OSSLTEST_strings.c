
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_get_next_error_library () ;
 int ERR_load_strings (scalar_t__,int ) ;
 int OSSLTEST_str_functs ;
 int OSSLTEST_str_reasons ;
 int error_loaded ;
 scalar_t__ lib_code ;

__attribute__((used)) static int ERR_load_OSSLTEST_strings(void)
{
    if (lib_code == 0)
        lib_code = ERR_get_next_error_library();

    if (!error_loaded) {

        ERR_load_strings(lib_code, OSSLTEST_str_functs);
        ERR_load_strings(lib_code, OSSLTEST_str_reasons);

        error_loaded = 1;
    }
    return 1;
}
