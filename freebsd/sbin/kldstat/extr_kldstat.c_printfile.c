
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kld_file_stat {int version; int id; int refs; char* address; char* pathname; int name; int size; } ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int POINTER_WIDTH ;
 int err (int,char*,int) ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int kldfirstmod (int) ;
 scalar_t__ kldstat (int,struct kld_file_stat*) ;
 int modfnext (int) ;
 int printf (char*,...) ;
 int printmod (int) ;

__attribute__((used)) static void
printfile(int fileid, int verbose, int humanized)
{
    struct kld_file_stat stat;
    int modid;
    char buf[5];

    stat.version = sizeof(struct kld_file_stat);
    if (kldstat(fileid, &stat) < 0) {
 err(1, "can't stat file id %d", fileid);
    } else {
 if (humanized) {
  humanize_number(buf, sizeof(buf), stat.size,
      "", HN_AUTOSCALE, HN_DECIMAL | HN_NOSPACE);

  printf("%2d %4d %*p %5s %s",
      stat.id, stat.refs, POINTER_WIDTH, stat.address, buf,
      stat.name);
 } else {
  printf("%2d %4d %*p %8zx %s",
      stat.id, stat.refs, POINTER_WIDTH, stat.address, stat.size,
      stat.name);
 }
    }

    if (verbose) {
 printf(" (%s)\n", stat.pathname);
 printf("\tContains modules:\n");
 printf("\t\t Id Name\n");
 for (modid = kldfirstmod(fileid); modid > 0;
      modid = modfnext(modid))
     printmod(modid);
    } else
 printf("\n");
}
