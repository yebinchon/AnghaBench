
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EX_USAGE ;
 int fprintf (int *,char*,char*) ;
 int * stderr ;
 int * stdout ;

int
usage(bool explicit)
{
 FILE *fp;

 fp = explicit ? stdout : stderr;
 fprintf(fp, "%s",
     "usage:\tbectl {-h | -? | subcommand [args...]}\n"



     "\tbectl activate [-t] beName\n"
     "\tbectl check\n"
     "\tbectl create [-r] [-e {nonActiveBe | beName@snapshot}] beName\n"
     "\tbectl create [-r] beName@snapshot\n"
     "\tbectl destroy [-F] {beName | beName@snapshot}\n"
     "\tbectl export sourceBe\n"
     "\tbectl import targetBe\n"
     "\tbectl jail {-b | -U} [{-o key=value | -u key}]... "
     "{jailID | jailName}\n"
     "\t      bootenv [utility [argument ...]]\n"
     "\tbectl list [-DHas] [{-c property | -C property}]\n"
     "\tbectl mount beName [mountpoint]\n"
     "\tbectl rename origBeName newBeName\n"
     "\tbectl {ujail | unjail} {jailID | jailName} bootenv\n"
     "\tbectl {umount | unmount} [-f] beName\n");

 return (explicit ? 0 : EX_USAGE);
}
