
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcsection {int dummy; } ;
struct rckey {int rk_value; } ;
struct rcfile {int dummy; } ;


 int ENOENT ;
 int errno ;
 struct rcsection* rc_findsect (struct rcfile*,char const*) ;
 struct rckey* rc_sect_findkey (struct rcsection*,char const*) ;
 int strtol (int ,int *,int ) ;
 int warnx (char*,int ,char const*,char const*) ;

int
rc_getint(struct rcfile *rcp, const char *section, const char *key, int *value)
{
 struct rcsection *rsp;
 struct rckey *rkp;

 rsp = rc_findsect(rcp, section);
 if (!rsp)
  return ENOENT;
 rkp = rc_sect_findkey(rsp, key);
 if (!rkp)
  return ENOENT;
 errno = 0;
 *value = strtol(rkp->rk_value, ((void*)0), 0);
 if (errno) {
  warnx("invalid int value '%s' for key '%s' in section '%s'\n", rkp->rk_value, key, section);
  return errno;
 }
 return 0;
}
