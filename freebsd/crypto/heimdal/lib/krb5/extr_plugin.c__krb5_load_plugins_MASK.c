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
struct plugin2 {void* names; int /*<<< orphan*/  path; scalar_t__ dsohandle; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  struct plugin2* heim_string_t ;
typedef  struct plugin2* heim_dict_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int RTLD_LAZY ; 
 int RTLD_LOCAL ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct plugin2* FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct plugin2*,struct plugin2*,struct plugin2*) ; 
 struct plugin2* FUNC8 (struct plugin2*,struct plugin2*) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct plugin2*) ; 
 int /*<<< orphan*/  FUNC11 (struct plugin2*) ; 
 struct plugin2* FUNC12 (char const*) ; 
 struct plugin2* modules ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 
 int /*<<< orphan*/  plug_dealloc ; 
 int /*<<< orphan*/  plugin_mutex ; 
 struct dirent* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 size_t FUNC17 (char*) ; 

void
FUNC18(krb5_context context, const char *name, const char **paths)
{
#ifdef HAVE_DLOPEN
    heim_string_t s = heim_string_create(name);
    heim_dict_t module;
    struct dirent *entry;
    krb5_error_code ret;
    const char **di;
    DIR *d;

    HEIMDAL_MUTEX_lock(&plugin_mutex);

    if (modules == NULL) {
	modules = heim_dict_create(11);
	if (modules == NULL) {
	    HEIMDAL_MUTEX_unlock(&plugin_mutex);
	    return;
	}
    }

    module = heim_dict_copy_value(modules, s);
    if (module == NULL) {
	module = heim_dict_create(11);
	if (module == NULL) {
	    HEIMDAL_MUTEX_unlock(&plugin_mutex);
	    heim_release(s);
	    return;
	}
	heim_dict_add_value(modules, s, module);
    }
    heim_release(s);

    for (di = paths; *di != NULL; di++) {
	d = opendir(*di);
	if (d == NULL)
	    continue;
	rk_cloexec_dir(d);

	while ((entry = readdir(d)) != NULL) {
	    char *n = entry->d_name;
	    char *path = NULL;
	    heim_string_t spath;
	    struct plugin2 *p;

	    /* skip . and .. */
	    if (n[0] == '.' && (n[1] == '\0' || (n[1] == '.' && n[2] == '\0')))
		continue;

	    ret = 0;
#ifdef __APPLE__
	    { /* support loading bundles on MacOS */
		size_t len = strlen(n);
		if (len > 7 && strcmp(&n[len - 7],  ".bundle") == 0)
		    ret = asprintf(&path, "%s/%s/Contents/MacOS/%.*s", *di, n, (int)(len - 7), n);
	    }
#endif
	    if (ret < 0 || path == NULL)
		ret = asprintf(&path, "%s/%s", *di, n);

	    if (ret < 0 || path == NULL)
		continue;

	    spath = heim_string_create(n);
	    if (spath == NULL) {
		free(path);
		continue;
	    }

	    /* check if already cached */
	    p = heim_dict_copy_value(module, spath);
	    if (p == NULL) {
		p = heim_alloc(sizeof(*p), "krb5-plugin", plug_dealloc);
		if (p)
		    p->dsohandle = dlopen(path, RTLD_LOCAL|RTLD_LAZY);

		if (p->dsohandle) {
		    p->path = heim_retain(spath);
		    p->names = heim_dict_create(11);
		    heim_dict_add_value(module, spath, p);
		}
	    }
	    heim_release(spath);
	    heim_release(p);
	    free(path);
	}
	closedir(d);
    }
    heim_release(module);
    HEIMDAL_MUTEX_unlock(&plugin_mutex);
#endif /* HAVE_DLOPEN */
}