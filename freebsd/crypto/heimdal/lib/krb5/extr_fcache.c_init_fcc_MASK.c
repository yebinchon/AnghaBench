#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  void* krb5_deltat ;
typedef  TYPE_1__* krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int int8_t ;
typedef  void* int32_t ;
typedef  int int16_t ;
struct TYPE_10__ {int version; } ;
struct TYPE_9__ {void* kdc_usec_offset; void* kdc_sec_offset; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
#define  FCC_TAG_DELTATIME 132 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ KRB5_CCACHE_BADVNO ; 
 scalar_t__ KRB5_CC_END ; 
 scalar_t__ KRB5_CC_FORMAT ; 
#define  KRB5_FCC_FVNO_1 131 
#define  KRB5_FCC_FVNO_2 130 
#define  KRB5_FCC_FVNO_3 129 
#define  KRB5_FCC_FVNO_4 128 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static krb5_error_code
FUNC15 (krb5_context context,
	  krb5_ccache id,
	  krb5_storage **ret_sp,
	  int *ret_fd,
	  krb5_deltat *kdc_offset)
{
    int fd;
    int8_t pvno, tag;
    krb5_storage *sp;
    krb5_error_code ret;

    if (kdc_offset)
	*kdc_offset = 0;

    ret = FUNC4(context, id, &fd, O_RDONLY | O_BINARY | O_CLOEXEC, 0);
    if(ret)
	return ret;

    sp = FUNC12(fd);
    if(sp == NULL) {
	FUNC6(context);
	ret = ENOMEM;
	goto out;
    }
    FUNC13(sp, KRB5_CC_END);
    ret = FUNC9(sp, &pvno);
    if(ret != 0) {
	if(ret == KRB5_CC_END) {
	    ret = ENOENT;
	    FUNC10(context, ret,
				   FUNC2("Empty credential cache file: %s", ""),
				   FUNC1(id));
	} else
	    FUNC10(context, ret, FUNC2("Error reading pvno "
						    "in cache file: %s", ""),
				   FUNC1(id));
	goto out;
    }
    if(pvno != 5) {
	ret = KRB5_CCACHE_BADVNO;
	FUNC10(context, ret, FUNC2("Bad version number in credential "
						"cache file: %s", ""),
			       FUNC1(id));
	goto out;
    }
    ret = FUNC9(sp, &tag); /* should not be host byte order */
    if(ret != 0) {
	ret = KRB5_CC_FORMAT;
	FUNC10(context, ret, "Error reading tag in "
			      "cache file: %s", FUNC1(id));
	goto out;
    }
    FUNC0(id)->version = tag;
    FUNC14(context, sp, FUNC0(id)->version);
    switch (tag) {
    case KRB5_FCC_FVNO_4: {
	int16_t length;

	ret = FUNC7 (sp, &length);
	if(ret) {
	    ret = KRB5_CC_FORMAT;
	    FUNC10(context, ret,
				   FUNC2("Error reading tag length in "
				      "cache file: %s", ""), FUNC1(id));
	    goto out;
	}
	while(length > 0) {
	    int16_t dtag, data_len;
	    int i;
	    int8_t dummy;

	    ret = FUNC7 (sp, &dtag);
	    if(ret) {
		ret = KRB5_CC_FORMAT;
		FUNC10(context, ret, FUNC2("Error reading dtag in "
							"cache file: %s", ""),
				       FUNC1(id));
		goto out;
	    }
	    ret = FUNC7 (sp, &data_len);
	    if(ret) {
		ret = KRB5_CC_FORMAT;
		FUNC10(context, ret,
				       FUNC2("Error reading dlength "
					  "in cache file: %s",""),
				       FUNC1(id));
		goto out;
	    }
	    switch (dtag) {
	    case FCC_TAG_DELTATIME : {
		int32_t offset;

		ret = FUNC8 (sp, &offset);
		ret |= FUNC8 (sp, &context->kdc_usec_offset);
		if(ret) {
		    ret = KRB5_CC_FORMAT;
		    FUNC10(context, ret,
					   FUNC2("Error reading kdc_sec in "
					      "cache file: %s", ""),
					   FUNC1(id));
		    goto out;
		}
		context->kdc_sec_offset = offset;
		if (kdc_offset)
		    *kdc_offset = offset;
		break;
	    }
	    default :
		for (i = 0; i < data_len; ++i) {
		    ret = FUNC9 (sp, &dummy);
		    if(ret) {
			ret = KRB5_CC_FORMAT;
			FUNC10(context, ret,
					       FUNC2("Error reading unknown "
						  "tag in cache file: %s", ""),
					       FUNC1(id));
			goto out;
		    }
		}
		break;
	    }
	    length -= 4 + data_len;
	}
	break;
    }
    case KRB5_FCC_FVNO_3:
    case KRB5_FCC_FVNO_2:
    case KRB5_FCC_FVNO_1:
	break;
    default :
	ret = KRB5_CCACHE_BADVNO;
	FUNC10(context, ret,
			       FUNC2("Unknown version number (%d) in "
				  "credential cache file: %s", ""),
			       (int)tag, FUNC1(id));
	goto out;
    }
    *ret_sp = sp;
    *ret_fd = fd;

    return 0;
  out:
    if(sp != NULL)
	FUNC11(sp);
    FUNC5(context, fd);
    FUNC3(fd);
    return ret;
}