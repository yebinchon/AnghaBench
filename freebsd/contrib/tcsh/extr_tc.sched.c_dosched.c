
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct tm {int tm_hour; int tm_min; void* tm_sec; } ;
struct sched_event {scalar_t__ t_when; int t_lex; struct sched_event* t_next; } ;
struct command {int dummy; } ;
typedef char Char ;


 char* CGETS (int,int,char*) ;
 int ERR_NOSCHED ;
 int ERR_SCHEDCOM ;
 int ERR_SCHEDEV ;
 int ERR_SCHEDREL ;
 int ERR_SCHEDTIME ;
 int ERR_SCHEDUSAGE ;
 int FMT_SCHED ;
 int Isdigit (char) ;
 char const* STRNULL ;
 int STRsched ;
 int USE (struct command*) ;
 int atoi (int ) ;
 char* blkexpand (int ) ;
 int blkfree (int ) ;
 int cleanup_push (char*,int (*) (struct sched_event*)) ;
 int cleanup_until (char*) ;
 struct tm* localtime (void**) ;
 int saveblk (char**) ;
 struct sched_event* sched_ptr ;
 int short2str (char*) ;
 int stderror (int ) ;
 char* str2short (char*) ;
 int time (void**) ;
 char* tprintf (int ,char const*,int ,scalar_t__,int*) ;
 char* varval (int ) ;
 struct sched_event* xcalloc (int,int) ;
 int xfree (struct sched_event*) ;
 int xputwchar (int ) ;

void
dosched(Char **v, struct command *c)
{
    struct sched_event *tp, **pp;
    time_t cur_time;
    int count, hours, minutes, dif_hour, dif_min;
    Char *cp;
    int relative;
    struct tm *ltp;

    USE(c);
    v++;
    cp = *v++;
    if (cp == ((void*)0)) {
 const Char *fmt;
 if ((fmt = varval(STRsched)) == STRNULL)
     fmt = str2short("%h\t%T\t%R\n");

 for (count = 1, tp = sched_ptr; tp; count++, tp = tp->t_next) {
     Char *buf, *str;

     buf = blkexpand(tp->t_lex);
     cleanup_push(buf, xfree);
     str = tprintf(FMT_SCHED, fmt, short2str(buf), tp->t_when, &count);
     cleanup_until(buf);
     cleanup_push(str, xfree);
     for (cp = str; *cp;)
  xputwchar(*cp++);
     cleanup_until(str);
 }
 return;
    }

    if (*cp == '-') {

 if (!sched_ptr)
     stderror(ERR_NOSCHED);
 if (*v)
     stderror(ERR_SCHEDUSAGE);
 count = atoi(short2str(++cp));
 if (count <= 0)
     stderror(ERR_SCHEDUSAGE);
 pp = &sched_ptr;
 tp = sched_ptr;
 while (--count) {
     if (tp->t_next == 0)
  break;
     else {
  pp = &tp->t_next;
  tp = tp->t_next;
     }
 }
 if (count)
     stderror(ERR_SCHEDEV);
 *pp = tp->t_next;
 blkfree(tp->t_lex);
 xfree(tp);
 return;
    }


    if (!*v)
 stderror(ERR_SCHEDCOM);
    relative = 0;
    if (!Isdigit(*cp)) {
 if (*cp != '+')
     stderror(ERR_SCHEDUSAGE);
 cp++, relative++;
    }
    minutes = 0;
    hours = atoi(short2str(cp));
    while (*cp && *cp != ':' && *cp != 'a' && *cp != 'p')
 cp++;
    if (*cp && *cp == ':')
 minutes = atoi(short2str(++cp));
    if ((hours < 0) || (minutes < 0) ||
 (hours > 23) || (minutes > 59))
 stderror(ERR_SCHEDTIME);
    while (*cp && *cp != 'p' && *cp != 'a')
 cp++;
    if (*cp && relative)
 stderror(ERR_SCHEDREL);
    if (*cp == 'p')
 hours += 12;
    (void) time(&cur_time);
    ltp = localtime(&cur_time);
    if (relative) {
 dif_hour = hours;
 dif_min = minutes;
    }
    else {
 if ((dif_hour = hours - ltp->tm_hour) < 0)
     dif_hour += 24;
 if ((dif_min = minutes - ltp->tm_min) < 0) {
     dif_min += 60;
     if ((--dif_hour) < 0)
  dif_hour = 23;
 }
    }
    tp = xcalloc(1, sizeof *tp);



    tp->t_when = cur_time - ltp->tm_sec + dif_hour * 3600L + dif_min * 60L;


    for (pp = &sched_ptr; *pp != ((void*)0) && tp->t_when >= (*pp)->t_when;
  pp = &(*pp)->t_next)
 ;
    tp->t_next = *pp;
    *pp = tp;
    tp->t_lex = saveblk(v);
}
