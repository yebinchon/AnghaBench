void
FUNC0(void)
{
    int i;
    extern char will_wont_resp[], do_dont_resp[];

    for (i = 0; i < 256; i++) {
	if (do_dont_resp[i]) {
	    if (FUNC0(i))
		printf("resp DO_DONT %d: %d\n", FUNC0(i), do_dont_resp[i]);
	    else if (FUNC0(i))
		FUNC0("resp DO_DONT %d: %d\n", FUNC0(i), do_dont_resp[i]);
	    else
		FUNC0("resp DO_DONT %d: %d\n", i,
				do_dont_resp[i]);
	    if (FUNC0(i)) {
		if (FUNC0(i))
		    FUNC0("want DO   %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("want DO   %d\n", FUNC0(i));
		else
		    FUNC0("want DO   %d\n", i);
	    } else {
		if (FUNC0(i))
		    FUNC0("want DONT %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("want DONT %d\n", FUNC0(i));
		else
		    FUNC0("want DONT %d\n", i);
	    }
	} else {
	    if (FUNC0(i)) {
		if (FUNC0(i))
		    FUNC0("     DO   %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("     DO   %d\n", FUNC0(i));
		else
		    FUNC0("     DO   %d\n", i);
	    }
	}
	if (will_wont_resp[i]) {
	    if (FUNC0(i))
		FUNC0("resp WILL_WONT %d: %d\n", FUNC0(i), will_wont_resp[i]);
	    else if (FUNC0(i))
		FUNC0("resp WILL_WONT %d: %d\n", FUNC0(i), will_wont_resp[i]);
	    else
		FUNC0("resp WILL_WONT %d: %d\n",
				i, will_wont_resp[i]);
	    if (FUNC0(i)) {
		if (FUNC0(i))
		    FUNC0("want WILL %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("want WILL %d\n", FUNC0(i));
		else
		    FUNC0("want WILL %d\n", i);
	    } else {
		if (FUNC0(i))
		    FUNC0("want WONT %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("want WONT %d\n", FUNC0(i));
		else
		    FUNC0("want WONT %d\n", i);
	    }
	} else {
	    if (FUNC0(i)) {
		if (FUNC0(i))
		    FUNC0("     WILL %d\n", FUNC0(i));
		else if (FUNC0(i))
		    FUNC0("     WILL %d\n", FUNC0(i));
		else
		    FUNC0("     WILL %d\n", i);
	    }
	}
    }

}