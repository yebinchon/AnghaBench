
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_TOKEN_SEPARATORS ;
 int strcat (char*,char*) ;
 char* strtok (char*,int ) ;

__attribute__((used)) static void
AslMergeOptionTokens (
    char *InBuffer,
    char *OutBuffer)
{
    char *Token;


    *OutBuffer = 0;

    Token = strtok (InBuffer, ASL_TOKEN_SEPARATORS);
    while (Token)
    {
        strcat (OutBuffer, Token);
        Token = strtok (((void*)0), ASL_TOKEN_SEPARATORS);
    }
}
