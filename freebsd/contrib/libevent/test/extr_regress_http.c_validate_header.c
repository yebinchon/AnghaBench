
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;


 char* evhttp_find_header (struct evkeyvalq const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int tt_assert (int ) ;
 int tt_want (int) ;

__attribute__((used)) static int validate_header(
 const struct evkeyvalq* headers,
 const char *key, const char *value)
{
 const char *real_val = evhttp_find_header(headers, key);
 tt_assert(real_val != ((void*)0));
 tt_want(strcmp(real_val, value) == 0);
end:
 return (0);
}
