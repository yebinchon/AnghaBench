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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  token ;
struct servent {scalar_t__ s_port; } ;
struct protoent {scalar_t__ p_proto; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  proto_str ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct protoent* FUNC4 (char*) ; 
 struct servent* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

int FUNC16(const char* str, uint8_t* rd, size_t* len)
{
	int rd_len = 1;
	int have_proto = 0;
	char token[50], proto_str[50];
	sldns_buffer strbuf;
	FUNC10(&strbuf, (uint8_t*)str, FUNC15(str));
	proto_str[0]=0;

	/* check we have one byte for proto */
	if(*len < 1)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

	while(FUNC9(&strbuf, token, "\t\n ", sizeof(token)) > 0) {
		FUNC6(token);
		if(!have_proto) {
			struct protoent *p = FUNC4(token);
			have_proto = 1;
			if(p) rd[0] = (uint8_t)p->p_proto;
			else if(FUNC12(token, "tcp")==0) rd[0]=6;
			else if(FUNC12(token, "udp")==0) rd[0]=17;
			else rd[0] = (uint8_t)FUNC1(token);
			(void)FUNC14(proto_str, token, sizeof(proto_str));
		} else {
			int serv_port;
			struct servent *serv = FUNC5(token, proto_str);
			if(serv) serv_port=(int)FUNC8((uint16_t)serv->s_port);
			else if(FUNC12(token, "domain")==0) serv_port=53;
			else {
				serv_port = FUNC1(token);
				if(serv_port == 0 && FUNC13(token, "0") != 0) {
#ifdef HAVE_ENDSERVENT
					endservent();
#endif
#ifdef HAVE_ENDPROTOENT
					endprotoent();
#endif
					return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX,
						FUNC11(&strbuf));
				}
				if(serv_port < 0 || serv_port > 65535) {
#ifdef HAVE_ENDSERVENT
					endservent();
#endif
#ifdef HAVE_ENDPROTOENT
					endprotoent();
#endif
					return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX,
						FUNC11(&strbuf));
				}
			}
			if(rd_len < 1+serv_port/8+1) {
				/* bitmap is larger, init new bytes at 0 */
				if(*len < 1+(size_t)serv_port/8+1) {
#ifdef HAVE_ENDSERVENT
					endservent();
#endif
#ifdef HAVE_ENDPROTOENT
					endprotoent();
#endif
					return FUNC0(
					LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
					FUNC11(&strbuf));
				}
				FUNC7(rd+rd_len, 0, 1+(size_t)serv_port/8+1-rd_len);
				rd_len = 1+serv_port/8+1;
			}
			rd[1+ serv_port/8] |= (1 << (7 - serv_port % 8));
		}
	}
	*len = (size_t)rd_len;

#ifdef HAVE_ENDSERVENT
	endservent();
#endif
#ifdef HAVE_ENDPROTOENT
	endprotoent();
#endif
	return LDNS_WIREPARSE_ERR_OK;
}