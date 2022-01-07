
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dir ;
 int expect (char*) ;
 char* machine ;
 char* passwd ;
 int puts_e7000debug (char*) ;
 int remote_timeout ;
 int sprintf (char*,char*,char*) ;
 int timeout ;
 char* user ;
 int write_e7000 (char*) ;

__attribute__((used)) static void
e7000_ftp_command (char *args, int from_tty)
{

  char buf[200];

  int oldtimeout = timeout;
  timeout = remote_timeout;

  sprintf (buf, "ftp %s\r", machine);
  puts_e7000debug (buf);
  expect (" Username : ");
  sprintf (buf, "%s\r", user);
  puts_e7000debug (buf);
  expect (" Password : ");
  write_e7000 (passwd);
  write_e7000 ("\r");
  expect ("success\r");
  expect ("FTP>");
  sprintf (buf, "cd %s\r", dir);
  puts_e7000debug (buf);
  expect ("FTP>");
  sprintf (buf, "ll 0;s:%s\r", args);
  puts_e7000debug (buf);
  expect ("FTP>");
  puts_e7000debug ("bye\r");
  expect (":");
  timeout = oldtimeout;
}
