
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_INT_NE (int,int) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int O_RDONLY ;
 int close (int) ;
 int open (int ,int ) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_load_file (int,struct sshbuf*) ;
 int test_data_file (char const*) ;

struct sshbuf *
load_file(const char *name)
{
 int fd;
 struct sshbuf *ret;

 ASSERT_PTR_NE(ret = sshbuf_new(), ((void*)0));
 ASSERT_INT_NE(fd = open(test_data_file(name), O_RDONLY), -1);
 ASSERT_INT_EQ(sshkey_load_file(fd, ret), 0);
 close(fd);
 return ret;
}
