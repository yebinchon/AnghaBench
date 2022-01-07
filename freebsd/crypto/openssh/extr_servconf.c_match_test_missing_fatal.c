
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,char const*,char const*) ;

__attribute__((used)) static void
match_test_missing_fatal(const char *criteria, const char *attrib)
{
 fatal("'Match %s' in configuration but '%s' not in connection "
     "test specification.", criteria, attrib);
}
