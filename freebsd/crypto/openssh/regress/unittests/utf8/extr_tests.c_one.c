
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ASSERT_INT_EQ (int,int) ;
 int ASSERT_STRING_EQ (char*,char const*) ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int snmprintf (char*,int,int*,char*,char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
one(int utf8, const char *name, const char *mbs, int width,
    int wantwidth, int wantlen, const char *wants)
{
 char buf[16];
 int *wp;
 int len;

 if (wantlen == -2)
  wantlen = strlen(wants);
 (void)strlcpy(buf, utf8 ? "utf8_" : "c_", sizeof(buf));
 (void)strlcat(buf, name, sizeof(buf));
 TEST_START(buf);
 wp = wantwidth == -2 ? ((void*)0) : &width;
 len = snmprintf(buf, sizeof(buf), wp, "%s", mbs);
 ASSERT_INT_EQ(len, wantlen);
 ASSERT_STRING_EQ(buf, wants);
 ASSERT_INT_EQ(width, wantwidth);
 TEST_DONE();
}
