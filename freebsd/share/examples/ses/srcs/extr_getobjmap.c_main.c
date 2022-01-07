
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj_id; scalar_t__ object_type; } ;
typedef TYPE_1__ ses_object ;
typedef int caddr_t ;


 int O_RDONLY ;
 int SESIOC_GETNOBJ ;
 int SESIOC_GETOBJMAP ;
 TYPE_1__* calloc (int,int) ;
 int close (int) ;
 int fprintf (int ,char*,char*,int) ;
 int free (TYPE_1__*) ;
 char* geteltnm (int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,int,int,char*) ;
 int stdout ;

int
main(int a, char **v)
{
 ses_object *objp;
 int nobj, fd, i;

 while (*++v) {
  fd = open(*v, O_RDONLY);
  if (fd < 0) {
   perror(*v);
   continue;
  }
  if (ioctl(fd, SESIOC_GETNOBJ, (caddr_t) &nobj) < 0) {
   perror("SESIOC_GETNOBJ");
   (void) close(fd);
   continue;
  }
  fprintf(stdout, "%s: %d objects\n", *v, nobj);
  if (nobj == 0) {
   (void) close(fd);
   continue;
  }
  objp = calloc(nobj, sizeof (ses_object));
  if (objp == ((void*)0)) {
   perror("calloc");
   (void) close(fd);
   continue;
  }
  if (ioctl(fd, SESIOC_GETOBJMAP, (caddr_t) objp) < 0) {
   perror("SESIOC_GETOBJMAP");
   (void) close(fd);
   continue;
  }
  for (i = 0; i < nobj; i++) {
   printf(" Object %d: ID 0x%x Type '%s'\n", i,
       objp[i].obj_id, geteltnm((int)objp[i].object_type));
  }
  free(objp);
  (void) close(fd);
 }
 return (0);
}
