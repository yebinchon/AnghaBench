
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DAEMON ;
 int LOG_INFO ;
 int LOG_KERN ;
 int LOG_LOCAL4 ;
 int LOG_MAIL ;
 int LOG_NOTICE ;
 int LOG_PERROR ;
 int setenv (char*,char const*,int) ;
 int test_syslog_close ;
 int test_syslog_open ;
 int test_syslog_send ;
 int tzset () ;
 int xo_close_container_h (int *,char*) ;
 int xo_finish () ;
 int xo_open_container_h (int *,char*) ;
 int xo_open_log (char*,int ,int ) ;
 int xo_parse_args (int,char**) ;
 int xo_set_syslog_enterprise_id (int) ;
 int xo_set_syslog_handler (int ,int ,int ) ;
 int xo_set_unit_test_mode (int) ;
 int xo_set_version (char*) ;
 scalar_t__ xo_streq (char*,char*) ;
 int xo_syslog (int,char*,char*,...) ;

int
main (int argc, char **argv)
{
    int unit_test = 1;
    int fire = 0;
    const char *tzone = "EST";

    argc = xo_parse_args(argc, argv);
    if (argc < 0)
 return 1;

    for (argc = 1; argv[argc]; argc++) {
 if (xo_streq(argv[argc], "full"))
     unit_test = 0;
 else if (xo_streq(argv[argc], "fire"))
     fire = 1;
 else if (xo_streq(argv[argc], "tz"))
     tzone = argv[++argc];
    }

    setenv("TZ", tzone, 1);
    tzset();

    if (!fire) {
 xo_set_syslog_handler(test_syslog_open, test_syslog_send,
         test_syslog_close);
    }

    if (unit_test) {
 xo_set_unit_test_mode(1);
 xo_open_log("test-program", LOG_PERROR, 0);
    }

    xo_set_version("3.1.4");
    xo_set_syslog_enterprise_id(42);

    xo_open_container_h(((void*)0), "top");

    xo_syslog(LOG_INFO | LOG_KERN, "animal-status",
       "The {:animal} is {:state}", "snake", "loose");
    xo_syslog(LOG_INFO | LOG_MAIL, "animal-consumed",
       "My {:animal} ate your {:pet}", "snake", "hamster");
    xo_syslog(LOG_NOTICE | LOG_DAEMON, "animal-talk",
       "{:count/%d} {:animal} said {:quote}", 1, "owl", "\"e=m\\c[2]\"");
    xo_set_syslog_enterprise_id(32473);
    xo_syslog(LOG_LOCAL4 | LOG_NOTICE, "ID47",
       "{e:iut/%u}An {:event-source} {:event-id/%u} log entry",
       3, "application", 1011);

    xo_close_container_h(((void*)0), "top");

    xo_finish();

    return 0;
}
