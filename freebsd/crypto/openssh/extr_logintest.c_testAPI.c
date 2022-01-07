
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username ;
typedef scalar_t__ time_t ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct passwd {char* pw_name; } ;
struct logininfo {char* progname; char* hostname; int line; } ;
struct in_addr {int dummy; } ;
struct hostent {int ** h_addr_list; } ;
typedef int stripline ;
typedef int sa_in4 ;
typedef int s_t2 ;
typedef int s_t1 ;
typedef int s_t0 ;
typedef int s_logouttime ;
typedef int s_logintime ;
typedef int cmdstring ;


 int PAUSE_BEFORE_LOGOUT ;
 scalar_t__ be_verbose ;
 char* ctime (scalar_t__*) ;
 int dump_logininfo (struct logininfo*,char*) ;
 scalar_t__ geteuid () ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ getpid () ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int line_stripname (char*,int ,int) ;
 struct logininfo* login_alloc_entry (int,char*,int *,int ) ;
 int login_free_entry (struct logininfo*) ;
 scalar_t__ login_get_lastlog_time (int ) ;
 int login_login (struct logininfo*) ;
 int login_logout (struct logininfo*) ;
 int login_set_addr (struct logininfo*,struct sockaddr*,int) ;
 int login_write (struct logininfo*) ;
 int memcpy (void*,void*,int) ;
 scalar_t__ nologtest ;
 int printf (char*,...) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int system (char*) ;
 int time (scalar_t__*) ;
 int ttyname (int ) ;

int
testAPI()
{
 struct logininfo *li1;
 struct passwd *pw;
 struct hostent *he;
 struct sockaddr_in sa_in4;
 char cmdstring[256], stripline[8];
 char username[32];






 printf("**\n** Testing the API...\n**\n");

 pw = getpwuid(getuid());
 strlcpy(username, pw->pw_name, sizeof(username));



 printf("login_alloc_entry test (no host info):\n");


 li1 = login_alloc_entry((int)getpid(), username, ((void*)0), ttyname(0));
 strlcpy(li1->progname, "OpenSSH-logintest", sizeof(li1->progname));

 if (be_verbose)
  dump_logininfo(li1, "li1");

 printf("Setting host address info for 'localhost' (may call out):\n");
 if (! (he = gethostbyname("localhost"))) {
  printf("Couldn't set hostname(lookup failed)\n");
 } else {


  memcpy((void *)&(sa_in4.sin_addr), (void *)&(he->h_addr_list[0][0]),
         sizeof(struct in_addr));
  login_set_addr(li1, (struct sockaddr *) &sa_in4, sizeof(sa_in4));
  strlcpy(li1->hostname, "localhost", sizeof(li1->hostname));
 }
 if (be_verbose)
  dump_logininfo(li1, "li1");

 if ((int)geteuid() != 0) {
  printf("NOT RUNNING LOGIN TESTS - you are not root!\n");
  return 1;
 }

 if (nologtest)
  return 1;

 line_stripname(stripline, li1->line, sizeof(stripline));

 printf("Performing an invalid login attempt (no type field)\n--\n");
 login_write(li1);
 printf("--\n(Should have written errors to stderr)\n");
 printf("Performing a login on line %s ", stripline);





 printf("--\n");
 login_login(li1);

 snprintf(cmdstring, sizeof(cmdstring), "who | grep '%s '",
   stripline);
 system(cmdstring);

 printf("--\nPausing for %d second(s)...\n", PAUSE_BEFORE_LOGOUT);
 sleep(PAUSE_BEFORE_LOGOUT);

 printf("Performing a logout ");





 printf("\nThe root login shown above should be gone.\n"
        "If the root login hasn't gone, but another user on the same\n"
        "pty has, this is OK - we're hacking it here, and there\n"
        "shouldn't be two users on one pty in reality...\n"
        "-- ('who' output follows)\n");
 login_logout(li1);

 system(cmdstring);
 printf("-- ('who' output ends)\n");
 printf("--\nThe output of 'last' shown next should have "
        "an entry for root \n  on %s for the time shown above:\n--\n",
        stripline);
 snprintf(cmdstring, sizeof(cmdstring), "last | grep '%s ' | head -3",
   stripline);
 system(cmdstring);

 printf("--\nEnd of login test.\n");

 login_free_entry(li1);

 return 1;
}
