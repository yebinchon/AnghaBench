
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptionValue ;


 char const* skip_unkn (char const*) ;

__attribute__((used)) static char const *
parse_set_mem(tOptions * opts, char const * txt, tOptionValue * typ)
{
    (void)opts;
    (void)typ;

    return skip_unkn(txt);
}
