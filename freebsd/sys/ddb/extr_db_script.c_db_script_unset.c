
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_script {int ds_script; int ds_scriptname; } ;


 int ENOENT ;
 struct ddb_script* db_script_lookup (char const*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
db_script_unset(const char *scriptname)
{
 struct ddb_script *dsp;

 dsp = db_script_lookup(scriptname);
 if (dsp == ((void*)0))
  return (ENOENT);
 strcpy(dsp->ds_scriptname, "");
 strcpy(dsp->ds_script, "");
 return (0);
}
