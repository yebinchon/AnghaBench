
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef char* u_long ;
struct rtprio {scalar_t__ prio; int type; } ;
struct passwd {char* pw_name; scalar_t__ pw_gid; } ;
typedef scalar_t__ rlim_t ;
typedef int mode_t ;
typedef int mac_t ;
struct TYPE_10__ {char* lc_class; } ;
typedef TYPE_1__ login_cap_t ;
struct TYPE_11__ {int def; } ;


 char* LOGIN_DEFCLASS ;
 int LOGIN_DEFPRI ;
 int LOGIN_DEFUMASK ;
 unsigned int LOGIN_SETGROUP ;
 unsigned int LOGIN_SETLOGIN ;
 unsigned int LOGIN_SETLOGINCLASS ;
 unsigned int LOGIN_SETMAC ;
 unsigned int LOGIN_SETPATH ;
 unsigned int LOGIN_SETPRIORITY ;
 unsigned int LOGIN_SETUMASK ;
 unsigned int LOGIN_SETUSER ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ PRIO_MAX ;
 scalar_t__ PRIO_MIN ;
 int PRIO_PROCESS ;
 int RTP_PRIO_IDLE ;
 scalar_t__ RTP_PRIO_MAX ;
 scalar_t__ RTP_PRIO_MIN ;
 int RTP_PRIO_REALTIME ;
 int RTP_SET ;
 int _PATH_DEFPATH ;
 int _PATH_STDPATH ;
 int errno ;
 scalar_t__ getuid () ;
 int initgroups (char*,scalar_t__) ;
 int login_close (TYPE_1__*) ;
 scalar_t__ login_getcapnum (TYPE_1__*,char*,int ,int ) ;
 char* login_getcapstr (TYPE_1__*,char*,int *,int *) ;
 TYPE_1__* login_getpwclass (struct passwd const*) ;
 TYPE_1__* login_getuserclass (struct passwd const*) ;
 int mac_free (int ) ;
 int mac_from_text (int *,char const*) ;
 int mac_is_present (int *) ;
 int mac_set_proc (int ) ;
 TYPE_4__* pathvars ;
 scalar_t__ rtprio (int ,int ,struct rtprio*) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setlogin (char*) ;
 int setloginclass (char*) ;
 int setlogincontext (TYPE_1__*,struct passwd const*,int ,unsigned int) ;
 scalar_t__ setpriority (int ,int ,int) ;
 scalar_t__ setuid (scalar_t__) ;
 int strerror (int) ;
 int syslog (int ,char*,char const*,...) ;
 int umask (int ) ;

int
setusercontext(login_cap_t *lc, const struct passwd *pwd, uid_t uid, unsigned int flags)
{
    rlim_t p;
    mode_t mymask;
    login_cap_t *llc = ((void*)0);
    struct rtprio rtp;
    int error;

    if (lc == ((void*)0)) {
 if (pwd != ((void*)0) && (lc = login_getpwclass(pwd)) != ((void*)0))
     llc = lc;
    }

    if (flags & LOGIN_SETPATH)
 pathvars[0].def = uid ? _PATH_DEFPATH : _PATH_STDPATH;


    if (pwd == ((void*)0))
 flags &= ~(LOGIN_SETGROUP | LOGIN_SETLOGIN | LOGIN_SETMAC);


    if (flags & LOGIN_SETPRIORITY) {
 p = login_getcapnum(lc, "priority", LOGIN_DEFPRI, LOGIN_DEFPRI);

 if (p > PRIO_MAX) {
     rtp.type = RTP_PRIO_IDLE;
     p -= PRIO_MAX + 1;
     rtp.prio = p > RTP_PRIO_MAX ? RTP_PRIO_MAX : p;
     if (rtprio(RTP_SET, 0, &rtp))
  syslog(LOG_WARNING, "rtprio '%s' (%s): %m",
      pwd ? pwd->pw_name : "-",
      lc ? lc->lc_class : LOGIN_DEFCLASS);
 } else if (p < PRIO_MIN) {
     rtp.type = RTP_PRIO_REALTIME;
     p -= PRIO_MIN - RTP_PRIO_MAX;
     rtp.prio = p < RTP_PRIO_MIN ? RTP_PRIO_MIN : p;
     if (rtprio(RTP_SET, 0, &rtp))
  syslog(LOG_WARNING, "rtprio '%s' (%s): %m",
      pwd ? pwd->pw_name : "-",
      lc ? lc->lc_class : LOGIN_DEFCLASS);
 } else {
     if (setpriority(PRIO_PROCESS, 0, (int)p) != 0)
  syslog(LOG_WARNING, "setpriority '%s' (%s): %m",
      pwd ? pwd->pw_name : "-",
      lc ? lc->lc_class : LOGIN_DEFCLASS);
 }
    }


    if (flags & LOGIN_SETGROUP) {
 if (setgid(pwd->pw_gid) != 0) {
     syslog(LOG_ERR, "setgid(%lu): %m", (u_long)pwd->pw_gid);
     login_close(llc);
     return (-1);
 }
 if (initgroups(pwd->pw_name, pwd->pw_gid) == -1) {
     syslog(LOG_ERR, "initgroups(%s,%lu): %m", pwd->pw_name,
     (u_long)pwd->pw_gid);
     login_close(llc);
     return (-1);
 }
    }


    if ((flags & LOGIN_SETMAC) && mac_is_present(((void*)0)) == 1) {
 const char *label_string;
 mac_t label;

 label_string = login_getcapstr(lc, "label", ((void*)0), ((void*)0));
 if (label_string != ((void*)0)) {
     if (mac_from_text(&label, label_string) == -1) {
  syslog(LOG_ERR, "mac_from_text('%s') for %s: %m",
      pwd->pw_name, label_string);
  return (-1);
     }
     if (mac_set_proc(label) == -1)
  error = errno;
     else
  error = 0;
     mac_free(label);
     if (error != 0) {
  syslog(LOG_ERR, "mac_set_proc('%s') for %s: %s",
      label_string, pwd->pw_name, strerror(error));
  return (-1);
     }
 }
    }


    if ((flags & LOGIN_SETLOGIN) && setlogin(pwd->pw_name) != 0) {
 syslog(LOG_ERR, "setlogin(%s): %m", pwd->pw_name);
 login_close(llc);
 return (-1);
    }


    if (lc != ((void*)0) && lc->lc_class != ((void*)0) && (flags & LOGIN_SETLOGINCLASS)) {
 error = setloginclass(lc->lc_class);
 if (error != 0) {
     syslog(LOG_ERR, "setloginclass(%s): %m", lc->lc_class);




 }
    }

    mymask = (flags & LOGIN_SETUMASK) ? umask(LOGIN_DEFUMASK) : 0;
    mymask = setlogincontext(lc, pwd, mymask, flags);
    login_close(llc);


    if ((flags & LOGIN_SETUSER) && setuid(uid) != 0) {
 syslog(LOG_ERR, "setuid(%lu): %m", (u_long)uid);
 return (-1);
    }




    if (getuid() == uid && (lc = login_getuserclass(pwd)) != ((void*)0)) {
 mymask = setlogincontext(lc, pwd, mymask, flags);
 login_close(lc);
    }


    if (flags & LOGIN_SETUMASK)
 umask(mymask);

    return (0);
}
