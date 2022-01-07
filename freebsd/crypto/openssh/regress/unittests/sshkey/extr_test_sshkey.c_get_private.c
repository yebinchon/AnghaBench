
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 struct sshbuf* load_file (char const*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshkey_parse_private_fileblob (struct sshbuf*,char*,struct sshkey**,int *) ;

__attribute__((used)) static struct sshkey *
get_private(const char *n)
{
 struct sshbuf *b;
 struct sshkey *ret;

 b = load_file(n);
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(b, "", &ret, ((void*)0)), 0);
 sshbuf_free(b);
 return ret;
}
