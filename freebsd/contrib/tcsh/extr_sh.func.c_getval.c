
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limits {float limdiv; int limconst; } ;
typedef scalar_t__ RLIM_TYPE ;
typedef char Char ;


 int ERR_NAME ;
 int ERR_SCALEF ;
 int ERR_TOOLARGE ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 scalar_t__ Isdigit (char) ;
 int RLIMIT_CPU ;
 scalar_t__ RLIM_INFINITY ;
 float atof (int ) ;
 int limtail (char*,char*) ;
 int limtail2 (char*,char*,char*) ;
 scalar_t__ restrict_limit (float) ;
 int short2str (char*) ;
 int stderror (int) ;

__attribute__((used)) static RLIM_TYPE
getval(struct limits *lp, Char **v)
{
    float f;
    Char *cp = *v++;

    f = atof(short2str(cp));
    while (Isdigit(*cp) || *cp == '.' || *cp == 'e' || *cp == 'E')
 cp++;
    if (*cp == 0) {
 if (*v == 0)
     return restrict_limit((f * lp->limdiv) + 0.5);
 cp = *v;
    }
    switch (*cp) {
    case 'm':







 limtail2(cp, "megabytes", "mbytes");
 f *= 1024.0 * 1024.0;
 break;







    case 'G':
 *cp = 'g';

    case 'g':




 limtail2(cp, "gigabytes", "gbytes");
 f *= 1024.0 * 1024.0 * 1024.0;
 break;
    case 'M':




 *cp = 'm';
 limtail2(cp, "megabytes", "mbytes");
 f *= 1024.0 * 1024.0;
 break;
    case 'k':




 limtail2(cp, "kilobytes", "kbytes");
 f *= 1024.0;
 break;
    case 'b':




 limtail(cp, "blocks");
 f *= 512.0;
 break;
    case 'u':
 limtail(cp, "unlimited");
 return ((RLIM_TYPE) RLIM_INFINITY);
    default:



 stderror(ERR_NAME | ERR_SCALEF);
    }



    f += 0.5;
    if (f > (float) ((RLIM_TYPE) RLIM_INFINITY))
 return ((RLIM_TYPE) RLIM_INFINITY);
    else
 return ((RLIM_TYPE) f);

}
