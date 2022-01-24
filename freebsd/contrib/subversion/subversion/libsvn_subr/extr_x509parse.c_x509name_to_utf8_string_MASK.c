#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int tag; int /*<<< orphan*/  len; scalar_t__ p; } ;
struct TYPE_13__ {TYPE_1__ val; } ;
typedef  TYPE_2__ x509_name ;
struct TYPE_14__ {int len; scalar_t__ data; } ;
typedef  TYPE_3__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint16_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;

/* Variables and functions */
#define  ASN1_BMP_STRING 131 
#define  ASN1_T61_STRING 130 
#define  ASN1_UNIVERSAL_STRING 129 
#define  ASN1_UTF8_STRING 128 
 int /*<<< orphan*/  TRUE ; 
 char const* FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__ const**,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 char const* FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__ const**,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__ const**,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC8(const x509_name *name, apr_pool_t *result_pool)
{
  const svn_string_t *src_string;
  const svn_string_t *utf8_string;
  svn_error_t *err;

  src_string = FUNC4((const char *)name->val.p,
                                  name->val.len,
                                  result_pool);
  switch (name->val.tag)
    {
    case ASN1_UTF8_STRING:
      if (FUNC5(src_string->data, src_string->len))
        return FUNC2(src_string, result_pool);
      else
        /* not a valid UTF-8 string, who knows what it is,
         * so run it through the fuzzy_escape code.  */
        return FUNC0(src_string, result_pool);
      break;

      /* Both BMP and UNIVERSAL should always be in Big Endian (aka
       * network byte order).  But rumor has it that there are certs
       * out there with other endianess and even Byte Order Marks.
       * If we actually run into these, we might need to do something
       * about it. */

    case ASN1_BMP_STRING:
      if (0 != src_string->len % sizeof(apr_uint16_t))
          return FUNC0(src_string, result_pool);
      err = FUNC6(&utf8_string,
                                   (const void*)(src_string->data),
                                   src_string->len / sizeof(apr_uint16_t),
                                   TRUE, result_pool, result_pool);
      break;

    case ASN1_UNIVERSAL_STRING:
      if (0 != src_string->len % sizeof(apr_int32_t))
          return FUNC0(src_string, result_pool);
      err = FUNC7(&utf8_string,
                                   (const void*)(src_string->data),
                                   src_string->len / sizeof(apr_int32_t),
                                   TRUE, result_pool, result_pool);
      break;

      /* Despite what all the IETF, ISO, ITU bits say everything out
       * on the Internet that I can find treats this as ISO-8859-1.
       * Even the name is misleading, it's not actually T.61.  All the
       * gory details can be found in the Character Sets section of:
       * https://www.cs.auckland.ac.nz/~pgut001/pubs/x509guide.txt
       */
    case ASN1_T61_STRING:
      err = FUNC1(&utf8_string, src_string, result_pool);
      break;

      /* This leaves two types out there in the wild.  PrintableString,
       * which is just a subset of ASCII and IA5 which is ASCII (though
       * 0x24 '$' and 0x23 '#' may be defined with differnet symbols
       * depending on the location, in practice it seems everyone just
       * treats it as ASCII).  Since these are just ASCII run through
       * the fuzzy_escape code to deal with anything that isn't actually
       * ASCII.  There shouldn't be any other types here but if we find
       * a cert with some other encoding, the best we can do is the
       * fuzzy_escape().  Note: Technically IA5 isn't valid in this
       * context, however in the real world it may pop up. */
    default:
      return FUNC0(src_string, result_pool);
    }

  if (err)
    {
      FUNC3(err);
      return FUNC0(src_string, result_pool);
    }

  return FUNC2(utf8_string, result_pool);
}