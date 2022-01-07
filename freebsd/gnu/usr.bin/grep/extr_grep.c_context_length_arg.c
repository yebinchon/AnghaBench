
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 scalar_t__ LONGINT_OK ;
 char* _ (char*) ;
 int error (int,int ,char*,char const*,char*) ;
 scalar_t__ xstrtoumax (char const*,int ,int,int*,char*) ;

__attribute__((used)) static void
context_length_arg (char const *str, int *out)
{
  uintmax_t value;
  if (! (xstrtoumax (str, 0, 10, &value, "") == LONGINT_OK
  && 0 <= (*out = value)
  && *out == value))
    {
      error (2, 0, "%s: %s\n", str, _("invalid context length argument"));
    }
}
