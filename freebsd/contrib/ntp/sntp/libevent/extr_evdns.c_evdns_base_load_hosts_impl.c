
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct evdns_base {int dummy; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int evdns_base_parse_hosts_line (struct evdns_base*,char*) ;
 int evutil_read_file_ (char const*,char**,size_t*,int ) ;
 int mm_free (char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
evdns_base_load_hosts_impl(struct evdns_base *base, const char *hosts_fname)
{
 char *str=((void*)0), *cp, *eol;
 size_t len;
 int err=0;

 ASSERT_LOCKED(base);

 if (hosts_fname == ((void*)0) ||
     (err = evutil_read_file_(hosts_fname, &str, &len, 0)) < 0) {
  char tmp[64];
  strlcpy(tmp, "127.0.0.1   localhost", sizeof(tmp));
  evdns_base_parse_hosts_line(base, tmp);
  strlcpy(tmp, "::1   localhost", sizeof(tmp));
  evdns_base_parse_hosts_line(base, tmp);
  return err ? -1 : 0;
 }



 cp = str;
 for (;;) {
  eol = strchr(cp, '\n');

  if (eol) {
   *eol = '\0';
   evdns_base_parse_hosts_line(base, cp);
   cp = eol+1;
  } else {
   evdns_base_parse_hosts_line(base, cp);
   break;
  }
 }

 mm_free(str);
 return 0;
}
