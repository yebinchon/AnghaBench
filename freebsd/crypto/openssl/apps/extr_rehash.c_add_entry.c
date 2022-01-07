
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum Type { ____Placeholder_Type } Type ;
struct TYPE_6__ {int type; unsigned int hash; scalar_t__ num_needed; TYPE_1__* last_entry; TYPE_1__* first_entry; struct TYPE_6__* next; } ;
struct TYPE_5__ {unsigned short old_id; int need_symlink; int digest; struct TYPE_5__* next; int filename; } ;
typedef TYPE_1__ HENTRY ;
typedef TYPE_2__ BUCKET ;


 int BIO_printf (int ,char*,int ,char const*,...) ;
 scalar_t__ MAX_COLLISIONS ;
 int OPENSSL_strdup (char const*) ;
 int OSSL_NELEM (TYPE_2__**) ;
 int TYPE_CERT ;
 void* app_malloc (int,char*) ;
 int bio_err ;
 int evpmdsize ;
 TYPE_2__** hash_table ;
 scalar_t__ memcmp (unsigned char const*,int ,int ) ;
 int memcpy (int ,unsigned char const*,int ) ;
 int opt_getprog () ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int add_entry(enum Type type, unsigned int hash, const char *filename,
                      const unsigned char *digest, int need_symlink,
                      unsigned short old_id)
{
    static BUCKET nilbucket;
    static HENTRY nilhentry;
    BUCKET *bp;
    HENTRY *ep, *found = ((void*)0);
    unsigned int ndx = (type + hash) % OSSL_NELEM(hash_table);

    for (bp = hash_table[ndx]; bp; bp = bp->next)
        if (bp->type == type && bp->hash == hash)
            break;
    if (bp == ((void*)0)) {
        bp = app_malloc(sizeof(*bp), "hash bucket");
        *bp = nilbucket;
        bp->next = hash_table[ndx];
        bp->type = type;
        bp->hash = hash;
        hash_table[ndx] = bp;
    }

    for (ep = bp->first_entry; ep; ep = ep->next) {
        if (digest && memcmp(digest, ep->digest, evpmdsize) == 0) {
            BIO_printf(bio_err,
                       "%s: warning: skipping duplicate %s in %s\n",
                       opt_getprog(),
                       type == TYPE_CERT ? "certificate" : "CRL", filename);
            return 0;
        }
        if (strcmp(filename, ep->filename) == 0) {
            found = ep;
            if (digest == ((void*)0))
                break;
        }
    }
    ep = found;
    if (ep == ((void*)0)) {
        if (bp->num_needed >= MAX_COLLISIONS) {
            BIO_printf(bio_err,
                       "%s: error: hash table overflow for %s\n",
                       opt_getprog(), filename);
            return 1;
        }
        ep = app_malloc(sizeof(*ep), "collision bucket");
        *ep = nilhentry;
        ep->old_id = ~0;
        ep->filename = OPENSSL_strdup(filename);
        if (bp->last_entry)
            bp->last_entry->next = ep;
        if (bp->first_entry == ((void*)0))
            bp->first_entry = ep;
        bp->last_entry = ep;
    }

    if (old_id < ep->old_id)
        ep->old_id = old_id;
    if (need_symlink && !ep->need_symlink) {
        ep->need_symlink = 1;
        bp->num_needed++;
        memcpy(ep->digest, digest, evpmdsize);
    }
    return 0;
}
