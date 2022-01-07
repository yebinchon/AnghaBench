
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUNDUP (scalar_t__,int) ;
 int SSH_BUG_PASSWORDPAD ;
 int datafellows ;
 int explicit_bzero (char*,int) ;
 int free (char*) ;
 int packet_put_cstring (char*) ;
 int packet_put_string (char*,int) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 char* xcalloc (int,int) ;

void
ssh_put_password(char *password)
{
 int size;
 char *padded;

 if (datafellows & SSH_BUG_PASSWORDPAD) {
  packet_put_cstring(password);
  return;
 }
 size = ROUNDUP(strlen(password) + 1, 32);
 padded = xcalloc(1, size);
 strlcpy(padded, password, size);
 packet_put_string(padded, size);
 explicit_bzero(padded, size);
 free(padded);
}
