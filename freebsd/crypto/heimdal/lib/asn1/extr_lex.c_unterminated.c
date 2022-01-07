
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lex_error_message (char*,char const*,unsigned int) ;

__attribute__((used)) static void
unterminated(const char *type, unsigned start_lineno)
{
    lex_error_message("unterminated %s, possibly started on line %d\n", type, start_lineno);
}
