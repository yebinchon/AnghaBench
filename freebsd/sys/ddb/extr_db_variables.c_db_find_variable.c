
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_variable {int name; } ;


 struct db_variable* db_eregs ;
 int db_error (char*) ;
 struct db_variable* db_evars ;
 int db_read_token () ;
 struct db_variable* db_regs ;
 int db_tok_string ;
 struct db_variable* db_vars ;
 int strcmp (int ,int ) ;
 int tIDENT ;

__attribute__((used)) static int
db_find_variable(struct db_variable **varp)
{
 struct db_variable *vp;
 int t;

 t = db_read_token();
 if (t == tIDENT) {
  for (vp = db_vars; vp < db_evars; vp++) {
   if (!strcmp(db_tok_string, vp->name)) {
    *varp = vp;
    return (1);
   }
  }
  for (vp = db_regs; vp < db_eregs; vp++) {
   if (!strcmp(db_tok_string, vp->name)) {
    *varp = vp;
    return (1);
   }
  }
 }
 db_error("Unknown variable\n");
 return (0);
}
