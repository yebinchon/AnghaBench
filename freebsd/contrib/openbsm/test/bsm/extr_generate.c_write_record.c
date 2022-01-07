
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int token_t ;


 int EX_UNAVAILABLE ;
 int MAX_AUDIT_RECORD_SIZE ;
 scalar_t__ au_close_buffer (int,short,int *,size_t*) ;
 int au_open () ;
 scalar_t__ au_write (int,int *) ;
 int close (int) ;
 int err (int ,char*) ;
 int open_file (char const*,char const*) ;
 int write_file (int,int *,size_t,char const*) ;

__attribute__((used)) static void
write_record(const char *directory, const char *filename, token_t *tok,
    short event)
{
 u_char buffer[MAX_AUDIT_RECORD_SIZE];
 size_t buflen;
 int au, fd;

 au = au_open();
 if (au < 0)
  err(EX_UNAVAILABLE, "au_open");
 if (au_write(au, tok) < 0)
  err(EX_UNAVAILABLE, "au_write");
 buflen = MAX_AUDIT_RECORD_SIZE;
 if (au_close_buffer(au, event, buffer, &buflen) < 0)
  err(EX_UNAVAILABLE, "au_close_buffer");
 fd = open_file(directory, filename);
 write_file(fd, buffer, buflen, filename);
 close(fd);
}
