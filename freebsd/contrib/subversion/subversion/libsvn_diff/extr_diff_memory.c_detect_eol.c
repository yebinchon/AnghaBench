
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ svn_string_t ;



__attribute__((used)) static const char *
detect_eol(svn_string_t *token)
{
  const char *curp;

  if (token->len == 0)
    return ((void*)0);

  curp = token->data + token->len - 1;
  if (*curp == '\r')
    return "\r";
  else if (*curp != '\n')
    return ((void*)0);
  else
    {
      if (token->len == 1
          || *(--curp) != '\r')
        return "\n";
      else
        return "\r\n";
    }
}
