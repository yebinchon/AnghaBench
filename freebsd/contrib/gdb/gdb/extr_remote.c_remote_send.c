
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int getpkt (char*,long,int ) ;
 int putpkt (char*) ;

__attribute__((used)) static void
remote_send (char *buf,
      long sizeof_buf)
{
  putpkt (buf);
  getpkt (buf, sizeof_buf, 0);

  if (buf[0] == 'E')
    error ("Remote failure reply: %s", buf);
}
