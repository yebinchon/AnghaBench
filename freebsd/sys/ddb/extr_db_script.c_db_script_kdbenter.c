
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scriptname ;


 int DB_MAXSCRIPTNAME ;
 char* DB_SCRIPT_KDBENTER_DEFAULT ;
 char* DB_SCRIPT_KDBENTER_PREFIX ;
 scalar_t__ ENOENT ;
 scalar_t__ db_script_exec (char*,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;

void
db_script_kdbenter(const char *eventname)
{
 char scriptname[DB_MAXSCRIPTNAME];

 snprintf(scriptname, sizeof(scriptname), "%s.%s",
     DB_SCRIPT_KDBENTER_PREFIX, eventname);
 if (db_script_exec(scriptname, 0) == ENOENT)
  (void)db_script_exec(DB_SCRIPT_KDBENTER_DEFAULT, 0);
}
