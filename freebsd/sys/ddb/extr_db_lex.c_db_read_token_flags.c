
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRT_VALID_FLAGS_MASK ;
 int MPASS (int) ;
 int db_lex (int) ;
 int db_look_token ;

int
db_read_token_flags(int flags)
{
 int t;

 MPASS((flags & ~(DRT_VALID_FLAGS_MASK)) == 0);

 if (db_look_token) {
     t = db_look_token;
     db_look_token = 0;
 }
 else
     t = db_lex(flags);
 return (t);
}
