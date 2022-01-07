
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int gid_t ;


 int ASL_FILTER_MASK_UPTO (int ) ;
 int ASL_KEY_READ_GID ;
 int ASL_KEY_READ_UID ;
 int ASL_LEVEL_DEBUG ;
 int ASL_LEVEL_INFO ;
 int ASL_OPT_STDERR ;
 int ASL_TYPE_MSG ;
 int asl_new (int ) ;
 int asl_open (char*,char*,int ) ;
 int asl_set (int ,int ,char*) ;
 int asl_set_filter (int ,int ) ;
 int asprintf (char**,char*,int ) ;
 int au_aslclient ;
 int au_aslmsg ;
 int free (char*) ;

void
auditd_openlog(int debug, gid_t gid)
{
 uint32_t opt = 0;
 char *cp = ((void*)0);

 if (debug)
  opt = ASL_OPT_STDERR;

 au_aslclient = asl_open("auditd", "com.apple.auditd", opt);
 au_aslmsg = asl_new(ASL_TYPE_MSG);
 if (debug)
  asl_set_filter(au_aslclient,
      ASL_FILTER_MASK_UPTO(ASL_LEVEL_DEBUG));
 else
  asl_set_filter(au_aslclient,
      ASL_FILTER_MASK_UPTO(ASL_LEVEL_INFO));
}
