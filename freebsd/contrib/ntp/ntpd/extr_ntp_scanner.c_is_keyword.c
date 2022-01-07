
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ follby ;


 scalar_t__ FOLLBY_NON_ACCEPTING ;
 int SCANNER_INIT_S ;
 char SS_CH (int ) ;
 scalar_t__ SS_FB (int ) ;
 int SS_MATCH_N (int ) ;
 int SS_OTHER_N (int ) ;
 int * sst ;

__attribute__((used)) static int
is_keyword(
 char *lexeme,
 follby *pfollowedby
 )
{
 follby fb;
 int curr_s;
 int token;
 int i;

 curr_s = SCANNER_INIT_S;
 token = 0;

 for (i = 0; lexeme[i]; i++) {
  while (curr_s && (lexeme[i] != SS_CH(sst[curr_s])))
   curr_s = SS_OTHER_N(sst[curr_s]);

  if (curr_s && (lexeme[i] == SS_CH(sst[curr_s]))) {
   if ('\0' == lexeme[i + 1]
       && FOLLBY_NON_ACCEPTING
          != SS_FB(sst[curr_s])) {
    fb = SS_FB(sst[curr_s]);
    *pfollowedby = fb;
    token = curr_s;
    break;
   }
   curr_s = SS_MATCH_N(sst[curr_s]);
  } else
   break;
 }

 return token;
}
