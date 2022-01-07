
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct Strbuf {scalar_t__ len; char* s; } ;
struct TYPE_2__ {char* di_name; } ;
typedef char Char ;


 scalar_t__ ABSOLUTEP (char const*) ;
 scalar_t__ ENOENT ;
 scalar_t__ IS_DOT (char const*,char const*) ;
 scalar_t__ IS_DOTDOT (char const*,char const*) ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int Strcpy (char*,char*) ;
 int Strlen (char*) ;
 char* Strrchr (char*,char) ;
 char* Strsave (char const*) ;
 char* Strspl (char*,char*) ;
 char TRM (char) ;
 TYPE_1__* dcwd ;
 scalar_t__ errno ;
 scalar_t__ lstat (int ,struct stat*) ;
 int short2str (char const*) ;
 scalar_t__ stat (int ,struct stat*) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

Char *
dnormalize(const Char *cp, int expnd)
{
    return Strsave(cp);
}
