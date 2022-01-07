
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "usage: %s [options] [file ...]\n", __progname);
 fprintf(stderr, "Options:\n");
 fprintf(stderr, "  -l          List fingerprints of all identities.\n");
 fprintf(stderr, "  -E hash     Specify hash algorithm used for fingerprints.\n");
 fprintf(stderr, "  -L          List public key parameters of all identities.\n");
 fprintf(stderr, "  -k          Load only keys and not certificates.\n");
 fprintf(stderr, "  -c          Require confirmation to sign using identities\n");
 fprintf(stderr, "  -m minleft  Maxsign is only changed if less than minleft are left (for XMSS)\n");
 fprintf(stderr, "  -M maxsign  Maximum number of signatures allowed (for XMSS)\n");
 fprintf(stderr, "  -t life     Set lifetime (in seconds) when adding identities.\n");
 fprintf(stderr, "  -d          Delete identity.\n");
 fprintf(stderr, "  -D          Delete all identities.\n");
 fprintf(stderr, "  -x          Lock agent.\n");
 fprintf(stderr, "  -X          Unlock agent.\n");
 fprintf(stderr, "  -s pkcs11   Add keys from PKCS#11 provider.\n");
 fprintf(stderr, "  -e pkcs11   Remove keys provided by PKCS#11 provider.\n");
 fprintf(stderr, "  -q          Be quiet after a successful operation.\n");
}
