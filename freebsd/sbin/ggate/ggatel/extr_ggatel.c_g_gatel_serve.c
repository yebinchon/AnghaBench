
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_io {size_t gctl_length; int gctl_error; int gctl_cmd; int gctl_offset; int * gctl_data; int gctl_unit; int gctl_version; } ;
 int EOPNOTSUPP ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int G_GATE_CMD_DONE ;
 int G_GATE_CMD_START ;
 int G_GATE_CTL_NAME ;
 int G_GATE_VERSION ;
 int LOG_DEBUG ;
 int assert (int) ;
 int close (int) ;
 int daemon (int ,int ) ;
 int err (int ,char*) ;
 int errno ;
 int exit (int ) ;
 int free (int *) ;
 int g_gate_close_device () ;
 int g_gate_destroy (int ,int) ;
 int g_gate_ioctl (int ,struct g_gate_ctl_io*) ;
 int g_gate_log (int ,char*,int ) ;
 scalar_t__ g_gate_verbose ;
 int g_gate_xlog (char*,int ,int ) ;
 int getpid () ;
 int * malloc (size_t) ;
 int pread (int,int *,size_t,int ) ;
 int pwrite (int,int *,size_t,int ) ;
 void* realloc (int *,size_t) ;
 size_t sectorsize ;
 int strerror (int) ;
 int unit ;

__attribute__((used)) static void
g_gatel_serve(int fd)
{
 struct g_gate_ctl_io ggio;
 size_t bsize;

 if (g_gate_verbose == 0) {
  if (daemon(0, 0) == -1) {
   g_gate_destroy(unit, 1);
   err(EXIT_FAILURE, "Cannot daemonize");
  }
 }
 g_gate_log(LOG_DEBUG, "Worker created: %u.", getpid());
 ggio.gctl_version = G_GATE_VERSION;
 ggio.gctl_unit = unit;
 bsize = sectorsize;
 ggio.gctl_data = malloc(bsize);
 for (;;) {
  int error;
once_again:
  ggio.gctl_length = bsize;
  ggio.gctl_error = 0;
  g_gate_ioctl(G_GATE_CMD_START, &ggio);
  error = ggio.gctl_error;
  switch (error) {
  case 0:
   break;
  case 130:

   free(ggio.gctl_data);
   g_gate_close_device();
   close(fd);
   exit(EXIT_SUCCESS);
  case 129:

   assert(ggio.gctl_cmd == 133 ||
       ggio.gctl_cmd == 131);
   ggio.gctl_data = realloc(ggio.gctl_data,
       ggio.gctl_length);
   if (ggio.gctl_data != ((void*)0)) {
    bsize = ggio.gctl_length;
    goto once_again;
   }

  case 128:
  default:
   g_gate_xlog("ioctl(/dev/%s): %s.", G_GATE_CTL_NAME,
       strerror(error));
  }

  error = 0;
  switch (ggio.gctl_cmd) {
  case 132:
   if ((size_t)ggio.gctl_length > bsize) {
    ggio.gctl_data = realloc(ggio.gctl_data,
        ggio.gctl_length);
    if (ggio.gctl_data != ((void*)0))
     bsize = ggio.gctl_length;
    else
     error = 129;
   }
   if (error == 0) {
    if (pread(fd, ggio.gctl_data, ggio.gctl_length,
        ggio.gctl_offset) == -1) {
     error = errno;
    }
   }
   break;
  case 133:
  case 131:
   if (pwrite(fd, ggio.gctl_data, ggio.gctl_length,
       ggio.gctl_offset) == -1) {
    error = errno;
   }
   break;
  default:
   error = EOPNOTSUPP;
  }

  ggio.gctl_error = error;
  g_gate_ioctl(G_GATE_CMD_DONE, &ggio);
 }
}
