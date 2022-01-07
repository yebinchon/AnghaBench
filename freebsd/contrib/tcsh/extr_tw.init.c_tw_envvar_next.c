
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Strbuf ;
typedef char Char ;


 int Strbuf_appendn (int*,char const*,int) ;
 int USE (int*) ;
 char const** tw_env ;

int
tw_envvar_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    const Char *ps;

    USE(flags);
    USE(dir);
    if (tw_env == ((void*)0) || *tw_env == ((void*)0))
 return 0;
    for (ps = *tw_env; *ps && *ps != '='; ps++)
 continue;
    Strbuf_appendn(res, *tw_env, ps - *tw_env);
    tw_env++;
    return 1;
}
