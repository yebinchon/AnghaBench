
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buf ;
 scalar_t__ len ;
 int printf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;

__attribute__((used)) static void
assert_stream(const char *contents)
{
 if (strlen(contents) != len)
  printf("bad length %zd for \"%s\"\n", len, contents);
 else if (strncmp(buf, contents, strlen(contents)) != 0)
  printf("bad buffer \"%s\" for \"%s\"\n", buf, contents);
}
