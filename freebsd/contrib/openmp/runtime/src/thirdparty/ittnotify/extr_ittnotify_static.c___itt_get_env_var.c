
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t DWORD ;


 size_t ERROR_ENVVAR_NOT_FOUND ;
 size_t ERROR_SUCCESS ;
 size_t GetEnvironmentVariableA (char const*,char*,size_t) ;
 size_t GetLastError () ;
 int MAX_ENV_VALUE_SIZE ;
 int __itt_error_cant_read_env ;
 int __itt_error_env_too_long ;
 int __itt_fstrcpyn (char*,size_t,char*,size_t) ;
 size_t __itt_fstrnlen (char*,int) ;
 int __itt_report_error (int ,char const*,size_t,...) ;
 char* getenv (char const*) ;

__attribute__((used)) static const char* __itt_get_env_var(const char* name)
{

    static char env_buff[4086];
    static char* env_value = (char*)env_buff;

    if (name != ((void*)0))
    {

        size_t max_len = 4086 - (size_t)(env_value - env_buff);
        DWORD rc = GetEnvironmentVariableA(name, env_value, (DWORD)max_len);
        if (rc >= max_len)
            __itt_report_error(__itt_error_env_too_long, name, (size_t)rc - 1, (size_t)(max_len - 1));
        else if (rc > 0)
        {
            const char* ret = (const char*)env_value;
            env_value += rc + 1;
            return ret;
        }
        else
        {



            DWORD err = GetLastError();
            if (err == ERROR_SUCCESS)
                return env_value;

            if (err != ERROR_ENVVAR_NOT_FOUND)
                __itt_report_error(__itt_error_cant_read_env, name, (int)err);
        }
    }
    return ((void*)0);
}
