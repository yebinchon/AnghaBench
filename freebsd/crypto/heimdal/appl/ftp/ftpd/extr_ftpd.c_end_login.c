
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 scalar_t__ dochroot ;
 int fatal (char*) ;
 int ftpd_logwtmp (int ,char*,char*) ;
 scalar_t__ guest ;
 scalar_t__ logged_in ;
 int * pw ;
 scalar_t__ seteuid (int ) ;
 int ttyline ;

__attribute__((used)) static void
end_login(void)
{

 if (seteuid((uid_t)0) < 0)
  fatal("Failed to seteuid");
 if (logged_in)
  ftpd_logwtmp(ttyline, "", "");
 pw = ((void*)0);
 logged_in = 0;
 guest = 0;
 dochroot = 0;
}
