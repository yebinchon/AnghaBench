
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int writableSchema; char* zDestTable; int mode; int cMode; int nErr; int db; int out; } ;
struct TYPE_8__ {char* z; } ;
typedef TYPE_1__ ShellText ;
typedef TYPE_2__ ShellState ;


 int MODE_Insert ;
 int SQLITE_CORRUPT ;
 int UNUSED_PARAMETER (char**) ;
 int appendText (TYPE_1__*,char const*,int ) ;
 int freeColumnList (char**) ;
 int freeText (TYPE_1__*) ;
 int initText (TYPE_1__*) ;
 int printSchemaLine (int ,char const*,char*) ;
 int quoteChar (char const*) ;
 int raw_printf (int ,char*) ;
 int shell_exec (TYPE_2__*,char*,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*,char const*,char const*) ;
 scalar_t__ sqlite3_strglob (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char** tableColumnList (TYPE_2__*,char const*) ;
 int toggleSelectOrder (int ) ;
 int utf8_printf (int ,char*,char*) ;

__attribute__((used)) static int dump_callback(void *pArg, int nArg, char **azArg, char **azNotUsed){
  int rc;
  const char *zTable;
  const char *zType;
  const char *zSql;
  ShellState *p = (ShellState *)pArg;

  UNUSED_PARAMETER(azNotUsed);
  if( nArg!=3 || azArg==0 ) return 0;
  zTable = azArg[0];
  zType = azArg[1];
  zSql = azArg[2];

  if( strcmp(zTable, "sqlite_sequence")==0 ){
    raw_printf(p->out, "DELETE FROM sqlite_sequence;\n");
  }else if( sqlite3_strglob("sqlite_stat?", zTable)==0 ){
    raw_printf(p->out, "ANALYZE sqlite_master;\n");
  }else if( strncmp(zTable, "sqlite_", 7)==0 ){
    return 0;
  }else if( strncmp(zSql, "CREATE VIRTUAL TABLE", 20)==0 ){
    char *zIns;
    if( !p->writableSchema ){
      raw_printf(p->out, "PRAGMA writable_schema=ON;\n");
      p->writableSchema = 1;
    }
    zIns = sqlite3_mprintf(
       "INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)"
       "VALUES('table','%q','%q',0,'%q');",
       zTable, zTable, zSql);
    utf8_printf(p->out, "%s\n", zIns);
    sqlite3_free(zIns);
    return 0;
  }else{
    printSchemaLine(p->out, zSql, ";\n");
  }

  if( strcmp(zType, "table")==0 ){
    ShellText sSelect;
    ShellText sTable;
    char **azCol;
    int i;
    char *savedDestTable;
    int savedMode;

    azCol = tableColumnList(p, zTable);
    if( azCol==0 ){
      p->nErr++;
      return 0;
    }



    initText(&sTable);
    appendText(&sTable, zTable, quoteChar(zTable));




    if( azCol[0] ){
      appendText(&sTable, "(", 0);
      appendText(&sTable, azCol[0], 0);
      for(i=1; azCol[i]; i++){
        appendText(&sTable, ",", 0);
        appendText(&sTable, azCol[i], quoteChar(azCol[i]));
      }
      appendText(&sTable, ")", 0);
    }


    initText(&sSelect);
    appendText(&sSelect, "SELECT ", 0);
    if( azCol[0] ){
      appendText(&sSelect, azCol[0], 0);
      appendText(&sSelect, ",", 0);
    }
    for(i=1; azCol[i]; i++){
      appendText(&sSelect, azCol[i], quoteChar(azCol[i]));
      if( azCol[i+1] ){
        appendText(&sSelect, ",", 0);
      }
    }
    freeColumnList(azCol);
    appendText(&sSelect, " FROM ", 0);
    appendText(&sSelect, zTable, quoteChar(zTable));

    savedDestTable = p->zDestTable;
    savedMode = p->mode;
    p->zDestTable = sTable.z;
    p->mode = p->cMode = MODE_Insert;
    rc = shell_exec(p, sSelect.z, 0);
    if( (rc&0xff)==SQLITE_CORRUPT ){
      raw_printf(p->out, "/****** CORRUPTION ERROR *******/\n");
      toggleSelectOrder(p->db);
      shell_exec(p, sSelect.z, 0);
      toggleSelectOrder(p->db);
    }
    p->zDestTable = savedDestTable;
    p->mode = savedMode;
    freeText(&sTable);
    freeText(&sSelect);
    if( rc ) p->nErr++;
  }
  return 0;
}
