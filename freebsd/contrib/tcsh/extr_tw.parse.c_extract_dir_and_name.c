
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef int const Char ;


 int Strbuf_appendn (struct Strbuf*,int const*,int) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int const* Strrchr (int const*,char) ;
 int const* Strsave (int const*) ;

__attribute__((used)) static void
extract_dir_and_name(const Char *path, struct Strbuf *dir, Char **name)
{
    Char *p;

    p = Strrchr(path, '/');




    if (p == ((void*)0))
 *name = Strsave(path);
    else {
 p++;
 *name = Strsave(p);
 Strbuf_appendn(dir, path, p - path);
    }
    Strbuf_terminate(dir);
}
