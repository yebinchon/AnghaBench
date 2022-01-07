
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_script {int ds_script; int ds_scriptname; } ;


 int ENOSPC ;
 struct ddb_script* db_script_lookup (char const*) ;
 struct ddb_script* db_script_new () ;
 int db_script_valid (char const*,char const*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
db_script_set(const char *scriptname, const char *script)
{
 struct ddb_script *dsp;
 int error;

 error = db_script_valid(scriptname, script);
 if (error)
  return (error);
 dsp = db_script_lookup(scriptname);
 if (dsp == ((void*)0)) {
  dsp = db_script_new();
  if (dsp == ((void*)0))
   return (ENOSPC);
  strlcpy(dsp->ds_scriptname, scriptname,
      sizeof(dsp->ds_scriptname));
 }
 strlcpy(dsp->ds_script, script, sizeof(dsp->ds_script));
 return (0);
}
