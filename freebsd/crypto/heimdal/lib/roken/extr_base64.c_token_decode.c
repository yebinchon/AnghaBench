
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DECODE_ERROR ;
 scalar_t__ pos (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned int
token_decode(const char *token)
{
    int i;
    unsigned int val = 0;
    int marker = 0;
    if (strlen(token) < 4)
 return DECODE_ERROR;
    for (i = 0; i < 4; i++) {
 val *= 64;
 if (token[i] == '=')
     marker++;
 else if (marker > 0)
     return DECODE_ERROR;
 else
     val += pos(token[i]);
    }
    if (marker > 2)
 return DECODE_ERROR;
    return (marker << 24) | val;
}
