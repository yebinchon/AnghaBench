
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {int chars; TYPE_1__* ttis; scalar_t__ typecnt; scalar_t__ timecnt; scalar_t__ leapcnt; } ;
struct TYPE_2__ {scalar_t__ tt_abbrind; scalar_t__ tt_gmtoff; scalar_t__ tt_isdst; } ;


 int FALSE ;
 int TRUE ;
 int _RWLOCK_RDLOCK (int *) ;
 int _RWLOCK_UNLOCK (int *) ;
 int _RWLOCK_WRLOCK (int *) ;
 scalar_t__ calloc (int,int) ;
 char* getenv (char*) ;
 char const* gmt ;
 int gmtload (struct state*) ;
 int lcl_TZname ;
 int lcl_is_set ;
 int lcl_rwlock ;
 struct state* lclptr ;
 int settzname () ;
 scalar_t__ strcmp (int ,char const*) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;
 scalar_t__ tzload (char const*,struct state*,int ) ;
 scalar_t__ tzparse (char const*,struct state*,int ) ;
 int tzsetwall_basic (int) ;

__attribute__((used)) static void
tzset_basic(int rdlocked)
{
 const char * name;

 name = getenv("TZ");
 if (name == ((void*)0)) {
  tzsetwall_basic(rdlocked);
  return;
 }

 if (!rdlocked)
  _RWLOCK_RDLOCK(&lcl_rwlock);
 if (lcl_is_set > 0 && strcmp(lcl_TZname, name) == 0) {
  if (!rdlocked)
   _RWLOCK_UNLOCK(&lcl_rwlock);
  return;
 }
 _RWLOCK_UNLOCK(&lcl_rwlock);

 _RWLOCK_WRLOCK(&lcl_rwlock);
 lcl_is_set = strlen(name) < sizeof lcl_TZname;
 if (lcl_is_set)
  (void) strcpy(lcl_TZname, name);
 if (*name == '\0') {



  lclptr->leapcnt = 0;
  lclptr->timecnt = 0;
  lclptr->typecnt = 0;
  lclptr->ttis[0].tt_isdst = 0;
  lclptr->ttis[0].tt_gmtoff = 0;
  lclptr->ttis[0].tt_abbrind = 0;
  (void) strcpy(lclptr->chars, gmt);
 } else if (tzload(name, lclptr, TRUE) != 0)
  if (name[0] == ':' || tzparse(name, lclptr, FALSE) != 0)
   (void) gmtload(lclptr);
 settzname();
 _RWLOCK_UNLOCK(&lcl_rwlock);

 if (rdlocked)
  _RWLOCK_RDLOCK(&lcl_rwlock);
}
