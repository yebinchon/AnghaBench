
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tildecache {char const* user; char* home; int hlen; } ;
typedef char Char ;


 int Strcmp (char const*,char const*) ;
 int Strlen (char*) ;
 char const* Strsave (char const*) ;
 int TILINCR ;
 char* gethomedir (char const*) ;
 int qsort (struct tildecache*,int,int,int ) ;
 struct tildecache* tcache ;
 int tildecompare ;
 int tlength ;
 int tsize ;
 struct tildecache* xmalloc (int) ;
 struct tildecache* xrealloc (struct tildecache*,int) ;

Char *
gettilde(const Char *us)
{
    struct tildecache *bp1, *bp2, *bp;
    Char *hd;


    if (*us == '+' || *us == '-')
 return ((void*)0);

    if (tcache == ((void*)0))
 tcache = xmalloc(TILINCR * sizeof(struct tildecache));



    for (bp1 = tcache, bp2 = tcache + tlength; bp1 < bp2;) {
 int i;

 bp = bp1 + ((bp2 - bp1) >> 1);
 if ((i = *us - *bp->user) == 0 && (i = Strcmp(us, bp->user)) == 0)
     return (bp->home);
 if (i < 0)
     bp2 = bp;
 else
     bp1 = bp + 1;
    }



    hd = gethomedir(us);
    if (hd == ((void*)0))
 return ((void*)0);




    tcache[tlength].user = Strsave(us);
    tcache[tlength].home = hd;
    tcache[tlength++].hlen = Strlen(hd);

    qsort(tcache, tlength, sizeof(struct tildecache), tildecompare);

    if (tlength == tsize) {
 tsize += TILINCR;
 tcache = xrealloc(tcache, tsize * sizeof(struct tildecache));
    }
    return (hd);
}
