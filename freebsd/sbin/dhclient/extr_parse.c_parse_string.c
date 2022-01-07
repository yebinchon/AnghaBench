
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int STRING ;
 int error (char*,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int next_token (char**,int *) ;
 int parse_semi (int *) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;
 int strlen (char*) ;

char *
parse_string(FILE *cfile)
{
 char *val, *s;
 size_t valsize;
 int token;

 token = next_token(&val, cfile);
 if (token != STRING) {
  parse_warn("filename must be a string");
  skip_to_semi(cfile);
  return (((void*)0));
 }
 valsize = strlen(val) + 1;
 s = malloc(valsize);
 if (!s)
  error("no memory for string %s.", val);
 memcpy(s, val, valsize);

 if (!parse_semi(cfile)) {
  free(s);
  return (((void*)0));
 }
 return (s);
}
