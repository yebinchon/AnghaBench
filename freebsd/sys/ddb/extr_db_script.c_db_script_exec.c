
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_script {int ds_scriptname; int ds_script; } ;
struct db_recursion_data {char* drd_buffer; } ;
typedef void* jmp_buf ;


 size_t DB_MAXSCRIPTRECURSION ;
 int E2BIG ;
 int ENOENT ;
 int db_command_script (char*) ;
 int db_command_trim (char**) ;
 int db_printf (char*,...) ;
 size_t db_recursion ;
 struct db_recursion_data* db_recursion_data ;
 struct ddb_script* db_script_lookup (char const*) ;
 void* kdb_jmpbuf (void*) ;
 scalar_t__ setjmp (void*) ;
 int strcpy (char*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
db_script_exec(const char *scriptname, int warnifnotfound)
{
 struct db_recursion_data *drd;
 struct ddb_script *dsp;
 char *buffer, *command;
 void *prev_jb;
 jmp_buf jb;

 dsp = db_script_lookup(scriptname);
 if (dsp == ((void*)0)) {
  if (warnifnotfound)
   db_printf("script '%s' not found\n", scriptname);
  return (ENOENT);
 }

 if (db_recursion >= DB_MAXSCRIPTRECURSION) {
  db_printf("Script stack too deep\n");
  return (E2BIG);
 }
 db_recursion++;
 drd = &db_recursion_data[db_recursion];




 buffer = drd->drd_buffer;
 strcpy(buffer, dsp->ds_script);
 while ((command = strsep(&buffer, ";")) != ((void*)0)) {
  db_printf("db:%d:%s> %s\n", db_recursion, dsp->ds_scriptname,
      command);
  db_command_trim(&command);
  prev_jb = kdb_jmpbuf(jb);
  if (setjmp(jb) == 0)
   db_command_script(command);
  else
   db_printf("Script command '%s' returned error\n",
       command);
  kdb_jmpbuf(prev_jb);
 }
 db_recursion--;
 return (0);
}
