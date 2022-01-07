
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_image {int pi_type; scalar_t__ pi_iskernelmodule; int pi_execpath; } ;
struct pmcstat_args {char* pa_fsroot; int pa_verbosity; } ;
struct exec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int ex ;
typedef int buffer ;


 int EX_SOFTWARE ;
 scalar_t__ N_BADMAG (struct exec) ;
 int O_RDONLY ;
 int PATH_MAX ;
 int PMCSTAT_IMAGE_AOUT ;
 int PMCSTAT_IMAGE_INDETERMINABLE ;
 int assert (int ) ;
 int close (int) ;
 int errx (int ,char*,char const*) ;
 int open (char*,int ,int ) ;
 char* pmcstat_string_unintern (int ) ;
 scalar_t__ read (int,struct exec*,int) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int warn (char*,char const*) ;

void
pmcstat_image_get_aout_params(struct pmcstat_image *image,
    struct pmcstat_args *args)
{
 int fd;
 ssize_t nbytes;
 struct exec ex;
 const char *path;
 char buffer[PATH_MAX];

 path = pmcstat_string_unintern(image->pi_execpath);
 assert(path != ((void*)0));

 if (image->pi_iskernelmodule)
  errx(EX_SOFTWARE,
      "ERROR: a.out kernel modules are unsupported \"%s\"", path);

 (void) snprintf(buffer, sizeof(buffer), "%s%s",
     args->pa_fsroot, path);

 if ((fd = open(buffer, O_RDONLY, 0)) < 0 ||
     (nbytes = read(fd, &ex, sizeof(ex))) < 0) {
  if (args->pa_verbosity >= 2)
   warn("WARNING: Cannot determine type of \"%s\"",
       path);
  image->pi_type = PMCSTAT_IMAGE_INDETERMINABLE;
  if (fd != -1)
   (void) close(fd);
  return;
 }

 (void) close(fd);

 if ((unsigned) nbytes != sizeof(ex) ||
     N_BADMAG(ex))
  return;

 image->pi_type = PMCSTAT_IMAGE_AOUT;



 return;
}
