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
struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; scalar_t__ string; } ;

/* Variables and functions */
 scalar_t__ JSON_STRING ; 
 unsigned char* FUNC0 (unsigned char const*,int /*<<< orphan*/ ,size_t*) ; 
 struct json_token* FUNC1 (struct json_token*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct wpabuf* FUNC4 (unsigned char*,size_t) ; 

struct wpabuf * FUNC5(struct json_token *json,
					  const char *name)
{
	struct json_token *token;
	unsigned char *buf;
	size_t buflen;
	struct wpabuf *ret;

	token = FUNC1(json, name);
	if (!token || token->type != JSON_STRING)
		return NULL;
	buf = FUNC0((const unsigned char *) token->string,
				FUNC3(token->string), &buflen);
	if (!buf)
		return NULL;
	ret = FUNC4(buf, buflen);
	if (!ret)
		FUNC2(buf);

	return ret;
}