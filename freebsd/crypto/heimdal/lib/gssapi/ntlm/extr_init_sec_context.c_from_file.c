
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int ENOENT ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int heim_ntlm_nt_key (char*,struct ntlm_buf*) ;
 int memset (char*,int ,int) ;
 int rk_cloexec_file (int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 size_t strcspn (char*,char*) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int
from_file(const char *fn, const char *target_domain,
   char **username, struct ntlm_buf *key)
{
    char *str, buf[1024];
    FILE *f;

    f = fopen(fn, "r");
    if (f == ((void*)0))
 return ENOENT;
    rk_cloexec_file(f);

    while (fgets(buf, sizeof(buf), f) != ((void*)0)) {
 char *d, *u, *p;
 buf[strcspn(buf, "\r\n")] = '\0';
 if (buf[0] == '#')
     continue;
 str = ((void*)0);
 d = strtok_r(buf, ":", &str);
 if (d && strcasecmp(target_domain, d) != 0)
     continue;
 u = strtok_r(((void*)0), ":", &str);
 p = strtok_r(((void*)0), ":", &str);
 if (u == ((void*)0) || p == ((void*)0))
     continue;

 *username = strdup(u);

 heim_ntlm_nt_key(p, key);

 memset(buf, 0, sizeof(buf));
 fclose(f);
 return 0;
    }
    memset(buf, 0, sizeof(buf));
    fclose(f);
    return ENOENT;
}
