
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_script {int ds_script; } ;
typedef int scriptname ;
typedef int db_expr_t ;


 int DB_MAXSCRIPTNAME ;
 char* db_get_line () ;
 int db_printf (char*,...) ;
 int db_read_token () ;
 struct ddb_script* db_script_lookup (char*) ;
 int db_script_set (char*,char*) ;
 int db_skip_to_eol () ;
 int db_tok_string ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;
 int tEOL ;
 int tEQ ;
 int tIDENT ;

void
db_script_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
 char *buf, scriptname[DB_MAXSCRIPTNAME];
 struct ddb_script *dsp;
 int error, t;

 t = db_read_token();
 if (t != tIDENT) {
  db_printf("usage: script scriptname=script\n");
  db_skip_to_eol();
  return;
 }

 if (strlcpy(scriptname, db_tok_string, sizeof(scriptname)) >=
     sizeof(scriptname)) {
  db_printf("scriptname too long\n");
  db_skip_to_eol();
  return;
 }

 t = db_read_token();
 if (t == tEOL) {
  dsp = db_script_lookup(scriptname);
  if (dsp == ((void*)0)) {
   db_printf("script '%s' not found\n", scriptname);
   db_skip_to_eol();
   return;
  }
  db_printf("%s=%s\n", scriptname, dsp->ds_script);
 } else if (t == tEQ) {
  buf = db_get_line();
  if (buf[strlen(buf)-1] == '\n')
   buf[strlen(buf)-1] = '\0';
  error = db_script_set(scriptname, buf);
  if (error != 0)
   db_printf("Error: %d\n", error);
 } else
  db_printf("?\n");
 db_skip_to_eol();
}
