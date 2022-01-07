
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hostname; int type; scalar_t__ timestamp; } ;
typedef int FILE ;


 char DIR_SEP ;
 scalar_t__ EEXIST ;
 int FALSE ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int TRUE ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,unsigned long long,int ,int ) ;
 TYPE_1__** kod_db ;
 int kod_db_cnt ;
 char* kod_db_file ;
 int mkdir (char*,int) ;
 int msyslog (int ,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

int
write_kod_db(void)
{
 FILE *db_s;
 char *pch;
 int dirmode;
 register int a;

 db_s = fopen(kod_db_file, "w");





 if (((void*)0) == db_s && strlen(kod_db_file)) {
  dirmode = S_IRUSR | S_IWUSR | S_IXUSR
   | S_IRGRP | S_IXGRP
   | S_IROTH | S_IXOTH;
  pch = strchr(kod_db_file + 1, DIR_SEP);
  while (((void*)0) != pch) {
   *pch = '\0';
   if (-1 == mkdir(kod_db_file, dirmode)
       && errno != EEXIST) {
    msyslog(LOG_ERR, "mkdir(%s) failed: %m",
     kod_db_file);
    return FALSE;
   }
   *pch = DIR_SEP;
   pch = strchr(pch + 1, DIR_SEP);
  }
  db_s = fopen(kod_db_file, "w");
 }

 if (((void*)0) == db_s) {
  msyslog(LOG_WARNING, "Can't open KOD db file %s for writing: %m",
   kod_db_file);

  return FALSE;
 }

 for (a = 0; a < kod_db_cnt; a++) {
  fprintf(db_s, "%16.16llx %s %s\n", (unsigned long long)
   kod_db[a]->timestamp, kod_db[a]->type,
   kod_db[a]->hostname);
 }

 fflush(db_s);
 fclose(db_s);

 return TRUE;
}
