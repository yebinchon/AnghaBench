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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct sockaddr_in6 {size_t sin6_flowinfo; size_t sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr_dl {size_t sdl_slen; size_t sdl_nlen; size_t sdl_alen; size_t sdl_index; } ;
struct sockaddr {int sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  pbuf ;
typedef  int /*<<< orphan*/  nbuf ;
typedef  int /*<<< orphan*/  abuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  AF_INET 132 
#define  AF_INET6 131 
#define  AF_LINK 130 
#define  AF_LOCAL 129 
#define  AF_UNSPEC 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct sockaddr_dl const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct sockaddr_in const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct sockaddr_in6 const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,struct sockaddr_un const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC8 (struct sockaddr const* const,int /*<<< orphan*/ ,char*,unsigned int,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_dl const*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,size_t) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC14(char * const sbuf, const size_t len, const char * const fmt,
    const struct sockaddr * const sa)
{
	const void *a = NULL;
	char abuf[1024], nbuf[1024], *addr = NULL;
	char Abuf[1024], pbuf[32], *name = NULL, *port = NULL;
	char *ebuf = &sbuf[len - 1], *buf = sbuf;
	const char *ptr, *s;
	size_t salen;
	int p = -1;
	const struct sockaddr_in *sin4 = NULL;
	const struct sockaddr_in6 *sin6 = NULL;
	const struct sockaddr_un *sun = NULL;
#ifdef HAVE_NET_IF_DL_H
	const struct sockaddr_dl *sdl = NULL;
	char *w = NULL;
#endif
	int na = 1;

#define ADDC(c) do { if (buf < ebuf) *buf++ = c; else buf++; } \
	while (/*CONSTCOND*/0)
#define ADDS(p) do { for (s = p; *s; s++) ADDC(*s); } \
	while (/*CONSTCOND*/0)
#define ADDNA() do { if (na) ADDS("N/A"); } \
	while (/*CONSTCOND*/0)

	switch (sa->sa_family) {
	case AF_UNSPEC:
		goto done;
	case AF_LOCAL:
		salen = sizeof(*sun);
		sun = ((const struct sockaddr_un *)(const void *)sa);
		(void)FUNC13(addr = abuf, sun->sun_path, sizeof(abuf));
		break;
	case AF_INET:
		salen = sizeof(*sin4);
		sin4 = ((const struct sockaddr_in *)(const void *)sa);
		p = FUNC10(sin4->sin_port);
		a = &sin4->sin_addr;
		break;
	case AF_INET6:
		salen = sizeof(*sin6);
		sin6 = ((const struct sockaddr_in6 *)(const void *)sa);
		p = FUNC10(sin6->sin6_port);
		a = &sin6->sin6_addr;
		break;
#ifdef HAVE_NET_IF_DL_H
	case AF_LINK:
		sdl = ((const struct sockaddr_dl *)(const void *)sa);
		addr = abuf;
		if (sdl->sdl_slen == 0 && sdl->sdl_nlen == 0
		    && sdl->sdl_alen == 0) {
			salen = sizeof(*sdl);
			(void)snprintf(abuf, sizeof(abuf), "link#%hu",
			    sdl->sdl_index);
		} else {
			salen = sdl->sdl_slen + sdl->sdl_nlen +  sdl->sdl_alen;
			if (salen < sizeof(*sdl))
				salen = sizeof(*sdl);
			(void)strlcpy(abuf, link_ntoa(sdl), sizeof(abuf));
			if ((w = strchr(addr, ':')) != NULL) {
			    *w++ = '\0';
			    addr = w;
			}
		}
		break;
#endif
	default:
		errno = EAFNOSUPPORT;
		return -1;
	}

	if (addr == abuf)
		name = addr;

	if (a && FUNC8(sa, (socklen_t)salen, addr = abuf,
	    (unsigned int)sizeof(abuf), NULL, 0,
	    NI_NUMERICHOST|NI_NUMERICSERV) != 0)
		return -1;

	for (ptr = fmt; *ptr; ptr++) {
		if (*ptr != '%') {
			ADDC(*ptr);
			continue;
		}
	  next_char:
		switch (*++ptr) {
		case '?':
			na = 0;
			goto next_char;
		case 'a':
			ADDS(addr);
			break;
		case 'p':
			if (p != -1) {
				(void)FUNC11(nbuf, sizeof(nbuf), "%d", p);
				ADDS(nbuf);
			} else
				ADDNA();
			break;
		case 'f':
			(void)FUNC11(nbuf, sizeof(nbuf), "%d", sa->sa_family);
			ADDS(nbuf);
			break;
		case 'l':
			(void)FUNC11(nbuf, sizeof(nbuf), "%zu", salen);
			ADDS(nbuf);
			break;
		case 'A':
			if (name)
				ADDS(name);
			else if (!a)
				ADDNA();
			else {
				FUNC8(sa, (socklen_t)salen, name = Abuf,
					(unsigned int)sizeof(nbuf), NULL, 0, 0);
				ADDS(name);
			}
			break;
		case 'P':
			if (port)
				ADDS(port);
			else if (p == -1)
				ADDNA();
			else {
				FUNC8(sa, (socklen_t)salen, NULL, 0,
					port = pbuf,
					(unsigned int)sizeof(pbuf), 0);
				ADDS(port);
			}
			break;
		case 'I':
#ifdef HAVE_NET_IF_DL_H
			if (sdl && addr != abuf) {
				ADDS(abuf);
			} else
#endif
			{
				ADDNA();
			}
			break;
		case 'F':
			if (sin6) {
				(void)FUNC11(nbuf, sizeof(nbuf), "%d",
				    sin6->sin6_flowinfo);
				ADDS(nbuf);
				break;
			} else {
				ADDNA();
			}
			break;
		case 'S':
			if (sin6) {
				(void)FUNC11(nbuf, sizeof(nbuf), "%d",
				    sin6->sin6_scope_id);
				ADDS(nbuf);
				break;
			} else {
				ADDNA();
			}
			break;
		case 'R':
			{
				ADDNA();
			}
			break;
		case 'D':
			switch (sa->sa_family) {
			case AF_LOCAL:
				FUNC7(nbuf, sizeof(nbuf), sun);
				break;
			case AF_INET:
				FUNC5(nbuf, sizeof(nbuf), sin4);
				break;
			case AF_INET6:
				FUNC6(nbuf, sizeof(nbuf), sin6);
				break;
#ifdef HAVE_NET_IF_DL_H
			case AF_LINK:
				debug_dl(nbuf, sizeof(nbuf), sdl);
				break;
#endif
			default:
				FUNC3();
			}
			ADDS(nbuf);
			break;
		default:
			ADDC('%');
			if (na == 0)
				ADDC('?');
			if (*ptr == '\0')
				goto done;
			/*FALLTHROUGH*/
		case '%':
			ADDC(*ptr);
			break;
		}
		na = 1;
	}
done:
	if (buf < ebuf)
		*buf = '\0';
	else if (len != 0)
		sbuf[len - 1] = '\0';
	return (int)(buf - sbuf);
}