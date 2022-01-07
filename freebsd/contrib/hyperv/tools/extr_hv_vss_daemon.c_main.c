
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pollfd {int fd; int events; char* revents; } ;
struct hv_vss_opt_msg {int status; int opt; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int EIO ;
 int EXIT_FAILURE ;
 int FS_VSS_DEV_NAME ;



 int INFTIM ;
 int IOCHVVSSREAD ;
 int IOCHVVSSWRITE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_USER ;
 int O_RDWR ;
 int POLLIN ;
 int POLLRDNORM ;
 int VSS_DEV (int ) ;
 void* VSS_FAIL ;
 int VSS_LOG (int ,char*,...) ;
 int VSS_SUCCESS ;
 int check () ;
 int daemon (int,int ) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int freeze () ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int ioctl (int,int ,struct hv_vss_opt_msg*) ;
 int is_daemon ;
 int is_debugging ;
 int memset (struct hv_vss_opt_msg*,int ,int) ;
 int open (int ,int ) ;
 int openlog (char*,int ,int ) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int ) ;
 int strerror (scalar_t__) ;
 int thaw () ;
 int usage (char*) ;

int
main(int argc, char* argv[])
{
 struct hv_vss_opt_msg userdata;

 struct pollfd hv_vss_poll_fd[1];
 uint32_t op;
 int ch, r, error;
 int hv_vss_dev_fd;

 while ((ch = getopt(argc, argv, "dnh")) != -1) {
  switch (ch) {
  case 'n':

   is_daemon = 0;
   break;
  case 'd':

   is_debugging = 1;
   break;
  case 'h':
  default:
   usage(argv[0]);
   break;
  }
 }

 openlog("HV_VSS", 0, LOG_USER);


 if (is_daemon == 1)
  daemon(1, 0);
 else
  VSS_LOG(LOG_DEBUG, "Run as regular process.\n");

 VSS_LOG(LOG_INFO, "HV_VSS starting; pid is: %d\n", getpid());

 memset(&userdata, 0, sizeof(struct hv_vss_opt_msg));

 hv_vss_dev_fd = open(VSS_DEV(FS_VSS_DEV_NAME), O_RDWR);

 if (hv_vss_dev_fd < 0) {
  VSS_LOG(LOG_ERR, "Fail to open %s, error: %d %s\n",
      VSS_DEV(FS_VSS_DEV_NAME), errno, strerror(errno));
  exit(EXIT_FAILURE);
 }
 hv_vss_poll_fd[0].fd = hv_vss_dev_fd;
 hv_vss_poll_fd[0].events = POLLIN | POLLRDNORM;

 while (1) {
  r = poll(hv_vss_poll_fd, 1, INFTIM);

  VSS_LOG(LOG_DEBUG, "poll returned r = %d, revent = 0x%x\n",
      r, hv_vss_poll_fd[0].revents);

  if (r == 0 || (r < 0 && errno == EAGAIN) ||
      (r < 0 && errno == EINTR)) {

   continue;
  }

  if (r < 0) {




   VSS_LOG(LOG_ERR, "Poll failed.\n");
   perror("poll");
   exit(EIO);
  }


  error = ioctl(hv_vss_dev_fd, IOCHVVSSREAD, &userdata);
  if (error < 0) {
   VSS_LOG(LOG_ERR, "Read failed.\n");
   perror("pread");
   exit(EIO);
  }

  if (userdata.status != 0) {
   VSS_LOG(LOG_ERR, "data read error\n");
   continue;
  }







  op = userdata.opt;

  switch (op) {
  case 130:
   error = check();
   break;
  case 129:
   error = freeze();
   break;
  case 128:
   error = thaw();
   break;
  default:
   VSS_LOG(LOG_ERR, "Illegal operation: %d\n", op);
   error = VSS_FAIL;
  }
  if (error)
   userdata.status = VSS_FAIL;
  else
   userdata.status = VSS_SUCCESS;
  error = ioctl(hv_vss_dev_fd, IOCHVVSSWRITE, &userdata);
  if (error != 0) {
   VSS_LOG(LOG_ERR, "Fail to write to device\n");
   exit(EXIT_FAILURE);
  } else {
   VSS_LOG(LOG_INFO, "Send response %d for %s to kernel\n",
       userdata.status, op == 129 ? "Freeze" :
       (op == 128 ? "Thaw" : "Check"));
  }
 }
}
