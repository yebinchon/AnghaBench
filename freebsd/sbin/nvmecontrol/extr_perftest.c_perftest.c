
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct nvme_io_test {int num_threads; scalar_t__ time; int size; int opc; int flags; } ;
struct cmd {int dummy; } ;
typedef int io_test ;
struct TYPE_2__ {char* op; char* flags; char* intr; int threads; scalar_t__ time; int perthread; int dev; int size; } ;


 int NVME_BIO_TEST ;
 int NVME_IO_TEST ;
 int NVME_OPC_READ ;
 int NVME_OPC_WRITE ;
 int NVME_TEST_FLAG_REFTHREAD ;
 int arg_help (int,char**,struct cmd const*) ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,struct nvme_io_test*) ;
 int memset (struct nvme_io_test*,int ,int) ;
 int open_dev (int ,int*,int,int) ;
 TYPE_1__ opt ;
 int print_perftest (struct nvme_io_test*,int ) ;
 int stderr ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
perftest(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_io_test io_test;
 int fd;
 u_long ioctl_cmd = NVME_IO_TEST;

 memset(&io_test, 0, sizeof(io_test));
 if (arg_parse(argc, argv, f))
  return;

 if (opt.op == ((void*)0))
  arg_help(argc, argv, f);
 if (opt.flags != ((void*)0) && strcmp(opt.flags, "refthread") == 0)
  io_test.flags |= NVME_TEST_FLAG_REFTHREAD;
 if (opt.intr != ((void*)0)) {
  if (strcmp(opt.intr, "bio") == 0 ||
      strcmp(opt.intr, "wait") == 0)
   ioctl_cmd = NVME_BIO_TEST;
  else if (strcmp(opt.intr, "io") == 0 ||
      strcmp(opt.intr, "intr") == 0)
   ioctl_cmd = NVME_IO_TEST;
  else {
   fprintf(stderr, "Unknown interrupt test type %s\n", opt.intr);
   arg_help(argc, argv, f);
  }
 }
 if (opt.threads <= 0 || opt.threads > 128) {
  fprintf(stderr, "Bad number of threads %d\n", opt.threads);
  arg_help(argc, argv, f);
 }
 io_test.num_threads = opt.threads;
 if (strcasecmp(opt.op, "read") == 0)
  io_test.opc = NVME_OPC_READ;
 else if (strcasecmp(opt.op, "write") == 0)
  io_test.opc = NVME_OPC_WRITE;
 else {
  fprintf(stderr, "\"%s\" not valid opcode.\n", opt.op);
  arg_help(argc, argv, f);
 }
 if (opt.time == 0) {
  fprintf(stderr, "No time speciifed\n");
  arg_help(argc, argv, f);
 }
 io_test.time = opt.time;
 io_test.size = opt.size;
 open_dev(opt.dev, &fd, 1, 1);
 if (ioctl(fd, ioctl_cmd, &io_test) < 0)
  err(1, "ioctl NVME_IO_TEST failed");

 close(fd);
 print_perftest(&io_test, opt.perthread);
 exit(0);
}
