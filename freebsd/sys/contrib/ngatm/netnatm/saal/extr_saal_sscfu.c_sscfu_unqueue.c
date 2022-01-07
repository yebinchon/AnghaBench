
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscfu_sig {int m; int sig; } ;
struct sscfu {scalar_t__ inhand; int sigs; } ;


 struct sscfu_sig* SIGQ_GET (int *) ;
 int SIG_FREE (struct sscfu_sig*) ;
 int sscfu_dosig (struct sscfu*,int ,int ) ;

__attribute__((used)) static void
sscfu_unqueue(struct sscfu *sscf)
{
 struct sscfu_sig *s;

 while ((s = SIGQ_GET(&sscf->sigs)) != ((void*)0)) {
  sscfu_dosig(sscf, s->sig, s->m);
  SIG_FREE(s);
 }
 sscf->inhand = 0;
}
