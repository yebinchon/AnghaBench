
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int error_message (char*) ;
 int input () ;
 int lineno ;
 char* strdup (char*) ;

__attribute__((used)) static char *
handle_string(void)
{
    char x[1024];
    int i = 0;
    int c;
    int quote = 0;
    while((c = input()) != EOF){
 if(quote) {
     x[i++] = '\\';
     x[i++] = c;
     quote = 0;
     continue;
 }
 if(c == '\n'){
     error_message("unterminated string");
     lineno++;
     break;
 }
 if(c == '\\'){
     quote++;
     continue;
 }
 if(c == '\"')
     break;
 x[i++] = c;
    }
    x[i] = '\0';
    return strdup(x);
}
