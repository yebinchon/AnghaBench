
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmtape ;
 int rmtconnaborted (int ) ;
 int rmtreply (char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ write (int ,char const*,scalar_t__) ;

__attribute__((used)) static int
rmtcall(const char *cmd, const char *buf)
{

 if (write(rmtape, buf, strlen(buf)) != strlen(buf))
  rmtconnaborted(0);
 return (rmtreply(cmd));
}
