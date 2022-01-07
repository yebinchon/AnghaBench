
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uargs ;
struct ufs_args {int fspec; } ;


 int FSTEST_MNTNAME ;
 int MNT_LOG ;
 int MOUNT_FFS ;
 int RUMP_DAEMONIZE_SUCCESS ;
 int RUMP_ETFS_BLK ;
 int SIGINT ;
 int SIGTERM ;
 int __UNCONST (char*) ;
 int background ;
 int die (char*,int) ;
 int errno ;
 int errx (int,char*,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int rump_daemonize_begin () ;
 int rump_daemonize_done (int ) ;
 int rump_init () ;
 int rump_init_server (char const*) ;
 int rump_pub_etfs_register (char*,char const*,int ) ;
 int rump_sys_mkdir (int ,int) ;
 int rump_sys_mount (int ,int ,int ,struct ufs_args*,int) ;
 int rump_sys_reboot (int ,int *) ;
 int sem_init (int *,int ,int ) ;
 int sem_wait (int *) ;
 int signal (int ,int ) ;
 int sigreboot ;
 int sigsem ;
 int strerror (int) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int error;
 struct ufs_args uargs;
 const char *filename;
 const char *serverurl;
 int log = 0;
 int ch;

 while ((ch = getopt(argc, argv, "bl")) != -1) {
  switch(ch) {
  case 'b':
   background = 1;
   break;
  case 'l':
   log = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 filename = argv[0];
 serverurl = argv[1];

 if (background) {
  error = rump_daemonize_begin();
  if (error)
   errx(1, "rump daemonize: %s", strerror(error));
 }

 error = rump_init();
 if (error)
  die("rump init failed", error);

 if (rump_sys_mkdir(FSTEST_MNTNAME, 0777) == -1)
  die("mount point create", errno);
 rump_pub_etfs_register("/diskdev", filename, RUMP_ETFS_BLK);
 uargs.fspec = __UNCONST("/diskdev");
 if (rump_sys_mount(MOUNT_FFS, FSTEST_MNTNAME, (log) ? MNT_LOG : 0,
     &uargs, sizeof(uargs)) == -1)
  die("mount ffs", errno);

 error = rump_init_server(serverurl);
 if (error)
  die("rump server init failed", error);
 if (background)
  rump_daemonize_done(RUMP_DAEMONIZE_SUCCESS);

 sem_init(&sigsem, 0, 0);
 signal(SIGTERM, sigreboot);
 signal(SIGINT, sigreboot);
 sem_wait(&sigsem);

 rump_sys_reboot(0, ((void*)0));

 return 0;
}
