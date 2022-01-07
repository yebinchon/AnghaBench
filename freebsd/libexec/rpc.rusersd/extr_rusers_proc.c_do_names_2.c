
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int utmpidlearr_len; TYPE_5__* utmpidlearr_val; } ;
typedef TYPE_3__ utmpidlearr ;
typedef int ut ;
struct TYPE_9__ {int tv_sec; } ;
struct utmpx {scalar_t__ ut_type; int ut_host; int ut_line; TYPE_1__ ut_tv; } ;
struct TYPE_10__ {int ut_host; int ut_name; int ut_line; int ut_time; } ;
struct TYPE_13__ {TYPE_2__ ui_utmp; int ui_idle; } ;
struct TYPE_12__ {int ut_host; int ut_user; int ut_line; } ;


 int MAXUSERS ;
 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 int getidle (int ,int ) ;
 struct utmpx* getutxent () ;
 int memcpy (TYPE_4__*,struct utmpx*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int setutxent () ;
 TYPE_5__* utmp_idle ;
 TYPE_4__* utmp_list ;

__attribute__((used)) static utmpidlearr *
do_names_2(void)
{
 static utmpidlearr ut;
 struct utmpx *usr;
 int nusers = 0;

 memset(&ut, 0, sizeof(ut));
 ut.utmpidlearr_val = &utmp_idle[0];

 setutxent();
 while ((usr = getutxent()) != ((void*)0) && nusers < MAXUSERS) {
  if (usr->ut_type != USER_PROCESS)
   continue;

  memcpy(&utmp_list[nusers], usr, sizeof(*usr));
  utmp_idle[nusers].ui_utmp.ut_time = usr->ut_tv.tv_sec;
  utmp_idle[nusers].ui_idle =
      getidle(usr->ut_line, usr->ut_host);
  utmp_idle[nusers].ui_utmp.ut_line =
      utmp_list[nusers].ut_line;
  utmp_idle[nusers].ui_utmp.ut_name =
      utmp_list[nusers].ut_user;
  utmp_idle[nusers].ui_utmp.ut_host =
      utmp_list[nusers].ut_host;

  nusers++;
 }
 endutxent();

 ut.utmpidlearr_len = nusers;
 return(&ut);
}
