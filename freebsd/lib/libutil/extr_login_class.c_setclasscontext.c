
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 unsigned int LOGIN_SETPATH ;
 unsigned int LOGIN_SETPRIORITY ;
 unsigned int LOGIN_SETRESOURCES ;
 unsigned int LOGIN_SETUMASK ;
 int login_close (int *) ;
 int * login_getclassbyname (char const*,int *) ;
 int setusercontext (int *,int *,int ,unsigned int) ;

int
setclasscontext(const char *classname, unsigned int flags)
{
    int rc;
    login_cap_t *lc;

    lc = login_getclassbyname(classname, ((void*)0));

    flags &= LOGIN_SETRESOURCES | LOGIN_SETPRIORITY |
     LOGIN_SETUMASK | LOGIN_SETPATH;

    rc = lc ? setusercontext(lc, ((void*)0), 0, flags) : -1;
    login_close(lc);
    return (rc);
}
