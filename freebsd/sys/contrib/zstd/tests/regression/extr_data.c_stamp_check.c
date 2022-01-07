
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int data_t ;
typedef int actual ;
typedef int XXH64_canonical_t ;
typedef int FILE ;


 int UTIL_isRegularFile (char*) ;
 scalar_t__ const XXH64_hashFromCanonical (int *) ;
 char* cat3 (char const*,char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 size_t fread (int *,int,int,int *) ;
 int free (char*) ;
 int kStampName ;
 scalar_t__ stamp_hash (int const* const*) ;
 int stderr ;

__attribute__((used)) static int stamp_check(char const* dir, data_t const* const* data) {
    char* stamp = cat3(dir, "/", kStampName);
    uint64_t const expected = stamp_hash(data);
    XXH64_canonical_t actual;
    FILE* stampfile = ((void*)0);
    int matches = 0;

    if (stamp == ((void*)0))
        goto out;
    if (!UTIL_isRegularFile(stamp)) {
        fprintf(stderr, "stamp does not exist: recreating the data cache\n");
        goto out;
    }

    stampfile = fopen(stamp, "rb");
    if (stampfile == ((void*)0)) {
        fprintf(stderr, "could not open stamp: recreating the data cache\n");
        goto out;
    }

    size_t b;
    if ((b = fread(&actual, sizeof(actual), 1, stampfile)) != 1) {
        fprintf(stderr, "invalid stamp: recreating the data cache\n");
        goto out;
    }

    matches = (expected == XXH64_hashFromCanonical(&actual));
    if (matches)
        fprintf(stderr, "stamp matches: reusing the cached data\n");
    else
        fprintf(stderr, "stamp does not match: recreating the data cache\n");

out:
    free(stamp);
    if (stampfile != ((void*)0))
        fclose(stampfile);
    return matches;
}
