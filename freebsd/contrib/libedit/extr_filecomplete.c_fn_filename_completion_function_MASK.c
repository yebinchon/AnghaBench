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
struct dirent {char* d_name; size_t d_namlen; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char const*) ; 
 size_t FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,size_t) ; 
 char* FUNC13 (char const*,char) ; 

char *
FUNC14(const char *text, int state)
{
	static DIR *dir = NULL;
	static char *filename = NULL, *dirname = NULL, *dirpath = NULL;
	static size_t filename_len = 0;
	struct dirent *entry;
	char *temp;
	size_t len;

	if (state == 0 || dir == NULL) {
		temp = FUNC13(text, '/');
		if (temp) {
			char *nptr;
			temp++;
			nptr = FUNC3(filename, (FUNC10(temp) + 1) *
			    sizeof(*nptr));
			if (nptr == NULL) {
				FUNC2(filename);
				filename = NULL;
				return NULL;
			}
			filename = nptr;
			(void)FUNC8(filename, temp);
			len = (size_t)(temp - text);	/* including last slash */

			nptr = FUNC3(dirname, (len + 1) *
			    sizeof(*nptr));
			if (nptr == NULL) {
				FUNC2(dirname);
				dirname = NULL;
				return NULL;
			}
			dirname = nptr;
			(void)FUNC12(dirname, text, len);
			dirname[len] = '\0';
		} else {
			FUNC2(filename);
			if (*text == 0)
				filename = NULL;
			else {
				filename = FUNC9(text);
				if (filename == NULL)
					return NULL;
			}
			FUNC2(dirname);
			dirname = NULL;
		}

		if (dir != NULL) {
			(void)FUNC0(dir);
			dir = NULL;
		}

		/* support for ``~user'' syntax */

		FUNC2(dirpath);
		dirpath = NULL;
		if (dirname == NULL) {
			if ((dirname = FUNC9("")) == NULL)
				return NULL;
			dirpath = FUNC9("./");
		} else if (*dirname == '~')
			dirpath = FUNC4(dirname);
		else
			dirpath = FUNC9(dirname);

		if (dirpath == NULL)
			return NULL;

		dir = FUNC5(dirpath);
		if (!dir)
			return NULL;	/* cannot open the directory */

		/* will be used in cycle */
		filename_len = filename ? FUNC10(filename) : 0;
	}

	/* find the match */
	while ((entry = FUNC6(dir)) != NULL) {
		/* skip . and .. */
		if (entry->d_name[0] == '.' && (!entry->d_name[1]
		    || (entry->d_name[1] == '.' && !entry->d_name[2])))
			continue;
		if (filename_len == 0)
			break;
		/* otherwise, get first entry where first */
		/* filename_len characters are equal	  */
		if (entry->d_name[0] == filename[0]
#if HAVE_STRUCT_DIRENT_D_NAMLEN
		    && entry->d_namlen >= filename_len
#else
		    && FUNC10(entry->d_name) >= filename_len
#endif
		    && FUNC11(entry->d_name, filename,
			filename_len) == 0)
			break;
	}

	if (entry) {		/* match found */

#if HAVE_STRUCT_DIRENT_D_NAMLEN
		len = entry->d_namlen;
#else
		len = FUNC10(entry->d_name);
#endif

		len = FUNC10(dirname) + len + 1;
		temp = FUNC1(len, sizeof(*temp));
		if (temp == NULL)
			return NULL;
		(void)FUNC7(temp, len, "%s%s", dirname, entry->d_name);
	} else {
		(void)FUNC0(dir);
		dir = NULL;
		temp = NULL;
	}

	return temp;
}