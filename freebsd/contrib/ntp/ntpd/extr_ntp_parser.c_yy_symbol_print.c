
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YYSTYPE ;
typedef int FILE ;


 int YYFPRINTF (int *,char*,...) ;
 int YYNTOKENS ;
 int yy_symbol_value_print (int *,int,int const* const) ;
 int * yytname ;

__attribute__((used)) static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}
