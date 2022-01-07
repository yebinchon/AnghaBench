
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumpdates {int dd_ddate; int dd_level; int dd_name; } ;
typedef int FILE ;


 scalar_t__ DUMPFMTLEN ;
 char* DUMPOUTFMT ;
 int ctime (int *) ;
 int dumpdates ;
 int errno ;
 scalar_t__ fprintf (int *,char*,scalar_t__,int ,int ,int ) ;
 int quit (char*,int ,scalar_t__) ;
 scalar_t__ strerror (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
dumprecout(FILE *file, const struct dumpdates *what)
{

 if (strlen(what->dd_name) > DUMPFMTLEN)
  quit("Name '%s' exceeds DUMPFMTLEN (%d) bytes\n",
      what->dd_name, DUMPFMTLEN);
 if (fprintf(file, DUMPOUTFMT, DUMPFMTLEN, what->dd_name,
       what->dd_level, ctime(&what->dd_ddate)) < 0)
  quit("%s: %s\n", dumpdates, strerror(errno));
}
