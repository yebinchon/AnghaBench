
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int SIGINT ;
 int SIGTERM ;
 int atexit (int (*) ()) ;
 int atoi (void*) ;
 int cleanup () ;
 int * db_open (char*) ;
 char* default_socket_path ;
 int getopt (int,char**,char*) ;
 int handle_term ;
 int ind_len ;
 void* milenage_file ;
 scalar_t__ open_socket (char*) ;
 void* optarg ;
 int optind ;
 int os_program_deinit () ;
 scalar_t__ os_program_init () ;
 int printf (char*,...) ;
 int process (scalar_t__) ;
 scalar_t__ process_cmd (char*,char*,int) ;
 scalar_t__ read_gsm_triplets (char*) ;
 scalar_t__ read_milenage (void*) ;
 scalar_t__ serv_sock ;
 int signal (int ,int ) ;
 char* socket_path ;
 int sqlite3_close (int *) ;
 int * sqlite_db ;
 scalar_t__ stdout_debug ;
 int update_milenage ;
 int usage () ;

int main(int argc, char *argv[])
{
 int c;
 char *gsm_triplet_file = ((void*)0);
 char *sqlite_db_file = ((void*)0);
 int ret = 0;

 if (os_program_init())
  return -1;

 socket_path = default_socket_path;

 for (;;) {
  c = getopt(argc, argv, "D:g:hi:m:s:u");
  if (c < 0)
   break;
  switch (c) {
  case 'D':




   printf("No SQLite support included in the build\n");
   return -1;

  case 'g':
   gsm_triplet_file = optarg;
   break;
  case 'h':
   usage();
   return 0;
  case 'i':
   ind_len = atoi(optarg);
   if (ind_len < 0 || ind_len > 32) {
    printf("Invalid IND length\n");
    return -1;
   }
   break;
  case 'm':
   milenage_file = optarg;
   break;
  case 's':
   socket_path = optarg;
   break;
  case 'u':
   update_milenage = 1;
   break;
  default:
   usage();
   return -1;
  }
 }

 if (!gsm_triplet_file && !milenage_file && !sqlite_db_file) {
  usage();
  return -1;
 }






 if (gsm_triplet_file && read_gsm_triplets(gsm_triplet_file) < 0)
  return -1;

 if (milenage_file && read_milenage(milenage_file) < 0)
  return -1;

 if (optind == argc) {
  serv_sock = open_socket(socket_path);
  if (serv_sock < 0)
   return -1;

  printf("Listening for requests on %s\n", socket_path);

  atexit(cleanup);
  signal(SIGTERM, handle_term);
  signal(SIGINT, handle_term);

  for (;;)
   process(serv_sock);
 } else {
  char buf[1000];
  socket_path = ((void*)0);
  stdout_debug = 0;
  if (process_cmd(argv[optind], buf, sizeof(buf)) < 0) {
   printf("FAIL\n");
   ret = -1;
  } else {
   printf("%s\n", buf);
  }
  cleanup();
 }
 os_program_deinit();

 return ret;
}
