#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_3__ {int length; char* data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  classes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 
 size_t FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8 (krb5_context context,
			   krb5_principal principal,
			   krb5_data *pwd,
			   const char *opaque,
			   char *message,
			   size_t length)
{
    const char *classes[] = {
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	"abcdefghijklmnopqrstuvwxyz",
	"1234567890",
	"!@#$%^&*()/?<>,.{[]}\\|'~`\" "
    };
    int counter = 0, req_classes;
    size_t i, len;
    char *pw;

    req_classes = FUNC1(context, NULL, 3,
					      "password_quality",
					      "min_classes",
					      NULL);

    len = pwd->length + 1;
    pw = FUNC2(len);
    if (pw == NULL) {
	FUNC6(message, "out of memory", length);
	return 1;
    }
    FUNC6(pw, pwd->data, len);
    len = FUNC7(pw);

    for (i = 0; i < sizeof(classes)/sizeof(classes[0]); i++) {
	if (FUNC5(pw, classes[i]) < len)
	    counter++;
    }
    FUNC3(pw, 0, pwd->length + 1);
    FUNC0(pw);
    if (counter < req_classes) {
	FUNC4(message, length,
	    "Password doesn't meet complexity requirement.\n"
	    "Add more characters from the following classes:\n"
	    "1. English uppercase characters (A through Z)\n"
	    "2. English lowercase characters (a through z)\n"
	    "3. Base 10 digits (0 through 9)\n"
	    "4. Nonalphanumeric characters (e.g., !, $, #, %%)");
	return 1;
    }
    return 0;
}