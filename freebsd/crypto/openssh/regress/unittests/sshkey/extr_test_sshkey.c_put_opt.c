
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_stringb (struct sshbuf*,struct sshbuf*) ;

__attribute__((used)) static void
put_opt(struct sshbuf *b, const char *name, const char *value)
{
 struct sshbuf *sect;

 sect = sshbuf_new();
 ASSERT_PTR_NE(sect, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_cstring(b, name), 0);
 if (value != ((void*)0))
  ASSERT_INT_EQ(sshbuf_put_cstring(sect, value), 0);
 ASSERT_INT_EQ(sshbuf_put_stringb(b, sect), 0);
 sshbuf_free(sect);
}
