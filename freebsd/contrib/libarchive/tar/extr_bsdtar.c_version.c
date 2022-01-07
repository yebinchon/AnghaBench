
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BSDTAR_VERSION_STRING ;
 char* archive_version_details () ;
 int exit (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
version(void)
{
 printf("bsdtar %s - %s \n",
     BSDTAR_VERSION_STRING,
     archive_version_details());
 exit(0);
}
