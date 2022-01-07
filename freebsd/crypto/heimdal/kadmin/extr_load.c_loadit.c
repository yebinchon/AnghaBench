
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 int doit (char*,int) ;
 int krb5_warnx (int ,char*,char const*) ;
 int local_flag ;

__attribute__((used)) static int
loadit(int mergep, const char *name, int argc, char **argv)
{
    if(!local_flag) {
 krb5_warnx(context, "%s is only available in local (-l) mode", name);
 return 0;
    }

    return doit(argv[0], mergep);
}
