#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LDNS_TRUST_ANCHOR_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(FILE *stream, const char *progname)
{
	FUNC0(stream, "  Usage: %s name [@server] [type] [class]\n", progname);
	FUNC0(stream, "\t<name>  can be a domain name or an IP address (-x lookups)\n");
	FUNC0(stream, "\t<type>  defaults to A\n");
	FUNC0(stream, "\t<class> defaults to IN\n");
	FUNC0(stream, "\n\targuments may be placed in random order\n");
	FUNC0(stream, "\n  Options:\n");
	FUNC0(stream, "\t-D\t\tenable DNSSEC (DO bit)\n");
#ifdef HAVE_SSL
	fprintf(stream, "\t-T\t\ttrace from the root down to <name>\n");
	fprintf(stream, "\t-S\t\tchase signature(s) from <name> to a known key [*]\n");
#endif /*HAVE_SSL*/
	FUNC0(stream, "\t-I <address>\tsource address to query from\n");
	FUNC0(stream, "\t-V <number>\tverbosity (0-5)\n");
	FUNC0(stream, "\t-Q\t\tquiet mode (overrules -V)\n");
	FUNC0(stream, "\n");
	FUNC0(stream, "\t-f file\t\tread packet from file and send it\n");
	FUNC0(stream, "\t-i file\t\tread packet from file and print it\n");
	FUNC0(stream, "\t-w file\t\twrite answer packet to file\n");
	FUNC0(stream, "\t-q file\t\twrite query packet to file\n");
	FUNC0(stream, "\t-h\t\tshow this help\n");
	FUNC0(stream, "\t-v\t\tshow version\n");
	FUNC0(stream, "\n  Query options:\n");
	FUNC0(stream, "\t-4\t\tstay on ip4\n");
	FUNC0(stream, "\t-6\t\tstay on ip6\n");
	FUNC0(stream, "\t-a\t\tfallback to EDNS0 and TCP if the answer is truncated\n");
	FUNC0(stream, "\t-b <bufsize>\tuse <bufsize> as the buffer size (defaults to 512 b)\n");
	FUNC0(stream, "\t-c <file>\tuse file for rescursive nameserver configuration"
			"\n\t\t\t(/etc/resolv.conf)\n");
	FUNC0(stream, "\t-k <file>\tspecify a file that contains a trusted DNSSEC key [**]\n");
	FUNC0(stream, "\t\t\tUsed to verify any signatures in the current answer.\n");
	FUNC0(stream, "\t\t\tWhen DNSSEC enabled tracing (-TD) or signature\n"
			"\t\t\tchasing (-S) and no key files are given, keys are read\n"
			"\t\t\tfrom: %s\n",
			LDNS_TRUST_ANCHOR_FILE);
	FUNC0(stream, "\t-o <mnemonic>\tset flags to:"
			"\n\t\t\t[QR|qr][AA|aa][TC|tc][RD|rd][CD|cd][RA|ra][AD|ad]\n");
	FUNC0(stream, "\t\t\tlowercase: unset bit, uppercase: set bit\n");
	FUNC0(stream, "\t-p <port>\tuse <port> as remote port number\n");
	FUNC0(stream, "\t-s\t\tshow the DS RR for each key in a packet\n");
	FUNC0(stream, "\t-u\t\tsend the query with udp (the default)\n");
	FUNC0(stream, "\t-x\t\tdo a reverse lookup\n");
	FUNC0(stream, "\twhen doing a secure trace:\n");
	FUNC0(stream, "\t-r <file>\tuse file as root servers hint file\n");
	FUNC0(stream, "\t-t\t\tsend the query with tcp (connected)\n");
	FUNC0(stream, "\t-d <domain>\tuse domain as the start point for the trace\n");
    FUNC0(stream, "\t-y <name:key[:algo]>\tspecify named base64 tsig key, and optional an\n\t\t\talgorithm (defaults to hmac-md5.sig-alg.reg.int)\n");
	FUNC0(stream, "\t-z\t\tdon't randomize the nameservers before use\n");
	FUNC0(stream, "\n  [*] = enables/implies DNSSEC\n");
	FUNC0(stream, "  [**] = can be given more than once\n");
	FUNC0(stream, "\n  ldns-team@nlnetlabs.nl | http://www.nlnetlabs.nl/ldns/\n");
}