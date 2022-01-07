
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntopt {char* m_option; scalar_t__ m_flag; } ;


 int EX_USAGE ;
 int __usage_short () ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 struct mntopt* mopts ;
 int stderr ;

void
usage(void)
{
 struct mntopt *mo;

 __usage_short();

 fprintf(stderr, "known options:\n");
 for (mo = mopts; mo->m_flag; ++mo)
  fprintf(stderr, "\t%s\n", mo->m_option);

 fprintf(stderr, "\n(use -h for a detailed description of these options)\n");
 exit(EX_USAGE);
}
