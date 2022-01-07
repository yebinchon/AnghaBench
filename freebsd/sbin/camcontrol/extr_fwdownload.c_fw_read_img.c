
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct fw_vendor {int type; int dev_type; } ;
struct cam_device {int dummy; } ;
typedef int off_t ;


 int O_RDONLY ;
 int SEEK_SET ;
 int T_SEQUENTIAL ;



 int close (int) ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int fw_validate_ibm (struct cam_device*,int,int,int,char*,char const*,int) ;
 int lseek (int,int,int ) ;
 char* malloc (int) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int stdout ;
 int strncmp (char*,char*,int) ;
 int warn (char*,...) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static char *
fw_read_img(struct cam_device *dev, int retry_count, int timeout, int quiet,
     const char *fw_img_path, struct fw_vendor *vp, int *num_bytes)
{
 int fd;
 struct stat stbuf;
 char *buf;
 off_t img_size;
 int skip_bytes = 0;

 if ((fd = open(fw_img_path, O_RDONLY)) < 0) {
  warn("Could not open image file %s", fw_img_path);
  return (((void*)0));
 }
 if (fstat(fd, &stbuf) < 0) {
  warn("Could not stat image file %s", fw_img_path);
  goto bailout1;
 }
 if ((img_size = stbuf.st_size) == 0) {
  warnx("Zero length image file %s", fw_img_path);
  goto bailout1;
 }
 if ((buf = malloc(img_size)) == ((void*)0)) {
  warnx("Could not allocate buffer to read image file %s",
      fw_img_path);
  goto bailout1;
 }

 switch (vp->type) {
 case 128:
  if (read(fd, buf, 16) != 16) {
   warn("Could not read image file %s", fw_img_path);
   goto bailout;
  }
  if (lseek(fd, 0, SEEK_SET) == -1) {
   warn("Unable to lseek");
   goto bailout;
  }
  if ((strncmp(buf, "SEAGATE,SEAGATE ", 16) == 0) ||
      (img_size % 512 == 80))
   skip_bytes = 80;
  break;
 case 129:
  skip_bytes = img_size % 1030;
  break;
 case 130: {
  if (vp->dev_type != T_SEQUENTIAL)
   break;
  if (fw_validate_ibm(dev, retry_count, timeout, fd, buf,
        fw_img_path, quiet) != 0)
   goto bailout;
  break;
 }
 default:
  break;
 }
 if (skip_bytes != 0) {
  fprintf(stdout, "Skipping %d byte header.\n", skip_bytes);
  if (lseek(fd, skip_bytes, SEEK_SET) == -1) {
   warn("Could not lseek");
   goto bailout;
  }
  img_size -= skip_bytes;
 }

 if (read(fd, buf, img_size) != img_size) {
  warn("Could not read image file %s", fw_img_path);
  goto bailout;
 }
 *num_bytes = img_size;
 close(fd);
 return (buf);
bailout:
 free(buf);
bailout1:
 close(fd);
 *num_bytes = 0;
 return (((void*)0));
}
