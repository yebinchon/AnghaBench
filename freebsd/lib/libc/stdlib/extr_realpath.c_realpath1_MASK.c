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
typedef  int /*<<< orphan*/  symlink ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  left ;

/* Variables and functions */
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  MAXSYMLINKS ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 size_t FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*,char*,int) ; 
 size_t FUNC10 (char*,char const*,int) ; 
 size_t FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static char *
FUNC13(const char *path, char *resolved)
{
	struct stat sb;
	char *p, *q;
	size_t left_len, resolved_len, next_token_len;
	unsigned symlinks;
	ssize_t slen;
	char left[PATH_MAX], next_token[PATH_MAX], symlink[PATH_MAX];

	symlinks = 0;
	if (path[0] == '/') {
		resolved[0] = '/';
		resolved[1] = '\0';
		if (path[1] == '\0')
			return (resolved);
		resolved_len = 1;
		left_len = FUNC10(left, path + 1, sizeof(left));
	} else {
		if (FUNC2(resolved, PATH_MAX) == NULL) {
			resolved[0] = '.';
			resolved[1] = '\0';
			return (NULL);
		}
		resolved_len = FUNC11(resolved);
		left_len = FUNC10(left, path, sizeof(left));
	}
	if (left_len >= sizeof(left) || resolved_len >= PATH_MAX) {
		errno = ENAMETOOLONG;
		return (NULL);
	}

	/*
	 * Iterate over path components in `left'.
	 */
	while (left_len != 0) {
		/*
		 * Extract the next path component and adjust `left'
		 * and its length.
		 */
		p = FUNC7(left, '/');

		next_token_len = p != NULL ? (size_t)(p - left) : left_len;
		FUNC4(next_token, left, next_token_len);
		next_token[next_token_len] = '\0';

		if (p != NULL) {
			left_len -= next_token_len + 1;
			FUNC5(left, p + 1, left_len + 1);
		} else {
			left[0] = '\0';
			left_len = 0;
		}

		if (resolved[resolved_len - 1] != '/') {
			if (resolved_len + 1 >= PATH_MAX) {
				errno = ENAMETOOLONG;
				return (NULL);
			}
			resolved[resolved_len++] = '/';
			resolved[resolved_len] = '\0';
		}
		if (next_token[0] == '\0') {
			/* Handle consequential slashes. */
			continue;
		} else if (FUNC8(next_token, ".") == 0) {
			continue;
		} else if (FUNC8(next_token, "..") == 0) {
			/*
			 * Strip the last path component except when we have
			 * single "/"
			 */
			if (resolved_len > 1) {
				resolved[resolved_len - 1] = '\0';
				q = FUNC12(resolved, '/') + 1;
				*q = '\0';
				resolved_len = q - resolved;
			}
			continue;
		}

		/*
		 * Append the next path component and lstat() it.
		 */
		resolved_len = FUNC9(resolved, next_token, PATH_MAX);
		if (resolved_len >= PATH_MAX) {
			errno = ENAMETOOLONG;
			return (NULL);
		}
		if (FUNC3(resolved, &sb) != 0)
			return (NULL);
		if (FUNC1(sb.st_mode)) {
			if (symlinks++ > MAXSYMLINKS) {
				errno = ELOOP;
				return (NULL);
			}
			slen = FUNC6(resolved, symlink, sizeof(symlink));
			if (slen <= 0 || slen >= (ssize_t)sizeof(symlink)) {
				if (slen < 0)
					; /* keep errno from readlink(2) call */
				else if (slen == 0)
					errno = ENOENT;
				else
					errno = ENAMETOOLONG;
				return (NULL);
			}
			symlink[slen] = '\0';
			if (symlink[0] == '/') {
				resolved[1] = 0;
				resolved_len = 1;
			} else {
				/* Strip the last path component. */
				q = FUNC12(resolved, '/') + 1;
				*q = '\0';
				resolved_len = q - resolved;
			}

			/*
			 * If there are any path components left, then
			 * append them to symlink. The result is placed
			 * in `left'.
			 */
			if (p != NULL) {
				if (symlink[slen - 1] != '/') {
					if (slen + 1 >= (ssize_t)sizeof(symlink)) {
						errno = ENAMETOOLONG;
						return (NULL);
					}
					symlink[slen] = '/';
					symlink[slen + 1] = 0;
				}
				left_len = FUNC9(symlink, left,
				    sizeof(symlink));
				if (left_len >= sizeof(symlink)) {
					errno = ENAMETOOLONG;
					return (NULL);
				}
			}
			left_len = FUNC10(left, symlink, sizeof(left));
		} else if (!FUNC0(sb.st_mode) && p != NULL) {
			errno = ENOTDIR;
			return (NULL);
		}
	}

	/*
	 * Remove trailing slash except when the resolved pathname
	 * is a single "/".
	 */
	if (resolved_len > 1 && resolved[resolved_len - 1] == '/')
		resolved[resolved_len - 1] = '\0';
	return (resolved);
}