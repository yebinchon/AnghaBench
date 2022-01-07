
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Strend (char*) ;
 char* Strspl (char*,char*) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 scalar_t__ mflag ;
 char* short2str (char*) ;
 int srcfile (char*,int,int ,int *) ;
 int xfree ;

__attribute__((used)) static int
srccat(Char *cp, Char *dp)
{
    if (cp[0] == '/' && cp[1] == '\0')
 return srcfile(short2str(dp), (mflag ? 0 : 1), 0, ((void*)0));
    else {
 Char *ep;
 char *ptr;
 int rv;







 ep = Strspl(cp, dp);
 cleanup_push(ep, xfree);
 ptr = short2str(ep);

 rv = srcfile(ptr, (mflag ? 0 : 1), 0, ((void*)0));
 cleanup_until(ep);
 return rv;
    }
}
