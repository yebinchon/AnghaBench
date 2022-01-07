
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LIBXO_VERSION ;
 int LIBXO_VERSION_EXTRA ;
 int fprintf (int ,char*,char*,int ) ;
 int stderr ;
 char* xo_version ;
 int xo_version_extra ;

__attribute__((used)) static void
print_version (void)
{
    fprintf(stderr, "libxo version %s%s\n",
     xo_version, xo_version_extra);
    fprintf(stderr, "xo version %s%s\n",
     LIBXO_VERSION, LIBXO_VERSION_EXTRA);
}
