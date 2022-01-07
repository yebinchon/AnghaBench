
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int fd; int events; int revents; } ;
struct TYPE_4__ {int operation; int pool; } ;
struct TYPE_5__ {scalar_t__ error; TYPE_1__ kvp_hdr; } ;
struct hv_kvp_msg {TYPE_2__ hdr; } ;
struct TYPE_6__ {int (* kvp_op_exec ) (struct hv_kvp_msg*,void*) ;} ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int EIO ;
 int EXIT_FAILURE ;
 scalar_t__ HV_ERROR_NOT_SUPPORTED ;
 int HV_KVP_OP_COUNT ;
 int HV_KVP_OP_REGISTER ;
 scalar_t__ HV_S_CONT ;
 scalar_t__ HV_S_OK ;
 int INFTIM ;
 int KVP_LOG (int ,char*,...) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_USER ;
 int LOG_WARNING ;
 int O_RDWR ;
 int POLLIN ;
 int POLLRDNORM ;
 int assert (int) ;
 int daemon (int,int ) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int is_daemon ;
 int is_debugging ;
 scalar_t__ kvp_file_init () ;
 TYPE_3__* kvp_op_hdlrs ;
 scalar_t__ kvp_ops_init () ;
 struct hv_kvp_msg* malloc (int) ;
 int memcpy (struct hv_kvp_msg*,struct hv_kvp_msg*,int) ;
 int memset (struct hv_kvp_msg*,int ,int) ;
 int open (char*,int ) ;
 int openlog (char*,int ,int ) ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int ) ;
 int pread (int,struct hv_kvp_msg*,int,int ) ;
 int pwrite (int,struct hv_kvp_msg*,int,int ) ;
 int strerror (scalar_t__) ;
 int stub1 (struct hv_kvp_msg*,void*) ;
 int write (int,struct hv_kvp_msg*,int) ;

int
main(int argc, char *argv[])
{
 struct hv_kvp_msg *hv_kvp_dev_buf;
 struct hv_kvp_msg *hv_msg;
 struct pollfd hv_kvp_poll_fd[1];
 int op, pool;
 int hv_kvp_dev_fd, error, len, r;
 int ch;

 while ((ch = getopt(argc, argv, "dn")) != -1) {
  switch (ch) {
  case 'n':

   is_daemon = 0;
   break;
  case 'd':

   is_debugging = 1;
   break;
  default:
   break;
  }
 }

 openlog("HV_KVP", 0, LOG_USER);


 if (is_daemon == 1)
  daemon(1, 0);
 else
  KVP_LOG(LOG_DEBUG, "Run as regular process.\n");

 KVP_LOG(LOG_INFO, "HV_KVP starting; pid is: %d\n", getpid());


 hv_kvp_dev_buf = malloc(sizeof(*hv_kvp_dev_buf));

 hv_msg = malloc(sizeof(*hv_msg));


 if (hv_kvp_dev_buf == ((void*)0) || hv_msg == ((void*)0)) {
  KVP_LOG(LOG_ERR, "Failed to allocate memory for hv buffer\n");
  exit(EXIT_FAILURE);
 }


 if (kvp_ops_init() != 0) {
  KVP_LOG(LOG_ERR, "Failed to initizlize operation handlers\n");
  exit(EXIT_FAILURE);
 }

 if (kvp_file_init()) {
  KVP_LOG(LOG_ERR, "Failed to initialize the pools\n");
  exit(EXIT_FAILURE);
 }


 hv_kvp_dev_fd = open("/dev/hv_kvp_dev", O_RDWR);

 if (hv_kvp_dev_fd < 0) {
  KVP_LOG(LOG_ERR, "open /dev/hv_kvp_dev failed; error: %d %s\n",
      errno, strerror(errno));
  exit(EXIT_FAILURE);
 }


 hv_kvp_poll_fd[0].fd = hv_kvp_dev_fd;
 hv_kvp_poll_fd[0].events = (POLLIN | POLLRDNORM);


 memset(hv_kvp_dev_buf, 0, sizeof(*hv_kvp_dev_buf));
 hv_kvp_dev_buf->hdr.kvp_hdr.operation = HV_KVP_OP_REGISTER;
 len = write(hv_kvp_dev_fd, hv_kvp_dev_buf, sizeof(*hv_kvp_dev_buf));


 for (;;) {
  r = poll (hv_kvp_poll_fd, 1, INFTIM);

  KVP_LOG(LOG_DEBUG, "poll returned r = %d, revent = 0x%x\n",
      r, hv_kvp_poll_fd[0].revents);

  if (r == 0 || (r < 0 && errno == EAGAIN) ||
      (r < 0 && errno == EINTR)) {

   continue;
  }

  if (r < 0) {




   KVP_LOG(LOG_ERR, "Poll failed.\n");
   perror("poll");
   exit(EIO);
  }


  len = pread(hv_kvp_dev_fd, hv_kvp_dev_buf,
      sizeof(*hv_kvp_dev_buf), 0);

  if (len < 0) {
   KVP_LOG(LOG_ERR, "Read failed.\n");
   perror("pread");
   exit(EIO);
  }

  if (len != sizeof(struct hv_kvp_msg)) {
   KVP_LOG(LOG_ERR, "read len is: %d\n", len);
   continue;
  }


  memcpy(hv_msg, hv_kvp_dev_buf, sizeof(*hv_msg));







  op = hv_msg->hdr.kvp_hdr.operation;
  pool = hv_msg->hdr.kvp_hdr.pool;

  if (op < 0 || op >= HV_KVP_OP_COUNT ||
      kvp_op_hdlrs[op].kvp_op_exec == ((void*)0)) {
   KVP_LOG(LOG_WARNING,
       "Unsupported operation OP = %d\n", op);
   hv_msg->hdr.error = HV_ERROR_NOT_SUPPORTED;
  } else {



   error = kvp_op_hdlrs[op].kvp_op_exec(hv_msg,
       (void *)&kvp_op_hdlrs[op]);
   if (error != 0) {
    assert(hv_msg->hdr.error != HV_S_OK);
    if (hv_msg->hdr.error != HV_S_CONT)
     KVP_LOG(LOG_WARNING,
         "Operation failed OP = %d, error = 0x%x\n",
         op, error);
   }
  }





hv_kvp_done:
  len = pwrite(hv_kvp_dev_fd, hv_msg, sizeof(*hv_kvp_dev_buf), 0);

  if (len != sizeof(struct hv_kvp_msg)) {
   KVP_LOG(LOG_ERR, "write len is: %d\n", len);
   goto hv_kvp_done;
  }
 }
}
