
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
 "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
 "usage: bsdlabel disk",
 "\t\t(to read label)",
 "	bsdlabel -w [-n] [-m machine] disk [type]",
 "\t\t(to write label with existing boot program)",
 "	bsdlabel -e [-n] [-m machine] disk",
 "\t\t(to edit label)",
 "	bsdlabel -R [-n] [-m machine] disk protofile",
 "\t\t(to restore label with existing boot program)",
 "	bsdlabel -B [-b boot] [-m machine] disk",
 "\t\t(to install boot program with existing on-disk label)",
 "	bsdlabel -w -B [-n] [-b boot] [-m machine] disk [type]",
 "\t\t(to write label and install boot program)",
 "	bsdlabel -R -B [-n] [-b boot] [-m machine] disk protofile",
  "\t\t(to restore label and install boot program)"
 );
 exit(1);
}
