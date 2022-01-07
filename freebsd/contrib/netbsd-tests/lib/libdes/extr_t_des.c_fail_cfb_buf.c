
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf ;


 int atf_tc_fail_nonfatal (char*,char const*,char*) ;
 int * cfb_buf1 ;
 char* pt (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
fail_cfb_buf(const char *msg, unsigned char *ptr)
{
 char buf[1024];
 int i;

 *buf = '\0';
 for (i = 0; i < 24; i += 8) {
  char buf2[128];
  snprintf(buf2, sizeof(buf2), "%s /", pt(&(cfb_buf1[i])));
  strlcat(buf, buf2, sizeof(buf));
 }

 atf_tc_fail_nonfatal("%s: %s", msg, buf);
}
