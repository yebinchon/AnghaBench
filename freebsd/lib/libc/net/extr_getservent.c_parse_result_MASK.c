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
struct servent {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int NS_NOTFOUND ; 
 int NS_RETURN ; 
 int NS_SUCCESS ; 
 scalar_t__ FUNC0 (char*) ; 
 int _ALIGNBYTES ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 scalar_t__ FUNC2 (char*,struct servent*,char**,int,int*) ; 

__attribute__((used)) static int
FUNC3(struct servent *serv, char *buffer, size_t bufsize,
    char *resultbuf, size_t resultbuflen, int *errnop)
{
	char **aliases;
	int aliases_size;

	if (bufsize <= resultbuflen + _ALIGNBYTES + sizeof(char *)) {
		*errnop = ERANGE;
		return (NS_RETURN);
	}
	aliases = (char **)FUNC0(&buffer[resultbuflen + 1]);
	aliases_size = (buffer + bufsize - (char *)aliases) / sizeof(char *);
	if (aliases_size < 1) {
		*errnop = ERANGE;
		return (NS_RETURN);
	}

	FUNC1(buffer, resultbuf, resultbuflen);
	buffer[resultbuflen] = '\0';

	if (FUNC2(buffer, serv, aliases, aliases_size, errnop) != 0)
		return ((*errnop == 0) ? NS_NOTFOUND : NS_RETURN);
	return (NS_SUCCESS);
}