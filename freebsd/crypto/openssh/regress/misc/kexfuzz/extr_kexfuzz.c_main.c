
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {scalar_t__ type; } ;
struct sshbuf {int dummy; } ;


 int C2S ;
 scalar_t__ KEY_UNSPEC ;
 int O_RDONLY ;
 int S2C ;
 int SYSLOG_FACILITY_USER ;
 int SYSLOG_LEVEL_DEBUG3 ;
 int SYSLOG_LEVEL_INFO ;
 int _IONBF ;
 int atoi (char*) ;
 int badusage (char*) ;
 int close (int) ;
 int do_debug ;
 int do_kex_with_key (char const*,struct sshkey*,int*,int*,int,int,char const*,struct sshbuf*) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,int ) ;
 int getopt (int,char**,char*) ;
 int kex_names_valid (char const*) ;
 int log_init (char*,int ,int ,int) ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,int) ;
 int setvbuf (int ,int *,int ,int ) ;
 int ssh_err (int) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_file (int,struct sshbuf*) ;
 int sshkey_load_private_type_fd (int,scalar_t__,int *,struct sshkey**,int *) ;
 int stdout ;
 int strcasecmp (char*,char*) ;
 int * strchr (char const*,char) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, fd, r;
 int count_flag = 0, dump_flag = 0, replace_flag = 0;
 int packet_index = -1, direction = -1;
 int s2c = 0, c2s = 0;
 const char *kex = ((void*)0), *kpath = ((void*)0), *data_path = ((void*)0);
 struct sshkey *key = ((void*)0);
 struct sshbuf *replace_data = ((void*)0);

 setvbuf(stdout, ((void*)0), _IONBF, 0);
 while ((ch = getopt(argc, argv, "hcdrvD:f:K:k:i:")) != -1) {
  switch (ch) {
  case 'h':
   usage();
   return 0;
  case 'c':
   count_flag = 1;
   break;
  case 'd':
   dump_flag = 1;
   break;
  case 'r':
   replace_flag = 1;
   break;
  case 'v':
   do_debug = 1;
   break;

  case 'D':
   if (strcasecmp(optarg, "s2c") == 0)
    direction = S2C;
   else if (strcasecmp(optarg, "c2s") == 0)
    direction = C2S;
   else
    badusage("Invalid direction (-D)");
   break;
  case 'f':
   data_path = optarg;
   break;
  case 'K':
   kex = optarg;
   break;
  case 'k':
   kpath = optarg;
   break;
  case 'i':
   packet_index = atoi(optarg);
   if (packet_index < 0)
    badusage("Invalid packet index");
   break;
  default:
   badusage("unsupported flag");
  }
 }
 argc -= optind;
 argv += optind;

 log_init(argv[0], do_debug ? SYSLOG_LEVEL_DEBUG3 : SYSLOG_LEVEL_INFO,
     SYSLOG_FACILITY_USER, 1);


 if ((count_flag + dump_flag + replace_flag) != 1)
  badusage("Must select one mode: -c, -d or -r");

 if (kex == ((void*)0) || !kex_names_valid(kex) || strchr(kex, ',') != ((void*)0))
  badusage("Missing or invalid kex type (-K flag)");

 if (kpath == ((void*)0))
  badusage("Missing private key (-k flag)");
 if ((fd = open(kpath, O_RDONLY)) == -1)
  err(1, "open %s", kpath);
 if ((r = sshkey_load_private_type_fd(fd, KEY_UNSPEC, ((void*)0),
     &key, ((void*)0))) != 0)
  errx(1, "Unable to load key %s: %s", kpath, ssh_err(r));
 close(fd);


 if (key == ((void*)0) || key->type == KEY_UNSPEC)
  badusage("Invalid key file (-k flag)");


 if (replace_flag) {
  if (packet_index == -1 || direction == -1 || data_path == ((void*)0))
   badusage("Replace (-r) mode must specify direction "
       "(-D) packet index (-i) and data path (-f)");
  if ((fd = open(data_path, O_RDONLY)) == -1)
   err(1, "open %s", data_path);
  replace_data = sshbuf_new();
  if ((r = sshkey_load_file(fd, replace_data)) != 0)
   errx(1, "read %s: %s", data_path, ssh_err(r));
  close(fd);
 }


 if (dump_flag) {
  if (packet_index == -1 || direction == -1 || data_path == ((void*)0))
   badusage("Dump (-d) mode must specify direction "
       "(-D), packet index (-i) and data path (-f)");
 }



 do_kex_with_key(kex, key, &c2s, &s2c,
     direction, packet_index,
     dump_flag ? data_path : ((void*)0),
     replace_flag ? replace_data : ((void*)0));
 sshkey_free(key);
 sshbuf_free(replace_data);

 if (count_flag) {
  printf("S2C: %d\n", s2c);
  printf("C2S: %d\n", c2s);
 }

 return 0;
}
