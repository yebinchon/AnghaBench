
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {char* ut_line; int ut_id; int ut_tv; int ut_pid; } ;
typedef int SHA_CTX ;


 int MIN (int,int) ;
 int SHA1_Final (char*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int _PATH_DEV ;
 int getpid () ;
 int gettimeofday (int *,int *) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct utmpx*,int ,int) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
ulog_fill(struct utmpx *utx, const char *line)
{
 SHA_CTX c;
 char id[SHA_DIGEST_LENGTH];


 if (strncmp(line, _PATH_DEV, sizeof _PATH_DEV - 1) == 0)
  line += sizeof _PATH_DEV - 1;

 memset(utx, 0, sizeof *utx);

 utx->ut_pid = getpid();
 gettimeofday(&utx->ut_tv, ((void*)0));
 strncpy(utx->ut_line, line, sizeof utx->ut_line);

 SHA1_Init(&c);
 SHA1_Update(&c, "libulog", 7);
 SHA1_Update(&c, utx->ut_line, sizeof utx->ut_line);
 SHA1_Final(id, &c);

 memcpy(utx->ut_id, id, MIN(sizeof utx->ut_id, sizeof id));
}
