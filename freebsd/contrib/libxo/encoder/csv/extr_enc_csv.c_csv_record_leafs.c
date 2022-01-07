
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_handle_t ;
typedef int ssize_t ;
struct TYPE_5__ {int c_flags; } ;
typedef TYPE_1__ csv_private_t ;


 int CF_LEAFS_DONE ;
 char* alloca (int) ;
 int csv_dbg (int *,TYPE_1__*,char*,char*) ;
 int csv_leaf_num (int *,TYPE_1__*,char*,int ) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int
csv_record_leafs (xo_handle_t *xop, csv_private_t *csv, const char *leafs_raw)
{
    char *cp, *ep, *np;
    ssize_t len = strlen(leafs_raw);
    char *leafs_buf = alloca(len + 1);

    memcpy(leafs_buf, leafs_raw, len + 1);

    for (cp = leafs_buf, ep = leafs_buf + len; cp && cp < ep; cp = np) {
 np = strchr(cp, '.');
 if (np)
     *np++ = '\0';

 if (*cp == '\0')
     continue;

 csv_dbg(xop, csv, "adding leaf: [%s]\n", cp);
 csv_leaf_num(xop, csv, cp, 0);
    }




    csv->c_flags |= CF_LEAFS_DONE;

    return 0;
}
