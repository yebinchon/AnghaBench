
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _esdb {int db_num_charsets; TYPE_1__* db_charsets; } ;
struct _citrus_iconv_std_src_list {int dummy; } ;
struct _citrus_iconv_std_src {int ss_dsts; int ss_csid; } ;
struct TYPE_2__ {int ec_csid; } ;


 int ENOENT ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (struct _citrus_iconv_std_src_list*,struct _citrus_iconv_std_src*,int ) ;
 int close_srcs (struct _citrus_iconv_std_src_list*) ;
 int errno ;
 int free (struct _citrus_iconv_std_src*) ;
 struct _citrus_iconv_std_src* malloc (int) ;
 int open_dsts (int *,TYPE_1__*,struct _esdb const*) ;
 int ss_entry ;

__attribute__((used)) static int
open_srcs(struct _citrus_iconv_std_src_list *sl,
    const struct _esdb *dbsrc, const struct _esdb *dbdst)
{
 struct _citrus_iconv_std_src *ss;
 int count = 0, i, ret;

 ss = malloc(sizeof(*ss));
 if (ss == ((void*)0))
  return (errno);

 TAILQ_INIT(&ss->ss_dsts);

 for (i = 0; i < dbsrc->db_num_charsets; i++) {
  ret = open_dsts(&ss->ss_dsts, &dbsrc->db_charsets[i], dbdst);
  if (ret)
   goto err;
  if (!TAILQ_EMPTY(&ss->ss_dsts)) {
   ss->ss_csid = dbsrc->db_charsets[i].ec_csid;
   TAILQ_INSERT_TAIL(sl, ss, ss_entry);
   ss = malloc(sizeof(*ss));
   if (ss == ((void*)0)) {
    ret = errno;
    goto err;
   }
   count++;
   TAILQ_INIT(&ss->ss_dsts);
  }
 }
 free(ss);

 return (count ? 0 : ENOENT);

err:
 free(ss);
 close_srcs(sl);
 return (ret);
}
