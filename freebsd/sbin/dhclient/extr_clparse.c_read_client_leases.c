
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int LEASE ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int new_parse (int ) ;
 int next_token (char**,int *) ;
 int parse_client_lease_statement (int *,int ) ;
 int path_dhclient_db ;
 int skip_to_semi (int *) ;
 int warning (char*) ;

void
read_client_leases(void)
{
 FILE *cfile;
 char *val;
 int token;

 new_parse(path_dhclient_db);



 if ((cfile = fopen(path_dhclient_db, "r")) == ((void*)0))
  return;
 do {
  token = next_token(&val, cfile);
  if (token == EOF)
   break;
  if (token != LEASE) {
   warning("Corrupt lease file - possible data loss!");
   skip_to_semi(cfile);
   break;
  } else
   parse_client_lease_statement(cfile, 0);

 } while (1);
 fclose(cfile);
}
