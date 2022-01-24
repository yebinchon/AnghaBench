#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {scalar_t__ db; int openMode; scalar_t__* zDbFilename; scalar_t__ szMax; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int OPEN_DB_KEEPALIVE ; 
 int OPEN_DB_ZIPFILE ; 
#define  SHELL_OPEN_APPENDVFS 134 
#define  SHELL_OPEN_DESERIALIZE 133 
#define  SHELL_OPEN_HEXDB 132 
#define  SHELL_OPEN_NORMAL 131 
#define  SHELL_OPEN_READONLY 130 
#define  SHELL_OPEN_UNSPEC 129 
#define  SHELL_OPEN_ZIPFILE 128 
 int SQLITE_DESERIALIZE_FREEONCLOSE ; 
 int SQLITE_DESERIALIZE_RESIZEABLE ; 
 int /*<<< orphan*/  SQLITE_FCNTL_SIZE_LIMIT ; 
 scalar_t__ SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_READONLY ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  editFunc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ globalDb ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 unsigned char* FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  shellAddSchemaName ; 
 int /*<<< orphan*/  shellEscapeCrnl ; 
 int /*<<< orphan*/  shellIdQuote ; 
 int /*<<< orphan*/  shellInt32 ; 
 int /*<<< orphan*/  shellModuleSchema ; 
 int /*<<< orphan*/  shellPutsFunc ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,char*,unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,scalar_t__*,int,char*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC22(ShellState *p, int openFlags){
  if( p->db==0 ){
    if( p->openMode==SHELL_OPEN_UNSPEC ){
      if( p->zDbFilename==0 || p->zDbFilename[0]==0 ){
        p->openMode = SHELL_OPEN_NORMAL;
      }else{
        p->openMode = (u8)FUNC0(p->zDbFilename, 
                             (openFlags & OPEN_DB_ZIPFILE)!=0);
      }
    }
    switch( p->openMode ){
      case SHELL_OPEN_APPENDVFS: {
        FUNC17(p->zDbFilename, &p->db, 
           SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE, "apndvfs");
        break;
      }
      case SHELL_OPEN_HEXDB:
      case SHELL_OPEN_DESERIALIZE: {
        FUNC16(0, &p->db);
        break;
      }
      case SHELL_OPEN_ZIPFILE: {
        FUNC16(":memory:", &p->db);
        break;
      }
      case SHELL_OPEN_READONLY: {
        FUNC17(p->zDbFilename, &p->db, SQLITE_OPEN_READONLY, 0);
        break;
      }
      case SHELL_OPEN_UNSPEC:
      case SHELL_OPEN_NORMAL: {
        FUNC16(p->zDbFilename, &p->db);
        break;
      }
    }
    globalDb = p->db;
    if( p->db==0 || SQLITE_OK!=FUNC9(p->db) ){
      FUNC21(stderr,"Error: unable to open database \"%s\": %s\n",
          p->zDbFilename, FUNC10(p->db));
      if( openFlags & OPEN_DB_KEEPALIVE ){
        FUNC16(":memory:", &p->db);
        return;
      }
      FUNC1(1);
    }
#ifndef SQLITE_OMIT_LOAD_EXTENSION
    FUNC8(p->db, 1);
#endif
    FUNC13(p->db, 0, 0);
    FUNC18(p->db, 0, 0);
    FUNC4(p->db, 0, 0);
#if !defined(SQLITE_OMIT_VIRTUALTABLE) && defined(SQLITE_ENABLE_DBPAGE_VTAB)
    sqlite3_dbdata_init(p->db, 0, 0);
#endif
#ifdef SQLITE_HAVE_ZLIB
    sqlite3_zipfile_init(p->db, 0, 0);
    sqlite3_sqlar_init(p->db, 0, 0);
#endif
    FUNC5(p->db, "shell_add_schema", 3, SQLITE_UTF8, 0,
                            shellAddSchemaName, 0, 0);
    FUNC5(p->db, "shell_module_schema", 1, SQLITE_UTF8, 0,
                            shellModuleSchema, 0, 0);
    FUNC5(p->db, "shell_putsnl", 1, SQLITE_UTF8, p,
                            shellPutsFunc, 0, 0);
    FUNC5(p->db, "shell_escape_crnl", 1, SQLITE_UTF8, 0,
                            shellEscapeCrnl, 0, 0);
    FUNC5(p->db, "shell_int32", 2, SQLITE_UTF8, 0,
                            shellInt32, 0, 0);
    FUNC5(p->db, "shell_idquote", 1, SQLITE_UTF8, 0,
                            shellIdQuote, 0, 0);
#ifndef SQLITE_NOHAVE_SYSTEM
    FUNC5(p->db, "edit", 1, SQLITE_UTF8, 0,
                            editFunc, 0, 0);
    FUNC5(p->db, "edit", 2, SQLITE_UTF8, 0,
                            editFunc, 0, 0);
#endif
    if( p->openMode==SHELL_OPEN_ZIPFILE ){
      char *zSql = FUNC15(
         "CREATE VIRTUAL TABLE zip USING zipfile(%Q);", p->zDbFilename);
      FUNC11(p->db, zSql, 0, 0, 0);
      FUNC14(zSql);
    }
#ifdef SQLITE_ENABLE_DESERIALIZE
    else
    if( p->openMode==SHELL_OPEN_DESERIALIZE || p->openMode==SHELL_OPEN_HEXDB ){
      int rc;
      int nData = 0;
      unsigned char *aData;
      if( p->openMode==SHELL_OPEN_DESERIALIZE ){
        aData = (unsigned char*)readFile(p->zDbFilename, &nData);
      }else{
        aData = readHexDb(p, &nData);
        if( aData==0 ){
          return;
        }
      }
      rc = sqlite3_deserialize(p->db, "main", aData, nData, nData,
                   SQLITE_DESERIALIZE_RESIZEABLE |
                   SQLITE_DESERIALIZE_FREEONCLOSE);
      if( rc ){
        utf8_printf(stderr, "Error: sqlite3_deserialize() returns %d\n", rc);
      }
      if( p->szMax>0 ){
        sqlite3_file_control(p->db, "main", SQLITE_FCNTL_SIZE_LIMIT, &p->szMax);
      }
    }
#endif
  }
}