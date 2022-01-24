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
typedef  int /*<<< orphan*/  princ ;
typedef  int /*<<< orphan*/  kvno_str ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

krb5_error_code
FUNC7(krb5_context context,
			     krb5_error_code ret,
			     krb5_keytab id,
			     krb5_const_principal principal,
			     krb5_enctype enctype,
			     int kvno)
{
    char princ[256], kvno_str[25], *kt_name;
    char *enctype_str = NULL;

    FUNC5 (context, principal, princ, sizeof(princ));
    FUNC3 (context, id, &kt_name);
    FUNC2(context, enctype, &enctype_str);

    if (kvno)
	FUNC6(kvno_str, sizeof(kvno_str), "(kvno %d)", kvno);
    else
	kvno_str[0] = '\0';

    FUNC4 (context, ret,
			    FUNC0("Failed to find %s%s in keytab %s (%s)",
			       "principal, kvno, keytab file, enctype"),
			    princ,
			    kvno_str,
			    kt_name ? kt_name : "unknown keytab",
			    enctype_str ? enctype_str : "unknown enctype");
    FUNC1(kt_name);
    FUNC1(enctype_str);
    return ret;
}