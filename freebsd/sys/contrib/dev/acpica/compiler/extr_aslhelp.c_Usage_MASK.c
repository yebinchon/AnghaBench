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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ASL_COMPILER_NAME ; 
 char* ASL_COMPLIANCE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4 (
    void)
{
    FUNC3 (FUNC0 (ASL_COMPILER_NAME));
    FUNC3 ("%s\n\n", ASL_COMPLIANCE);
    FUNC2 ("iasl [Options] [Files]");

    FUNC3 ("\nGeneral:\n");
    FUNC1 ("-@  <file>",      "Specify command file");
    FUNC1 ("-I  <dir>",       "Specify additional include directory");
    FUNC1 ("-p  <prefix>",    "Specify path/filename prefix for all output files");
    FUNC1 ("-v",              "Display compiler version");
    FUNC1 ("-vo",             "Enable optimization comments");
    FUNC1 ("-vs",             "Disable signon");

    FUNC3 ("\nHelp:\n");
    FUNC1 ("-h",              "This message");
    FUNC1 ("-hc",             "Display operators allowed in constant expressions");
    FUNC1 ("-hd",             "Info for obtaining and disassembling binary ACPI tables");
    FUNC1 ("-hf",             "Display help for output filename generation");
    FUNC1 ("-hr",             "Display ACPI reserved method names");
    FUNC1 ("-ht",             "Display currently supported ACPI table names");

    FUNC3 ("\nPreprocessor:\n");
    FUNC1 ("-D <symbol>",     "Define symbol for preprocessor use");
    FUNC1 ("-li",             "Create preprocessed output file (*.i)");
    FUNC1 ("-P",              "Preprocess only and create preprocessor output file (*.i)");
    FUNC1 ("-Pn",             "Disable preprocessor");

    FUNC3 ("\nErrors, Warnings, and Remarks:\n");
    FUNC1 ("-va",             "Disable all errors/warnings/remarks");
    FUNC1 ("-ve",             "Report only errors (ignore warnings and remarks)");
    FUNC1 ("-vi",             "Less verbose errors and warnings for use with IDEs");
    FUNC1 ("-vr",             "Disable remarks");
    FUNC1 ("-vw <messageid>", "Ignore specific error, warning or remark");
    FUNC1 ("-vx <messageid>", "Expect a specific warning, remark, or error");
    FUNC1 ("-w <1|2|3>",      "Set warning reporting level");
    FUNC1 ("-we",             "Report warnings as errors");
    FUNC1 ("-ww <messageid>", "Report specific warning or remark as error");

    FUNC3 ("\nAML Bytecode Generation (*.aml):\n");
    FUNC1 ("-oa",             "Disable all optimizations (compatibility mode)");
    FUNC1 ("-of",             "Disable constant folding");
    FUNC1 ("-oi",             "Disable integer optimization to Zero/One/Ones");
    FUNC1 ("-on",             "Disable named reference string optimization");
    FUNC1 ("-ot",             "Disable typechecking");
    FUNC1 ("-cr",             "Disable Resource Descriptor error checking");
    FUNC1 ("-in",             "Ignore NoOp operators");
    FUNC1 ("-r <revision>",   "Override table header Revision (1-255)");

    FUNC3 ("\nListings:\n");
    FUNC1 ("-l",              "Create mixed listing file (ASL source and AML) (*.lst)");
    FUNC1 ("-lm",             "Create hardware summary map file (*.map)");
    FUNC1 ("-ln",             "Create namespace file (*.nsp)");
    FUNC1 ("-ls",             "Create combined source file (expanded includes) (*.src)");
    FUNC1 ("-lx",             "Create cross-reference file (*.xrf)");

    FUNC3 ("\nFirmware Support - C Text Output:\n");
    FUNC1 ("-tc",             "Create hex AML table in C (*.hex)");
    FUNC1 ("-sc",             "Create named hex AML arrays in C (*.c)");
    FUNC1 ("-ic",             "Create include file in C for -sc symbols (*.h)");
    FUNC1 ("-so",             "Create namespace AML offset table in C (*.offset.h)");

    FUNC3 ("\nFirmware Support - Assembler Text Output:\n");
    FUNC1 ("-ta",             "Create hex AML table in assembler (*.hex)");
    FUNC1 ("-sa",             "Create named hex AML arrays in assembler (*.asm)");
    FUNC1 ("-ia",             "Create include file in assembler for -sa symbols (*.inc)");

    FUNC3 ("\nFirmware Support - ASL Text Output:\n");
    FUNC1 ("-ts",             "Create hex AML table in ASL (Buffer object) (*.hex)");

    FUNC3 ("\nLegacy-ASL to ASL+ Converter:\n");
    FUNC1 ("-ca <file>",      "Convert legacy-ASL source file to new ASL+ file");
    FUNC1 ("",                "  (Original comments are passed through to ASL+ file)");

    FUNC3 ("\nData Table Compiler:\n");
    FUNC1 ("-tp",             "Compile tables with flex/bison prototype");
    FUNC1 ("-G",              "Compile custom table that contains generic operators");
    FUNC1 ("-T <sig list>|ALL",   "Create ACPI table template/example files");
    FUNC1 ("-T <count>",      "Emit DSDT and <count> SSDTs to same file");
    FUNC1 ("-vt",             "Create verbose template files (full disassembly)");

    FUNC3 ("\nAML Disassembler:\n");
    FUNC1 ("-d  <f1 f2 ...>", "Disassemble or decode binary ACPI tables to file (*.dsl)");
    FUNC1 ("",                "  (Optional, file type is automatically detected)");
    FUNC1 ("-da <f1 f2 ...>", "Disassemble multiple tables from single namespace");
    FUNC1 ("-db",             "Do not translate Buffers to Resource Templates");
    FUNC1 ("-dc <f1 f2 ...>", "Disassemble AML and immediately compile it");
    FUNC1 ("",                "  (Obtain DSDT from current system if no input file)");
    FUNC1 ("-df",             "Force disassembler to assume table contains valid AML");
    FUNC1 ("-dl",             "Emit legacy ASL code only (no C-style operators)");
    FUNC1 ("-e  <f1 f2 ...>", "Include ACPI table(s) for external symbol resolution");
    FUNC1 ("-fe <file>",      "Specify external symbol declaration file");
    FUNC1 ("-in",             "Ignore NoOp opcodes");
    FUNC1 ("-l",              "Disassemble to mixed ASL and AML code");
    FUNC1 ("-vt",             "Dump binary table data in hex format within output file");

    FUNC3 ("\nDebug Options:\n");
    FUNC1 ("-bc",             "Create converter debug file (*.cdb)");
    FUNC1 ("-bf",             "Create debug file (full output) (*.txt)");
    FUNC1 ("-bs",             "Create debug file (parse tree only) (*.txt)");
    FUNC1 ("-bp <depth>",     "Prune ASL parse tree");
    FUNC1 ("-bt <type>",      "Object type to be pruned from the parse tree");
    FUNC1 ("-f",              "Ignore errors, force creation of AML output file(s)");
    FUNC1 ("-m <size>",       "Set internal line buffer size (in Kbytes)");
    FUNC1 ("-n",              "Parse only, no output generation");
    FUNC1 ("-oc",             "Display compile times and statistics");
    FUNC1 ("-x <level>",      "Set debug level for trace output");
    FUNC1 ("-z",              "Do not insert new compiler ID for DataTables");
}