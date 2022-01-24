#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rar_br {int dummy; } ;
struct rar {scalar_t__ filterstart; int output_last_match; int lastlength; int lastoffset; int start_new_block; int start_new_table; int* oldoffset; int numlowoffsetrepeats; int lastlowoffset; scalar_t__ valid; int /*<<< orphan*/  lowoffsetcode; int /*<<< orphan*/  offsetcode; int /*<<< orphan*/  lengthcode; int /*<<< orphan*/  lzss; int /*<<< orphan*/  maincode; scalar_t__ is_ppmd_block; struct rar_br br; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
typedef  int /*<<< orphan*/  offsetbits ;
typedef  int /*<<< orphan*/  offsetbases ;
typedef  int /*<<< orphan*/  lengthbits ;
typedef  int /*<<< orphan*/  lengthbases ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 scalar_t__ ARCHIVE_FAILED ; 
 scalar_t__ ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rar*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rar*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct archive_read*) ; 
 int FUNC5 (struct rar_br*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC6 (struct rar_br*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read*,struct rar_br*,unsigned char const) ; 
 int FUNC8 (struct archive_read*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC9(struct archive_read *a, int64_t end)
{
  static const unsigned char lengthbases[] =
    {   0,   1,   2,   3,   4,   5,   6,
        7,   8,  10,  12,  14,  16,  20,
       24,  28,  32,  40,  48,  56,  64,
       80,  96, 112, 128, 160, 192, 224 };
  static const unsigned char lengthbits[] =
    { 0, 0, 0, 0, 0, 0, 0,
      0, 1, 1, 1, 1, 2, 2,
      2, 2, 3, 3, 3, 3, 4,
      4, 4, 4, 5, 5, 5, 5 };
  static const unsigned int offsetbases[] =
    {       0,       1,       2,       3,       4,       6,
            8,      12,      16,      24,      32,      48,
           64,      96,     128,     192,     256,     384,
          512,     768,    1024,    1536,    2048,    3072,
         4096,    6144,    8192,   12288,   16384,   24576,
        32768,   49152,   65536,   98304,  131072,  196608,
       262144,  327680,  393216,  458752,  524288,  589824,
       655360,  720896,  786432,  851968,  917504,  983040,
      1048576, 1310720, 1572864, 1835008, 2097152, 2359296,
      2621440, 2883584, 3145728, 3407872, 3670016, 3932160 };
  static const unsigned char offsetbits[] =
    {  0,  0,  0,  0,  1,  1,  2,  2,  3,  3,  4,  4,
       5,  5,  6,  6,  7,  7,  8,  8,  9,  9, 10, 10,
      11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16,
      16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
      18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18 };
  static const unsigned char shortbases[] =
    { 0, 4, 8, 16, 32, 64, 128, 192 };
  static const unsigned char shortbits[] =
    { 2, 2, 3, 4, 5, 6, 6, 6 };

  int symbol, offs, len, offsindex, lensymbol, i, offssymbol, lowoffsetsymbol;
  unsigned char newfile;
  struct rar *rar = (struct rar *)(a->format->data);
  struct rar_br *br = &(rar->br);

  if (rar->filterstart < end)
    end = rar->filterstart;

  while (1)
  {
    if (rar->output_last_match &&
      FUNC3(&rar->lzss) + rar->lastlength <= end)
    {
      FUNC2(rar, rar->lastoffset, rar->lastlength);
      rar->output_last_match = 0;
    }

    if(rar->is_ppmd_block || rar->output_last_match ||
      FUNC3(&rar->lzss) >= end)
      return FUNC3(&rar->lzss);

    if ((symbol = FUNC8(a, &rar->maincode)) < 0)
      return (ARCHIVE_FATAL);
    rar->output_last_match = 0;

    if (symbol < 256)
    {
      FUNC1(rar, symbol);
      continue;
    }
    else if (symbol == 256)
    {
      if (!FUNC7(a, br, 1))
        goto truncated_data;
      newfile = !FUNC5(br, 1);
      FUNC6(br, 1);

      if(newfile)
      {
        rar->start_new_block = 1;
        if (!FUNC7(a, br, 1))
          goto truncated_data;
        rar->start_new_table = FUNC5(br, 1);
        FUNC6(br, 1);
        return FUNC3(&rar->lzss);
      }
      else
      {
        if (FUNC4(a) != ARCHIVE_OK)
          return (ARCHIVE_FATAL);
        continue;
      }
    }
    else if(symbol==257)
    {
      FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
                        "Parsing filters is unsupported.");
      return (ARCHIVE_FAILED);
    }
    else if(symbol==258)
    {
      if(rar->lastlength == 0)
        continue;

      offs = rar->lastoffset;
      len = rar->lastlength;
    }
    else if (symbol <= 262)
    {
      offsindex = symbol - 259;
      offs = rar->oldoffset[offsindex];

      if ((lensymbol = FUNC8(a, &rar->lengthcode)) < 0)
        goto bad_data;
      if (lensymbol > (int)(sizeof(lengthbases)/sizeof(lengthbases[0])))
        goto bad_data;
      if (lensymbol > (int)(sizeof(lengthbits)/sizeof(lengthbits[0])))
        goto bad_data;
      len = lengthbases[lensymbol] + 2;
      if (lengthbits[lensymbol] > 0) {
        if (!FUNC7(a, br, lengthbits[lensymbol]))
          goto truncated_data;
        len += FUNC5(br, lengthbits[lensymbol]);
        FUNC6(br, lengthbits[lensymbol]);
      }

      for (i = offsindex; i > 0; i--)
        rar->oldoffset[i] = rar->oldoffset[i-1];
      rar->oldoffset[0] = offs;
    }
    else if(symbol<=270)
    {
      offs = shortbases[symbol-263] + 1;
      if(shortbits[symbol-263] > 0) {
        if (!FUNC7(a, br, shortbits[symbol-263]))
          goto truncated_data;
        offs += FUNC5(br, shortbits[symbol-263]);
        FUNC6(br, shortbits[symbol-263]);
      }

      len = 2;

      for(i = 3; i > 0; i--)
        rar->oldoffset[i] = rar->oldoffset[i-1];
      rar->oldoffset[0] = offs;
    }
    else
    {
      if (symbol-271 > (int)(sizeof(lengthbases)/sizeof(lengthbases[0])))
        goto bad_data;
      if (symbol-271 > (int)(sizeof(lengthbits)/sizeof(lengthbits[0])))
        goto bad_data;
      len = lengthbases[symbol-271]+3;
      if(lengthbits[symbol-271] > 0) {
        if (!FUNC7(a, br, lengthbits[symbol-271]))
          goto truncated_data;
        len += FUNC5(br, lengthbits[symbol-271]);
        FUNC6(br, lengthbits[symbol-271]);
      }

      if ((offssymbol = FUNC8(a, &rar->offsetcode)) < 0)
        goto bad_data;
      if (offssymbol > (int)(sizeof(offsetbases)/sizeof(offsetbases[0])))
        goto bad_data;
      if (offssymbol > (int)(sizeof(offsetbits)/sizeof(offsetbits[0])))
        goto bad_data;
      offs = offsetbases[offssymbol]+1;
      if(offsetbits[offssymbol] > 0)
      {
        if(offssymbol > 9)
        {
          if(offsetbits[offssymbol] > 4) {
            if (!FUNC7(a, br, offsetbits[offssymbol] - 4))
              goto truncated_data;
            offs += FUNC5(br, offsetbits[offssymbol] - 4) << 4;
            FUNC6(br, offsetbits[offssymbol] - 4);
	  }

          if(rar->numlowoffsetrepeats > 0)
          {
            rar->numlowoffsetrepeats--;
            offs += rar->lastlowoffset;
          }
          else
          {
            if ((lowoffsetsymbol =
              FUNC8(a, &rar->lowoffsetcode)) < 0)
              return (ARCHIVE_FATAL);
            if(lowoffsetsymbol == 16)
            {
              rar->numlowoffsetrepeats = 15;
              offs += rar->lastlowoffset;
            }
            else
            {
              offs += lowoffsetsymbol;
              rar->lastlowoffset = lowoffsetsymbol;
            }
          }
        }
        else {
          if (!FUNC7(a, br, offsetbits[offssymbol]))
            goto truncated_data;
          offs += FUNC5(br, offsetbits[offssymbol]);
          FUNC6(br, offsetbits[offssymbol]);
        }
      }

      if (offs >= 0x40000)
        len++;
      if (offs >= 0x2000)
        len++;

      for(i = 3; i > 0; i--)
        rar->oldoffset[i] = rar->oldoffset[i-1];
      rar->oldoffset[0] = offs;
    }

    rar->lastoffset = offs;
    rar->lastlength = len;
    rar->output_last_match = 1;
  }
truncated_data:
  FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                    "Truncated RAR file data");
  rar->valid = 0;
  return (ARCHIVE_FATAL);
bad_data:
  FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                    "Bad RAR file data");
  return (ARCHIVE_FATAL);
}