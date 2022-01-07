
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int __usage_short () ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int getenv (char*) ;
 int stderr ;

void
helpmsg(void)
{
 if (! getenv("MOUNT_FUSEFS_CALL_BY_LIB")) {
  __usage_short();
  fprintf(stderr, "description of options:\n");
 }






 fprintf(stderr,
         "    -o allow_other         allow access to other users\n"

         "    -o default_permissions enable permission checking by kernel\n"
  "    -o intr                interruptible mount\n"




         "    -o subtype=NAME        set filesystem type\n"
         "    -o max_read=N          set maximum size of read requests\n"
         "    -o noprivate           allow secondary mounting of the filesystem\n"
         "    -o neglect_shares      don't report EBUSY when unmount attempted\n"
         "                           in presence of secondary mounts\n"
         "    -o push_symlinks_in    prefix absolute symlinks with mountpoint\n"
         );
 exit(EX_USAGE);
}
