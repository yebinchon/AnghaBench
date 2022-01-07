
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int progSep ;
typedef int nl ;


 int STDERR_FILENO ;
 char const* _getprogname () ;
 int _write (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
__env_warnx(const char *msg, const char *name, size_t nameLen)
{
 static const char nl[] = "\n";
 static const char progSep[] = ": ";

 _write(STDERR_FILENO, _getprogname(), strlen(_getprogname()));
 _write(STDERR_FILENO, progSep, sizeof(progSep) - 1);
 _write(STDERR_FILENO, msg, strlen(msg));
 _write(STDERR_FILENO, name, nameLen);
 _write(STDERR_FILENO, nl, sizeof(nl) - 1);

 return;
}
