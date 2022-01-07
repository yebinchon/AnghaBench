
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tbuf ;
struct dumpdates {scalar_t__ dd_ddate; int dd_level; int dd_name; } ;
typedef int FILE ;


 int BUFSIZ ;
 char* ctime (scalar_t__*) ;
 int dumpdates ;
 char* fgets (char*,int,int *) ;
 scalar_t__ makedumpdate (struct dumpdates*,char*) ;
 int msg (char*,int ,int ,...) ;
 scalar_t__ recno ;

__attribute__((used)) static int
getrecord(FILE *df, struct dumpdates *ddatep)
{
 char tbuf[BUFSIZ];

 recno = 0;
 if ( (fgets(tbuf, sizeof (tbuf), df)) != tbuf)
  return(-1);
 recno++;
 if (makedumpdate(ddatep, tbuf) < 0)
  msg("Unknown intermediate format in %s, line %d\n",
   dumpdates, recno);





 return(0);
}
