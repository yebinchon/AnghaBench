
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; } ;
typedef int Strbuf ;


 int Strbuf_append (int*,int ) ;
 int USE (int*) ;
 int disabled_cleanup (int *) ;
 int fix_yp_bugs () ;
 struct passwd* getpwent () ;
 int pintr_disabled ;
 int str2short (int ) ;

int
tw_logname_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct passwd *pw;







    USE(flags);
    USE(dir);
    pintr_disabled++;



    pw = ((void*)0);

    disabled_cleanup(&pintr_disabled);

    if (pw == ((void*)0)) {



 return 0;
    }
    Strbuf_append(res, str2short(pw->pw_name));
    return 1;
}
