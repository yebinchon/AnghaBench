
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_FACMASK ;
 int LOG_NDELAY ;
 int xo_connect_log () ;
 int xo_logfacility ;
 int xo_logstat ;
 char const* xo_logtag ;
 int xo_opened ;

__attribute__((used)) static void
xo_open_log_unlocked (const char *ident, int logstat, int logfac)
{
    if (ident != ((void*)0))
        xo_logtag = ident;
    xo_logstat = logstat;
    if (logfac != 0 && (logfac &~ LOG_FACMASK) == 0)
        xo_logfacility = logfac;

    if (xo_logstat & LOG_NDELAY)
        xo_connect_log();

    xo_opened = 1;
}
