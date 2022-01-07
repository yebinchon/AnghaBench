
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* AUDITFILTERD_CONFFILE ;
 char* AUDITFILTERD_PIPEFILE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "auditfilterd [-d] [-c conffile] [-p pipefile]"
     " [-t trailfile]\n");
 fprintf(stderr, "  -c    Specify configuration file (default: %s)\n",
     AUDITFILTERD_CONFFILE);
 fprintf(stderr, "  -d    Debugging mode, don't daemonize\n");
 fprintf(stderr, "  -p    Specify pipe file (default: %s)\n",
     AUDITFILTERD_PIPEFILE);
 fprintf(stderr, "  -t    Specify audit trail file (default: none)\n");
 exit(-1);
}
