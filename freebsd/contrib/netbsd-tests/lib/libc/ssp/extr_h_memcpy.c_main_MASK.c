int
FUNC0(int argc, char *argv[])
{
	char b[10];
	int len = FUNC0(argv[1]);

	(void)memcpy(b, "1020202020202", len);
	(void)printf("%*.*s\n", len, len, b);

	return 0;
}