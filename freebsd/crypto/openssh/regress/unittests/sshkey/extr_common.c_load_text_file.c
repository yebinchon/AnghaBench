
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct sshbuf {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 struct sshbuf* load_file (char const*) ;
 int sshbuf_consume_end (struct sshbuf*,int) ;
 int sshbuf_len (struct sshbuf*) ;
 char* sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;

struct sshbuf *
load_text_file(const char *name)
{
 struct sshbuf *ret = load_file(name);
 const u_char *p;


 for (p = sshbuf_ptr(ret); sshbuf_len(ret) > 0;) {
  if (p[sshbuf_len(ret) - 1] == '\r' ||
      p[sshbuf_len(ret) - 1] == '\t' ||
      p[sshbuf_len(ret) - 1] == ' ' ||
      p[sshbuf_len(ret) - 1] == '\n')
   ASSERT_INT_EQ(sshbuf_consume_end(ret, 1), 0);
  else
   break;
 }

 ASSERT_INT_EQ(sshbuf_put_u8(ret, 0), 0);
 return ret;
}
