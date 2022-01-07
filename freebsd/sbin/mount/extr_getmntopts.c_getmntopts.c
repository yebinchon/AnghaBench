
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntopt {int m_inverse; int m_flag; scalar_t__ m_altloc; int * m_option; } ;


 int err (int,int *) ;
 int errx (int,char*,char*) ;
 int free (char*) ;
 int getmnt_silent ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strlen (int *) ;
 scalar_t__ strncasecmp (char*,int *,int) ;
 char* strtok (char*,char*) ;

void
getmntopts(const char *options, const struct mntopt *m0, int *flagp,
 int *altflagp)
{
 const struct mntopt *m;
 int negative, len;
 char *opt, *optbuf, *p;
 int *thisflagp;


 if ((optbuf = strdup(options)) == ((void*)0))
  err(1, ((void*)0));

 for (opt = optbuf; (opt = strtok(opt, ",")) != ((void*)0); opt = ((void*)0)) {

  if (opt[0] == 'n' && opt[1] == 'o') {
   negative = 1;
   opt += 2;
  } else
   negative = 0;





  p = strchr(opt, '=');
  if (p != ((void*)0))
    *++p = '\0';


  for (m = m0; m->m_option != ((void*)0); ++m) {
   len = strlen(m->m_option);
   if (strncasecmp(opt, m->m_option, len) == 0)
    if (opt[len] == '\0' || opt[len] == '=')
     break;
  }


  if (m->m_option) {
   thisflagp = m->m_altloc ? altflagp : flagp;
   if (negative == m->m_inverse)
    *thisflagp |= m->m_flag;
   else
    *thisflagp &= ~m->m_flag;
  } else if (!getmnt_silent) {
   errx(1, "-o %s: option not supported", opt);
  }
 }

 free(optbuf);
}
