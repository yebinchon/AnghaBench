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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t uint16_t ;
struct sldns_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {scalar_t__ _dname_count; int* _wireformat; } ;
typedef  TYPE_1__ sldns_rr_descriptor ;
typedef  struct sldns_buffer sldns_buffer ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_DNAME 129 
#define  LDNS_RDF_TYPE_STR 128 
 int /*<<< orphan*/  FUNC0 (struct sldns_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct sldns_buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct sldns_buffer*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct sldns_buffer*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct sldns_buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sldns_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sldns_buffer*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sldns_buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct sldns_buffer*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sldns_buffer*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (size_t) ; 

__attribute__((used)) static int
FUNC17(struct sldns_buffer* buf, uint8_t* pkt,
	size_t pktlen, uint8_t* dname, uint16_t rr_type, uint16_t rr_class,
	uint32_t rr_ttl, uint8_t* rr_data, uint16_t rr_rdlen)
{
	sldns_buffer pktbuf;
	size_t dname_len = 0;
	size_t rdlenpos;
	size_t rdlen;
	uint8_t* rd;
	const sldns_rr_descriptor* desc;
	FUNC8(&pktbuf, pkt, pktlen);
	FUNC5(buf);

	/* decompress dname */
	FUNC10(&pktbuf,
		(size_t)(dname - FUNC6(&pktbuf)));
	dname_len = FUNC2(&pktbuf);
	if(dname_len == 0) return 0; /* parse fail on dname */
	if(!FUNC3(buf, dname_len)) return 0;
	FUNC0(&pktbuf, FUNC6(buf), dname);
	FUNC11(buf, (ssize_t)dname_len);

	/* type, class, ttl and rdatalength fields */
	if(!FUNC3(buf, 10)) return 0;
	FUNC13(buf, rr_type);
	FUNC13(buf, rr_class);
	FUNC15(buf, rr_ttl);
	rdlenpos = FUNC9(buf);
	FUNC13(buf, 0); /* rd length position */

	/* decompress rdata */
	desc = FUNC16(rr_type);
	rd = rr_data;
	rdlen = rr_rdlen;
	if(rdlen > 0 && desc && desc->_dname_count > 0) {
		int count = (int)desc->_dname_count;
		int rdf = 0;
		size_t len; /* how much rdata to plain copy */
		size_t uncompressed_len, compressed_len;
		size_t oldpos;
		/* decompress dnames. */
		while(rdlen > 0 && count) {
			switch(desc->_wireformat[rdf]) {
			case LDNS_RDF_TYPE_DNAME:
				FUNC10(&pktbuf,
					(size_t)(rd -
					FUNC4(&pktbuf)));
				oldpos = FUNC9(&pktbuf);
				/* moves pktbuf to right after the
				 * compressed dname, and returns uncompressed
				 * dname length */
				uncompressed_len = FUNC2(&pktbuf);
				if(!uncompressed_len)
					return 0; /* parse error in dname */
				if(!FUNC3(buf,
					uncompressed_len))
					/* dname too long for buffer */
					return 0;
				FUNC0(&pktbuf, 
					FUNC6(buf), rd);
				FUNC11(buf, (ssize_t)uncompressed_len);
				compressed_len = FUNC9(
					&pktbuf) - oldpos;
				rd += compressed_len;
				rdlen -= compressed_len;
				count--;
				len = 0;
				break;
			case LDNS_RDF_TYPE_STR:
				len = rd[0] + 1;
				break;
			default:
				len = FUNC1(desc->_wireformat[rdf]);
				break;
			}
			if(len) {
				if(!FUNC3(buf, len))
					return 0; /* too long for buffer */
				FUNC12(buf, rd, len);
				rd += len;
				rdlen -= len;
			}
			rdf++;
		}
	}
	/* copy remaining data */
	if(rdlen > 0) {
		if(!FUNC3(buf, rdlen)) return 0;
		FUNC12(buf, rd, rdlen);
	}
	/* fixup rdlength */
	FUNC14(buf, rdlenpos,
		FUNC9(buf)-rdlenpos-2);
	FUNC7(buf);
	return 1;
}