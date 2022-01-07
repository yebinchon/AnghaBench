
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BSDCPIO_VERSION_STRING ;
 char* archive_version_details () ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stdout ;

__attribute__((used)) static void
version(void)
{
 fprintf(stdout,"bsdcpio %s - %s \n",
     BSDCPIO_VERSION_STRING,
     archive_version_details());
 exit(0);
}
