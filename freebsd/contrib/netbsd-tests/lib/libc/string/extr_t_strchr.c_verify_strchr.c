
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;
 int fprintf (int ,char*,char*,int,int,int,unsigned int,unsigned int) ;
 char* slow_strchr (char*,int) ;
 int stderr ;
 char* strchr_fn (char*,int) ;

__attribute__((used)) static void
verify_strchr(char *buf, int ch, unsigned int t, unsigned int a)
{
 const char *off, *ok_off;

 off = strchr_fn(buf, ch);
 ok_off = slow_strchr(buf, ch);
 if (off == ok_off)
  return;

 fprintf(stderr, "test_strchr(\"%s\", %#x) gave %zd not %zd (test %d, "
     "alignment %d)\n",
     buf, ch, off ? off - buf : -1, ok_off ? ok_off - buf : -1, t, a);

 atf_tc_fail("Check stderr for details");
}
