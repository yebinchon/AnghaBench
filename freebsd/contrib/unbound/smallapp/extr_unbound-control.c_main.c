
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int WSADATA ;


 char* CONFIGFILE ;
 int ERR_load_SSL_strings () ;
 int ERR_load_crypto_strings () ;
 int MAKEWORD (int,int) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int,int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int OpenSSL_add_all_algorithms () ;
 int RAND_seed (unsigned char*,int) ;
 int RAND_status () ;
 int SSL_library_init () ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int checklock_start () ;
 int checklock_stop () ;
 int errno ;
 scalar_t__ execlp (char*,char*,char*,char const*,char*) ;
 int fatal_exit (char*,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpid () ;
 int go (char const*,char*,int,int,char**) ;
 int log_ident_set (char*) ;
 int log_init (int *,int ,int *) ;
 int log_warn (char*) ;
 int memmove (unsigned char*,unsigned int*,int) ;
 void* optarg ;
 scalar_t__ optind ;
 int print_stats_shm (char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;
 int usage () ;
 char* w_lookup_reg_str (char*,char*) ;
 int wsa_strerror (int) ;

int main(int argc, char* argv[])
{
 int c, ret;
 int quiet = 0;
 const char* cfgfile = CONFIGFILE;
 char* svr = ((void*)0);
 log_ident_set("unbound-control");
 log_init(((void*)0), 0, ((void*)0));
 checklock_start();






 while( (c=getopt(argc, argv, "c:s:qh")) != -1) {
  switch(c) {
  case 'c':
   cfgfile = optarg;
   break;
  case 's':
   svr = optarg;
   break;
  case 'q':
   quiet = 1;
   break;
  case '?':
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if(argc == 0)
  usage();
 if(argc >= 1 && strcmp(argv[0], "start")==0) {
  if(execlp("unbound", "unbound", "-c", cfgfile,
   (char*)((void*)0)) < 0) {
   fatal_exit("could not exec unbound: %s",
    strerror(errno));
  }
 }
 if(argc >= 1 && strcmp(argv[0], "stats_shm")==0) {
  print_stats_shm(cfgfile);
  return 0;
 }
 ERR_load_SSL_strings();


 OpenSSL_add_all_algorithms();






 (void)SSL_library_init();




 if(!RAND_status()) {

  unsigned char buf[256];
  unsigned int seed=(unsigned)time(((void*)0)) ^ (unsigned)getpid();
  unsigned int v = seed;
  size_t i;
  for(i=0; i<256/sizeof(v); i++) {
   memmove(buf+i*sizeof(v), &v, sizeof(v));
   v = v*seed + (unsigned int)i;
  }
  RAND_seed(buf, 256);
  log_warn("no entropy, seeding openssl PRNG with time\n");
 }

 ret = go(cfgfile, svr, quiet, argc, argv);




 checklock_stop();
 return ret;
}
