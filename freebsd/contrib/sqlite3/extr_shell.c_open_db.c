
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ db; int openMode; scalar_t__* zDbFilename; scalar_t__ szMax; } ;
typedef TYPE_1__ ShellState ;


 int OPEN_DB_KEEPALIVE ;
 int OPEN_DB_ZIPFILE ;







 int SQLITE_DESERIALIZE_FREEONCLOSE ;
 int SQLITE_DESERIALIZE_RESIZEABLE ;
 int SQLITE_FCNTL_SIZE_LIMIT ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READONLY ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_UTF8 ;
 scalar_t__ deduceDatabaseType (scalar_t__*,int) ;
 int editFunc ;
 int exit (int) ;
 scalar_t__ globalDb ;
 scalar_t__ readFile (char*,int*) ;
 unsigned char* readHexDb (TYPE_1__*,int*) ;
 int shellAddSchemaName ;
 int shellEscapeCrnl ;
 int shellIdQuote ;
 int shellInt32 ;
 int shellModuleSchema ;
 int shellPutsFunc ;
 int sqlite3_completion_init (scalar_t__,int ,int ) ;
 int sqlite3_create_function (scalar_t__,char*,int,int ,TYPE_1__*,int ,int ,int ) ;
 int sqlite3_dbdata_init (scalar_t__,int ,int ) ;
 int sqlite3_deserialize (scalar_t__,char*,unsigned char*,int,int,int) ;
 int sqlite3_enable_load_extension (scalar_t__,int) ;
 scalar_t__ sqlite3_errcode (scalar_t__) ;
 int sqlite3_errmsg (scalar_t__) ;
 int sqlite3_exec (scalar_t__,char*,int ,int ,int ) ;
 int sqlite3_file_control (scalar_t__,char*,int ,scalar_t__*) ;
 int sqlite3_fileio_init (scalar_t__,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int sqlite3_open (char*,scalar_t__*) ;
 int sqlite3_open_v2 (scalar_t__*,scalar_t__*,int,char*) ;
 int sqlite3_shathree_init (scalar_t__,int ,int ) ;
 int sqlite3_sqlar_init (scalar_t__,int ,int ) ;
 int sqlite3_zipfile_init (scalar_t__,int ,int ) ;
 int stderr ;
 int utf8_printf (int ,char*,...) ;

__attribute__((used)) static void open_db(ShellState *p, int openFlags){
  if( p->db==0 ){
    if( p->openMode==129 ){
      if( p->zDbFilename==0 || p->zDbFilename[0]==0 ){
        p->openMode = 131;
      }else{
        p->openMode = (u8)deduceDatabaseType(p->zDbFilename,
                             (openFlags & OPEN_DB_ZIPFILE)!=0);
      }
    }
    switch( p->openMode ){
      case 134: {
        sqlite3_open_v2(p->zDbFilename, &p->db,
           SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE, "apndvfs");
        break;
      }
      case 132:
      case 133: {
        sqlite3_open(0, &p->db);
        break;
      }
      case 128: {
        sqlite3_open(":memory:", &p->db);
        break;
      }
      case 130: {
        sqlite3_open_v2(p->zDbFilename, &p->db, SQLITE_OPEN_READONLY, 0);
        break;
      }
      case 129:
      case 131: {
        sqlite3_open(p->zDbFilename, &p->db);
        break;
      }
    }
    globalDb = p->db;
    if( p->db==0 || SQLITE_OK!=sqlite3_errcode(p->db) ){
      utf8_printf(stderr,"Error: unable to open database \"%s\": %s\n",
          p->zDbFilename, sqlite3_errmsg(p->db));
      if( openFlags & OPEN_DB_KEEPALIVE ){
        sqlite3_open(":memory:", &p->db);
        return;
      }
      exit(1);
    }

    sqlite3_enable_load_extension(p->db, 1);

    sqlite3_fileio_init(p->db, 0, 0);
    sqlite3_shathree_init(p->db, 0, 0);
    sqlite3_completion_init(p->db, 0, 0);







    sqlite3_create_function(p->db, "shell_add_schema", 3, SQLITE_UTF8, 0,
                            shellAddSchemaName, 0, 0);
    sqlite3_create_function(p->db, "shell_module_schema", 1, SQLITE_UTF8, 0,
                            shellModuleSchema, 0, 0);
    sqlite3_create_function(p->db, "shell_putsnl", 1, SQLITE_UTF8, p,
                            shellPutsFunc, 0, 0);
    sqlite3_create_function(p->db, "shell_escape_crnl", 1, SQLITE_UTF8, 0,
                            shellEscapeCrnl, 0, 0);
    sqlite3_create_function(p->db, "shell_int32", 2, SQLITE_UTF8, 0,
                            shellInt32, 0, 0);
    sqlite3_create_function(p->db, "shell_idquote", 1, SQLITE_UTF8, 0,
                            shellIdQuote, 0, 0);

    sqlite3_create_function(p->db, "edit", 1, SQLITE_UTF8, 0,
                            editFunc, 0, 0);
    sqlite3_create_function(p->db, "edit", 2, SQLITE_UTF8, 0,
                            editFunc, 0, 0);

    if( p->openMode==128 ){
      char *zSql = sqlite3_mprintf(
         "CREATE VIRTUAL TABLE zip USING zipfile(%Q);", p->zDbFilename);
      sqlite3_exec(p->db, zSql, 0, 0, 0);
      sqlite3_free(zSql);
    }
  }
}
