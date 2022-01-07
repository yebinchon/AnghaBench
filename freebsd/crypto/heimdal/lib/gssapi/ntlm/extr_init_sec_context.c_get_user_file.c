
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ntlm_buf {int dummy; } ;
typedef TYPE_1__* ntlm_name ;
struct TYPE_3__ {int domain; } ;


 int ENOENT ;
 scalar_t__ from_file (char const*,int ,char**,struct ntlm_buf*) ;
 char* getenv (char*) ;
 scalar_t__ issuid () ;

__attribute__((used)) static int
get_user_file(const ntlm_name target_name,
       char **username, struct ntlm_buf *key)
{
    const char *fn;

    if (issuid())
 return ENOENT;

    fn = getenv("NTLM_USER_FILE");
    if (fn == ((void*)0))
 return ENOENT;
    if (from_file(fn, target_name->domain, username, key) == 0)
 return 0;

    return ENOENT;
}
