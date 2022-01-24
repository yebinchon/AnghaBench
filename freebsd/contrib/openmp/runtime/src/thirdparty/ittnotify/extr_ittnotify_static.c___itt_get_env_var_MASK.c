#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t DWORD ;

/* Variables and functions */
 size_t ERROR_ENVVAR_NOT_FOUND ; 
 size_t ERROR_SUCCESS ; 
 size_t FUNC0 (char const*,char*,size_t) ; 
 size_t FUNC1 () ; 
 int MAX_ENV_VALUE_SIZE ; 
 int /*<<< orphan*/  __itt_error_cant_read_env ; 
 int /*<<< orphan*/  __itt_error_env_too_long ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,size_t) ; 
 size_t FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t,...) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static const char* FUNC6(const char* name)
{
#define MAX_ENV_VALUE_SIZE 4086
    static char  env_buff[MAX_ENV_VALUE_SIZE];
    static char* env_value = (char*)env_buff;

    if (name != NULL)
    {
#if ITT_PLATFORM==ITT_PLATFORM_WIN
        size_t max_len = MAX_ENV_VALUE_SIZE - (size_t)(env_value - env_buff);
        DWORD rc = FUNC0(name, env_value, (DWORD)max_len);
        if (rc >= max_len)
            FUNC4(__itt_error_env_too_long, name, (size_t)rc - 1, (size_t)(max_len - 1));
        else if (rc > 0)
        {
            const char* ret = (const char*)env_value;
            env_value += rc + 1;
            return ret;
        }
        else
        {
            /* If environment variable is empty, GetEnvirornmentVariables()
             * returns zero (number of characters (not including terminating null),
             * and GetLastError() returns ERROR_SUCCESS. */
            DWORD err = FUNC1();
            if (err == ERROR_SUCCESS)
                return env_value;

            if (err != ERROR_ENVVAR_NOT_FOUND)
                FUNC4(__itt_error_cant_read_env, name, (int)err);
        }
#else  /* ITT_PLATFORM!=ITT_PLATFORM_WIN */
        char* env = getenv(name);
        if (env != NULL)
        {
            size_t len = __itt_fstrnlen(env, MAX_ENV_VALUE_SIZE);
            size_t max_len = MAX_ENV_VALUE_SIZE - (size_t)(env_value - env_buff);
            if (len < max_len)
            {
                const char* ret = (const char*)env_value;
                __itt_fstrcpyn(env_value, max_len, env, len + 1);
                env_value += len + 1;
                return ret;
            } else
                __itt_report_error(__itt_error_env_too_long, name, (size_t)len, (size_t)(max_len - 1));
        }
#endif /* ITT_PLATFORM==ITT_PLATFORM_WIN */
    }
    return NULL;
}