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
struct TYPE_3__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  int FICL_INT ;

/* Variables and functions */
 int FALSE ; 
 int FICL_FALSE ; 
 int FICL_TRUE ; 
 int TRUE ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

__attribute__((used)) static void FUNC10(FICL_VM *pVM) /*  */
{
	int bufferLength = FUNC3(pVM->pStack);
	char *buffer = (char *)FUNC4(pVM->pStack);
	char *bufferStart = buffer;

	int formatLength = FUNC3(pVM->pStack);
	char *format = (char *)FUNC4(pVM->pStack);
	char *formatStop = format + formatLength;

	int base = 10;
	int unsignedInteger = FALSE;

	FICL_INT append = FICL_TRUE;

	while (format < formatStop)
	{
		char scratch[64];
		char *source;
		int actualLength;
		int desiredLength;
		int leadingZeroes;


		if (*format != '%')
		{
			source = format;
			actualLength = desiredLength = 1;
			leadingZeroes = 0;
		}
		else
		{
			format++;
			if (format == formatStop)
				break;

			leadingZeroes = (*format == '0');
			if (leadingZeroes)
				{
				format++;
				if (format == formatStop)
					break;
				}

			desiredLength = FUNC0(*format);
			if (desiredLength)
				{
				desiredLength = FUNC8(format, &format, 10);
				if (format == formatStop)
					break;
				}
			else if (*format == '*')
				{
				desiredLength = FUNC3(pVM->pStack);
				format++;
				if (format == formatStop)
					break;
				}


			switch (*format)
			{
				case 's':
				case 'S':
				{
					actualLength = FUNC3(pVM->pStack);
					source = (char *)FUNC4(pVM->pStack);
					break;
				}
				case 'x':
				case 'X':
					base = 16;
				case 'u':
				case 'U':
					unsignedInteger = TRUE;
				case 'd':
				case 'D':
				{
					int integer = FUNC3(pVM->pStack);
					if (unsignedInteger)
						FUNC9(integer, scratch, base);
					else
						FUNC1(integer, scratch, base);
					base = 10;
					unsignedInteger = FALSE;
					source = scratch;
					actualLength = FUNC7(scratch);
					break;
				}
				case '%':
					source = format;
					actualLength = 1;
				default:
					continue;
			}
		}

		if (append != FICL_FALSE)
		{
			if (!desiredLength)
				desiredLength = actualLength;
			if (desiredLength > bufferLength)
			{
				append = FICL_FALSE;
				desiredLength = bufferLength;
			}
			while (desiredLength > actualLength)
				{
				*buffer++ = (char)((leadingZeroes) ? '0' : ' ');
				bufferLength--;
				desiredLength--;
				}
			FUNC2(buffer, source, actualLength);
			buffer += actualLength;
			bufferLength -= actualLength;
		}

		format++;
	}

	FUNC6(pVM->pStack, bufferStart);
	FUNC5(pVM->pStack, buffer - bufferStart);
	FUNC5(pVM->pStack, append);
}