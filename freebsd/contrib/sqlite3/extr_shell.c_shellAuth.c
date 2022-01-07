
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; } ;
typedef TYPE_1__ ShellState ;


 int SQLITE_OK ;
 int output_c_string (int ,char const*) ;
 int raw_printf (int ,char*) ;
 int utf8_printf (int ,char*,char const*) ;

__attribute__((used)) static int shellAuth(
  void *pClientData,
  int op,
  const char *zA1,
  const char *zA2,
  const char *zA3,
  const char *zA4
){
  ShellState *p = (ShellState*)pClientData;
  static const char *azAction[] = { 0,
     "CREATE_INDEX", "CREATE_TABLE", "CREATE_TEMP_INDEX",
     "CREATE_TEMP_TABLE", "CREATE_TEMP_TRIGGER", "CREATE_TEMP_VIEW",
     "CREATE_TRIGGER", "CREATE_VIEW", "DELETE",
     "DROP_INDEX", "DROP_TABLE", "DROP_TEMP_INDEX",
     "DROP_TEMP_TABLE", "DROP_TEMP_TRIGGER", "DROP_TEMP_VIEW",
     "DROP_TRIGGER", "DROP_VIEW", "INSERT",
     "PRAGMA", "READ", "SELECT",
     "TRANSACTION", "UPDATE", "ATTACH",
     "DETACH", "ALTER_TABLE", "REINDEX",
     "ANALYZE", "CREATE_VTABLE", "DROP_VTABLE",
     "FUNCTION", "SAVEPOINT", "RECURSIVE"
  };
  int i;
  const char *az[4];
  az[0] = zA1;
  az[1] = zA2;
  az[2] = zA3;
  az[3] = zA4;
  utf8_printf(p->out, "authorizer: %s", azAction[op]);
  for(i=0; i<4; i++){
    raw_printf(p->out, " ");
    if( az[i] ){
      output_c_string(p->out, az[i]);
    }else{
      raw_printf(p->out, "NULL");
    }
  }
  raw_printf(p->out, "\n");
  return SQLITE_OK;
}
