
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfstestargs {char* ta_devpath; char ta_cleanerloop; char* ta_mntpath; int ta_hostpath; } ;


 int MAXPATHLEN ;
 int RUMP_ETFS_CHR ;
 int __UNCONST (char const**) ;
 int lfs_cleaner_main (int,int ) ;
 int opterr ;
 int optind ;
 int rump_pub_etfs_register (char*,int ,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void *
cleaner(void *arg)
{
 char thepath[MAXPATHLEN];
 struct lfstestargs *args = arg;
 const char *the_argv[7];
 char buf[64];


 sprintf(thepath, "/dev/r%s", args->ta_devpath+5);
 rump_pub_etfs_register(thepath, args->ta_hostpath, RUMP_ETFS_CHR);
 sprintf(buf, "%p", &args->ta_cleanerloop);

 the_argv[0] = "megamaid";
 the_argv[1] = "-D";
 the_argv[2] = "-S";
 the_argv[3] = buf;
 the_argv[4] = args->ta_mntpath;
 the_argv[5] = ((void*)0);


 optind = 1;
 opterr = 1;

 lfs_cleaner_main(5, __UNCONST(the_argv));

 return ((void*)0);
}
