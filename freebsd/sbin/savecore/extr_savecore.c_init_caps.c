
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;
typedef int cap_channel_t ;


 int CAP_IOCTL ;
 int CAP_PREAD ;
 int CAP_WRITE ;
 int FA_OPEN ;
 int LOG_ERR ;
 int O_RDONLY ;
 int O_RDWR ;
 int cap_close (int *) ;
 int * cap_init () ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int * cap_service_open (int *,char*) ;
 int * capfa ;
 int caph_cache_catpages () ;
 int caph_cache_tzdata () ;
 scalar_t__ caph_enter_casper () ;
 int * capsyslog ;
 scalar_t__ checkfor ;
 int exit (int) ;
 int * fileargs_init (int,char**,int ,int ,int *,int ) ;
 scalar_t__ keep ;
 int logmsg (int ,char*) ;

__attribute__((used)) static void
init_caps(int argc, char **argv)
{
 cap_rights_t rights;
 cap_channel_t *capcas;

 capcas = cap_init();
 if (capcas == ((void*)0)) {
  logmsg(LOG_ERR, "cap_init(): %m");
  exit(1);
 }




 (void)cap_rights_init(&rights, CAP_PREAD, CAP_WRITE, CAP_IOCTL);
 capfa = fileargs_init(argc, argv, checkfor || keep ? O_RDONLY : O_RDWR,
     0, &rights, FA_OPEN);
 if (capfa == ((void*)0)) {
  logmsg(LOG_ERR, "fileargs_init(): %m");
  exit(1);
 }
 caph_cache_catpages();
 caph_cache_tzdata();
 if (caph_enter_casper() != 0) {
  logmsg(LOG_ERR, "caph_enter_casper(): %m");
  exit(1);
 }
 capsyslog = cap_service_open(capcas, "system.syslog");
 if (capsyslog == ((void*)0)) {
  logmsg(LOG_ERR, "cap_service_open(system.syslog): %m");
  exit(1);
 }
 cap_close(capcas);
}
