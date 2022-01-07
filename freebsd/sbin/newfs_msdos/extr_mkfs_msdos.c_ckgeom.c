
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ MAXU16 ;
 int warnx (char*,char const*,char const*,...) ;

__attribute__((used)) static int
ckgeom(const char *fname, u_int val, const char *msg)
{
    if (!val) {
 warnx("%s: no default %s", fname, msg);
 return -1;
    }
    if (val > MAXU16) {
 warnx("%s: illegal %s %d", fname, msg, val);
 return -1;
    }
    return 0;
}
