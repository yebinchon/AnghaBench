
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_uint64 ;
typedef int r ;
struct TYPE_4__ {scalar_t__ zTempFile; scalar_t__ db; } ;
typedef TYPE_1__ ShellState ;


 int SQLITE_FCNTL_TEMPFILENAME ;
 int clearTempFile (TYPE_1__*) ;
 int exit (int) ;
 int raw_printf (int ,char*) ;
 int sqlite3_file_control (scalar_t__,int ,int ,scalar_t__*) ;
 int sqlite3_free (scalar_t__) ;
 void* sqlite3_mprintf (char*,scalar_t__,char const*) ;
 int sqlite3_randomness (int,scalar_t__*) ;
 int stderr ;

__attribute__((used)) static void newTempFile(ShellState *p, const char *zSuffix){
  clearTempFile(p);
  sqlite3_free(p->zTempFile);
  p->zTempFile = 0;
  if( p->db ){
    sqlite3_file_control(p->db, 0, SQLITE_FCNTL_TEMPFILENAME, &p->zTempFile);
  }
  if( p->zTempFile==0 ){
    sqlite3_uint64 r;
    sqlite3_randomness(sizeof(r), &r);
    p->zTempFile = sqlite3_mprintf("temp%llx.%s", r, zSuffix);
  }else{
    p->zTempFile = sqlite3_mprintf("%z.%s", p->zTempFile, zSuffix);
  }
  if( p->zTempFile==0 ){
    raw_printf(stderr, "out of memory\n");
    exit(1);
  }
}
