
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int O_CREAT ;
 int O_RDONLY ;
 int S_IRGRP ;
 int S_IRUSR ;
 scalar_t__ auditctl (char*) ;
 int auditdist_link (char*) ;
 int close (int) ;
 int errno ;
 scalar_t__ fchmod (int,int) ;
 scalar_t__ fchown (int,int,int ) ;
 int open (char*,int,int) ;
 int unlink (char*) ;

__attribute__((used)) static int
open_trail(char *fname, gid_t gid, int *errorp)
{
 int fd;


 fd = open(fname, O_RDONLY | O_CREAT, S_IRUSR);
 if (fd < 0)
  return (-1);
 if (fchown(fd, -1, gid) < 0 || fchmod(fd, S_IRUSR | S_IRGRP) < 0) {
  (void) close(fd);
  (void) unlink(fname);
  return (-1);
 }
 (void) close(fd);
 if (auditctl(fname) < 0) {
  *errorp = errno;
  (void) unlink(fname);
  return (-1);
 }
 (void) auditdist_link(fname);
 return (0);
}
