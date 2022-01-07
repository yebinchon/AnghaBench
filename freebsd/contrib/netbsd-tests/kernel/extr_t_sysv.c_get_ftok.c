
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_key ;
typedef int token_dir ;
typedef int key_t ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int atf_tc_fail (char*,int ) ;
 int close (int) ;
 int errno ;
 int ftok (char*,int) ;
 char* mkdtemp (char*) ;
 int open (char*,int,int) ;
 int rmdir (char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int unlink (char*) ;

key_t get_ftok(int id)
{
 int fd;
 char token_key[64], token_dir[64];
 char *tmpdir;
 key_t key;

 strlcpy(token_key, "/tmp/t_sysv.XXXXXX", sizeof(token_key));
 tmpdir = mkdtemp(token_key);
 ATF_REQUIRE_MSG(tmpdir != ((void*)0), "mkdtemp() failed: %d", errno);

 strlcpy(token_dir, tmpdir, sizeof(token_dir));
 strlcpy(token_key, tmpdir, sizeof(token_key));
 strlcat(token_key, "/token_key", sizeof(token_key));



 fd = open(token_key, O_RDWR | O_CREAT | O_EXCL, 0600);
 if (fd == -1) {
  rmdir(tmpdir);
  atf_tc_fail("open() of temp file failed: %d", errno);
  return (key_t)-1;
 } else
  close(fd);

 key = ftok(token_key, id);

 ATF_REQUIRE_MSG(unlink(token_key) != -1, "unlink() failed: %d", errno);
 ATF_REQUIRE_MSG(rmdir(token_dir) != -1, "rmdir() failed: %d", errno);

 return key;
}
