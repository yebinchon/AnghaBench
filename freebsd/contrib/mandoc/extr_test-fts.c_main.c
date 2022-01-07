
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;
typedef int FTS ;


 int FTS_NOCHDIR ;
 int FTS_PHYSICAL ;
 int FTS_SKIP ;
 scalar_t__ fts_close (int *) ;
 int fts_compare ;
 int * fts_open (char* const*,int,int ) ;
 int * fts_read (int *) ;
 scalar_t__ fts_set (int *,int *,int ) ;
 int perror (char*) ;

int
main(void)
{
 const char *argv[2];
 FTS *ftsp;
 FTSENT *entry;

 argv[0] = ".";
 argv[1] = (char *)((void*)0);

 ftsp = fts_open((char * const *)argv,
     FTS_PHYSICAL | FTS_NOCHDIR, fts_compare);

 if (ftsp == ((void*)0)) {
  perror("fts_open");
  return 1;
 }

 entry = fts_read(ftsp);

 if (entry == ((void*)0)) {
  perror("fts_read");
  return 1;
 }

 if (fts_set(ftsp, entry, FTS_SKIP) != 0) {
  perror("fts_set");
  return 1;
 }

 if (fts_close(ftsp) != 0) {
  perror("fts_close");
  return 1;
 }

 return 0;
}
