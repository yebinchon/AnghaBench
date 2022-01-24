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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FORMAT_ASN1 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SSL_SESSION *FUNC6(char *infile, int format)
{
    SSL_SESSION *x = NULL;
    BIO *in = NULL;

    in = FUNC4(infile, 'r', format);
    if (in == NULL)
        goto end;
    if (format == FORMAT_ASN1)
        x = FUNC5(in, NULL);
    else
        x = FUNC3(in, NULL, NULL, NULL);
    if (x == NULL) {
        FUNC1(bio_err, "unable to load SSL_SESSION\n");
        FUNC2(bio_err);
        goto end;
    }

 end:
    FUNC0(in);
    return x;
}