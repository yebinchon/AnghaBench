
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef char sshbuf ;
typedef char FILE ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_INT_NE (int ,int ) ;
 int ASSERT_PTR_EQ (char*,int *) ;
 int ASSERT_PTR_NE (char*,int *) ;
 int ASSERT_SIZE_T_EQ (int,int) ;
 int ASSERT_SIZE_T_GT (size_t,int ) ;
 int ASSERT_STRING_EQ (char*,char*) ;
 int ASSERT_U16_EQ (int ,int) ;
 int ASSERT_U32_EQ (int ,int) ;
 int ASSERT_U8_EQ (int ,int) ;
 int PEEK_U16 (int *) ;
 int PEEK_U32 (int *) ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int bzero (int ,int) ;
 int fclose (char*) ;
 int feof (char*) ;
 int ferror (char*) ;
 int fflush (char*) ;
 size_t fread (char*,int,int,char*) ;
 int free (char*) ;
 int rewind (char*) ;
 int sshbuf_b64tod (char*,char*) ;
 char* sshbuf_dtob16 (char*) ;
 char* sshbuf_dtob64 (char*) ;
 int sshbuf_dump (char*,char*) ;
 char* sshbuf_dup_string (char*) ;
 int sshbuf_free (char*) ;
 int sshbuf_len (char*) ;
 int sshbuf_mutable_ptr (char*) ;
 char* sshbuf_new () ;
 int * sshbuf_ptr (char*) ;
 int sshbuf_put (char*,char*,int) ;
 int sshbuf_put_u32 (char*,int) ;
 int sshbuf_put_u8 (char*,int) ;
 int sshbuf_reserve (char*,int,int *) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 char* tmpfile () ;

void
sshbuf_misc_tests(void)
{
 struct sshbuf *p1;
 char tmp[512], *p;
 FILE *out;
 size_t sz;

 TEST_START("sshbuf_dump");
 out = tmpfile();
 ASSERT_PTR_NE(out, ((void*)0));
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, 0x12345678), 0);
 sshbuf_dump(p1, out);
 fflush(out);
 rewind(out);
 sz = fread(tmp, 1, sizeof(tmp), out);
 ASSERT_INT_EQ(ferror(out), 0);
 ASSERT_INT_NE(feof(out), 0);
 ASSERT_SIZE_T_GT(sz, 0);
 tmp[sz] = '\0';
 ASSERT_PTR_NE(strstr(tmp, "12 34 56 78"), ((void*)0));
 fclose(out);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dtob16");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, 0x12345678), 0);
 p = sshbuf_dtob16(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_STRING_EQ(p, "12345678");
 free(p);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dtob64 len 1");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x11), 0);
 p = sshbuf_dtob64(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_STRING_EQ(p, "EQ==");
 free(p);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dtob64 len 2");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x11), 0);
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x22), 0);
 p = sshbuf_dtob64(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_STRING_EQ(p, "ESI=");
 free(p);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dtob64 len 3");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x11), 0);
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x22), 0);
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x33), 0);
 p = sshbuf_dtob64(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_STRING_EQ(p, "ESIz");
 free(p);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dtob64 len 8191");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_reserve(p1, 8192, ((void*)0)), 0);
 bzero(sshbuf_mutable_ptr(p1), 8192);
 p = sshbuf_dtob64(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_SIZE_T_EQ(strlen(p), ((8191 + 2) / 3) * 4);
 free(p);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_b64tod len 1");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_b64tod(p1, "0A=="), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 1);
 ASSERT_U8_EQ(*sshbuf_ptr(p1), 0xd0);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_b64tod len 2");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_b64tod(p1, "0A8="), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2);
 ASSERT_U16_EQ(PEEK_U16(sshbuf_ptr(p1)), 0xd00f);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_b64tod len 4");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_b64tod(p1, "0A/QDw=="), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 4);
 ASSERT_U32_EQ(PEEK_U32(sshbuf_ptr(p1)), 0xd00fd00f);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_dup_string");
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));

 p = sshbuf_dup_string(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_SIZE_T_EQ(strlen(p), 0);
 free(p);

 ASSERT_INT_EQ(sshbuf_put(p1, "quad1", strlen("quad1")), 0);
 p = sshbuf_dup_string(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_SIZE_T_EQ(strlen(p), strlen("quad1"));
 ASSERT_STRING_EQ(p, "quad1");
 free(p);

 ASSERT_INT_EQ(sshbuf_put(p1, "\0", 1), 0);
 p = sshbuf_dup_string(p1);
 ASSERT_PTR_NE(p, ((void*)0));
 ASSERT_SIZE_T_EQ(strlen(p), strlen("quad1"));
 ASSERT_STRING_EQ(p, "quad1");
 free(p);

 ASSERT_INT_EQ(sshbuf_put(p1, "quad2", strlen("quad2")), 0);
 p = sshbuf_dup_string(p1);
 ASSERT_PTR_EQ(p, ((void*)0));
 sshbuf_free(p1);
 TEST_DONE();
}
