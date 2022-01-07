
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_name; } ;
typedef int Strbuf ;


 scalar_t__ EINTR ;
 int Strbuf_append (int*,int ) ;
 int USE (int*) ;
 int disabled_cleanup (int *) ;
 scalar_t__ errno ;
 int fix_yp_bugs () ;
 struct group* getgrent () ;
 int handle_pending_signals () ;
 int pintr_disabled ;
 int str2short (int ) ;

int
tw_grpname_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct group *gr;







    USE(flags);
    USE(dir);
    pintr_disabled++;

    errno = 0;
    while ((gr = getgrent()) == ((void*)0) && errno == EINTR) {
 handle_pending_signals();
 errno = 0;
    }



    disabled_cleanup(&pintr_disabled);

    if (gr == ((void*)0)) {



 return 0;
    }
    Strbuf_append(res, str2short(gr->gr_name));
    return 1;
}
