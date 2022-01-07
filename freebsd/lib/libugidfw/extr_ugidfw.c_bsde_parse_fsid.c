
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsid {int dummy; } ;
struct statfs {struct fsid f_fsid; } ;


 int errno ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strerror (int ) ;

__attribute__((used)) static int
bsde_parse_fsid(char *spec, struct fsid *fsid, size_t buflen, char *errstr)
{
 struct statfs buf;

 if (statfs(spec, &buf) < 0) {
  snprintf(errstr, buflen, "Unable to get id for %s: %s",
      spec, strerror(errno));
  return (-1);
 }

 *fsid = buf.f_fsid;

 return (0);
}
