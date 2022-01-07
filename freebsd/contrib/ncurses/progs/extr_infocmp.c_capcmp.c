
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PredIdx ;


 int VALID_STRING (char const*) ;
 int _nc_capcmp (char const*,char const*) ;
 scalar_t__ acs_chars_index ;
 int ignorepads ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
capcmp(PredIdx idx, const char *s, const char *t)

{
    if (!VALID_STRING(s) && !VALID_STRING(t))
 return (s != t);
    else if (!VALID_STRING(s) || !VALID_STRING(t))
 return (1);

    if ((idx == acs_chars_index) || !ignorepads)
 return (strcmp(s, t));
    else
 return (_nc_capcmp(s, t));
}
