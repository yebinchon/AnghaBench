
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RES ;


 int atoi (char*) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int verbosity ;

__attribute__((used)) static void
do_verbosity(RES* ssl, char* str)
{
 int val = atoi(str);
 if(val == 0 && strcmp(str, "0") != 0) {
  ssl_printf(ssl, "error in verbosity number syntax: %s\n", str);
  return;
 }
 verbosity = val;
 send_ok(ssl);
}
