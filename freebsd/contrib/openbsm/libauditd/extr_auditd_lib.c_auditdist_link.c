
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fname ;


 int MAXPATHLEN ;
 scalar_t__ auditd_dist ;
 int inject_dist (char const*,char*,int) ;
 int link (char const*,char*) ;

__attribute__((used)) static int
auditdist_link(const char *filename)
{
 char fname[MAXPATHLEN];

 if (auditd_dist) {
  inject_dist(filename, fname, sizeof(fname));

  (void) link(filename, fname);
 }

 return (0);
}
