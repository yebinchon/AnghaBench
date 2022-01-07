
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int strlen (char const*) ;
 int write (int ,char const*,int ) ;

__attribute__((used)) static void
write_stderr(const char *message)
{

 write(STDERR_FILENO, message, strlen(message));
}
