
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pw_name; } ;
typedef int RETSIGTYPE ;


 int LOG_INFO ;
 int SIGRETURN (int ) ;
 int dologout (int) ;
 int ftpd_timeout ;
 scalar_t__ logging ;
 TYPE_1__* pw ;
 int reply (int,char*,int ) ;
 int syslog (int ,char*,char*,int ) ;

__attribute__((used)) static RETSIGTYPE
toolong(int signo)
{

 reply(421,
     "Timeout (%d seconds): closing control connection.",
       ftpd_timeout);
 if (logging)
  syslog(LOG_INFO, "User %s timed out after %d seconds",
      (pw ? pw -> pw_name : "unknown"), ftpd_timeout);
 dologout(1);
 SIGRETURN(0);
}
