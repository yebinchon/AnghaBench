
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HANDLE_FILE ;
 scalar_t__ handle_bytes_read (int) ;
 scalar_t__ handle_bytes_write (int) ;
 scalar_t__ handle_is_ok (int,int ) ;
 int handle_to_name (int) ;
 int logit (char*,char*,char*,int ,...) ;

__attribute__((used)) static void
handle_log_close(int handle, char *emsg)
{
 if (handle_is_ok(handle, HANDLE_FILE)) {
  logit("%s%sclose \"%s\" bytes read %llu written %llu",
      emsg == ((void*)0) ? "" : emsg, emsg == ((void*)0) ? "" : " ",
      handle_to_name(handle),
      (unsigned long long)handle_bytes_read(handle),
      (unsigned long long)handle_bytes_write(handle));
 } else {
  logit("%s%sclosedir \"%s\"",
      emsg == ((void*)0) ? "" : emsg, emsg == ((void*)0) ? "" : " ",
      handle_to_name(handle));
 }
}
