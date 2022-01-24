__attribute__((used)) static int
FUNC0(const char *cmd, char **argv, int argc)
{
	extern int opterr, optind, optopt, optreset;
	int ch;

	optind = optreset = 1;
	opterr = 0;

	while ((ch = FUNC0(argc, argv, "")) != -1) {
		switch (ch) {
		default:
			FUNC0("%s: Invalid flag -%c", cmd, optopt);
			return -1;
		}
	}

	return optind;
}