
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_src_list {int dummy; } ;
struct _citrus_iconv_std_src {int ss_dsts; } ;


 struct _citrus_iconv_std_src* TAILQ_FIRST (struct _citrus_iconv_std_src_list*) ;
 int TAILQ_REMOVE (struct _citrus_iconv_std_src_list*,struct _citrus_iconv_std_src*,int ) ;
 int close_dsts (int *) ;
 int free (struct _citrus_iconv_std_src*) ;
 int ss_entry ;

__attribute__((used)) static void
close_srcs(struct _citrus_iconv_std_src_list *sl)
{
 struct _citrus_iconv_std_src *ss;

 while ((ss = TAILQ_FIRST(sl)) != ((void*)0)) {
  TAILQ_REMOVE(sl, ss, ss_entry);
  close_dsts(&ss->ss_dsts);
  free(ss);
 }
}
