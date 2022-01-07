
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int FILE ;


 int NUMBER ;
 int convert_num (unsigned char*,char*,int,int) ;
 int next_token (char**,int *) ;
 int ntohl (int ) ;
 int parse_semi (int *) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

void
parse_lease_time(FILE *cfile, time_t *timep)
{
 char *val;
 int token;

 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("Expecting numeric lease time");
  skip_to_semi(cfile);
  return;
 }
 convert_num((unsigned char *)timep, val, 10, 32);

 *timep = ntohl(*timep);

 parse_semi(cfile);
}
