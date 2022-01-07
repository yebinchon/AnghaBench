; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [82 x i8] c"Usage: %s [OPTION]... [FILE]...\0ACompress or decompress FILEs in the .xz format.\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Operation mode:\0A\00", align 1
@.str.3 = private unnamed_addr constant [190 x i8] c"  -z, --compress      force compression\0A  -d, --decompress    force decompression\0A  -t, --test          test compressed file integrity\0A  -l, --list          list information about .xz files\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A Operation modifiers:\0A\00", align 1
@.str.5 = private unnamed_addr constant [206 x i8] c"  -k, --keep          keep (don't delete) input files\0A  -f, --force         force overwrite of output file and (de)compress links\0A  -c, --stdout        write to standard output and don't delete input files\00", align 1
@.str.6 = private unnamed_addr constant [128 x i8] c"      --single-stream decompress only the first stream, and silently\0A                      ignore possible remaining input data\00", align 1
@.str.7 = private unnamed_addr constant [431 x i8] c"      --no-sparse     do not create sparse files when decompressing\0A  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\0A      --files[=FILE]  read filenames to process from FILE; if FILE is\0A                      omitted, filenames are read from the standard input;\0A                      filenames must be terminated with the newline character\0A      --files0[=FILE] like --files but use the null character as terminator\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\0A Basic file format and compression options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [272 x i8] c"  -F, --format=FMT    file format to encode or decode; possible values are\0A                      `auto' (default), `xz', `lzma', and `raw'\0A  -C, --check=CHECK   integrity check type: `none' (use with caution),\0A                      `crc32', `crc64' (default), or `sha256'\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"      --ignore-check  don't verify the integrity check when decompressing\00", align 1
@.str.11 = private unnamed_addr constant [157 x i8] c"  -0 ... -9           compression preset; default is 6; take compressor *and*\0A                      decompressor memory usage into account before using 7-9!\00", align 1
@.str.12 = private unnamed_addr constant [150 x i8] c"  -e, --extreme       try to improve compression ratio by using more CPU time;\0A                      does not affect decompressor memory requirements\00", align 1
@.str.13 = private unnamed_addr constant [148 x i8] c"  -T, --threads=NUM   use at most NUM threads; the default is 1; set to 0\0A                      to use as many threads as there are processor cores\00", align 1
@.str.14 = private unnamed_addr constant [179 x i8] c"      --block-size=SIZE\0A                      start a new .xz block after every SIZE bytes of input;\0A                      use this to set the block size for threaded compression\00", align 1
@.str.15 = private unnamed_addr constant [154 x i8] c"      --block-list=SIZES\0A                      start a new .xz block after the given comma-separated\0A                      intervals of uncompressed data\00", align 1
@.str.16 = private unnamed_addr constant [252 x i8] c"      --flush-timeout=TIMEOUT\0A                      when compressing, if more than TIMEOUT milliseconds has\0A                      passed since the previous flush and reading more input\0A                      would block, all pending data is flushed out\00", align 1
@.str.17 = private unnamed_addr constant [244 x i8] c"      --memlimit-compress=LIMIT\0A      --memlimit-decompress=LIMIT\0A  -M, --memlimit=LIMIT\0A                      set memory usage limit for compression, decompression,\0A                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults\00", align 1
@.str.18 = private unnamed_addr constant [157 x i8] c"      --no-adjust     if compression settings exceed the memory usage limit,\0A                      give an error instead of adjusting the settings downwards\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"\0A Custom filter chain for compression (alternative for using presets):\00", align 1
@.str.20 = private unnamed_addr constant [457 x i8] c"\0A  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\0A  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\0A  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\0A  --arm[=OPTS]        ARM BCJ filter (little endian only)\0A  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\0A  --sparc[=OPTS]      SPARC BCJ filter\0A                      Valid OPTS for all BCJ filters:\0A                        start=NUM  start offset for conversions (default=0)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\0A Other options:\0A\00", align 1
@.str.22 = private unnamed_addr constant [148 x i8] c"  -q, --quiet         suppress warnings; specify twice to suppress errors too\0A  -v, --verbose       be verbose; specify twice for even more verbose\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"  -Q, --no-warn       make warnings not affect the exit status\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"      --robot         use machine-parsable messages (useful for scripts)\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [131 x i8] c"      --info-memory   display the total amount of RAM and the currently active\0A                      memory usage limits, and exit\00", align 1
@.str.27 = private unnamed_addr constant [130 x i8] c"  -h, --help          display the short help (lists only the basic options)\0A  -H, --long-help     display this long help and exit\00", align 1
@.str.28 = private unnamed_addr constant [133 x i8] c"  -h, --help          display this short help and exit\0A  -H, --long-help     display the long help (lists also the advanced options)\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"  -V, --version       display the version number and exit\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"Report bugs to <%s> (in English or Finnish).\0A\00", align 1
@PACKAGE_BUGREPORT = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@PACKAGE_NAME = common dso_local global i8* null, align 8
@PACKAGE_URL = common dso_local global i8* null, align 8
@E_SUCCESS = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@V_SILENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @message_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i8* @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i8*, i8*, ...) @printf(i8* %3, i8* %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @puts(i8* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @puts(i8* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i8* @_(i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @puts(i8* %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @puts(i8* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = call i8* @_(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @puts(i8* %26)
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i8* @_(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 @puts(i8* %31)
  %33 = call i8* @_(i8* getelementptr inbounds ([431 x i8], [431 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @puts(i8* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %40 = call i32 @puts(i8* %39)
  %41 = call i8* @_(i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 @puts(i8* %41)
  %43 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  %44 = call i32 @puts(i8* %43)
  br label %45

45:                                               ; preds = %38, %35
  %46 = call i8* @_(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.11, i64 0, i64 0))
  %47 = call i32 @puts(i8* %46)
  %48 = call i8* @_(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.12, i64 0, i64 0))
  %49 = call i32 @puts(i8* %48)
  %50 = call i8* @_(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.13, i64 0, i64 0))
  %51 = call i32 @puts(i8* %50)
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %45
  %55 = call i8* @_(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.14, i64 0, i64 0))
  %56 = call i32 @puts(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.15, i64 0, i64 0))
  %58 = call i32 @puts(i8* %57)
  %59 = call i8* @_(i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.16, i64 0, i64 0))
  %60 = call i32 @puts(i8* %59)
  %61 = call i8* @_(i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str.17, i64 0, i64 0))
  %62 = call i32 @puts(i8* %61)
  %63 = call i8* @_(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.18, i64 0, i64 0))
  %64 = call i32 @puts(i8* %63)
  br label %65

65:                                               ; preds = %54, %45
  %66 = load i32, i32* %2, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  %70 = call i32 @puts(i8* %69)
  %71 = call i8* @_(i8* getelementptr inbounds ([457 x i8], [457 x i8]* @.str.20, i64 0, i64 0))
  %72 = call i32 @puts(i8* %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %78 = call i32 @puts(i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i8* @_(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.22, i64 0, i64 0))
  %81 = call i32 @puts(i8* %80)
  %82 = load i32, i32* %2, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %86 = call i32 @puts(i8* %85)
  %87 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0))
  %88 = call i32 @puts(i8* %87)
  %89 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0))
  %90 = call i8* @_(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.26, i64 0, i64 0))
  %91 = call i32 @puts(i8* %90)
  %92 = call i8* @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.27, i64 0, i64 0))
  %93 = call i32 @puts(i8* %92)
  br label %97

94:                                               ; preds = %79
  %95 = call i8* @_(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.28, i64 0, i64 0))
  %96 = call i32 @puts(i8* %95)
  br label %97

97:                                               ; preds = %94, %84
  %98 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %99 = call i32 @puts(i8* %98)
  %100 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0))
  %101 = call i32 @puts(i8* %100)
  %102 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  %103 = load i8*, i8** @PACKAGE_BUGREPORT, align 8
  %104 = call i32 (i8*, i8*, ...) @printf(i8* %102, i8* %103)
  %105 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %106 = load i8*, i8** @PACKAGE_NAME, align 8
  %107 = load i8*, i8** @PACKAGE_URL, align 8
  %108 = call i32 (i8*, i8*, ...) @printf(i8* %105, i8* %106, i8* %107)
  %109 = load i32, i32* @E_SUCCESS, align 4
  %110 = load i32, i32* @E_ERROR, align 4
  %111 = load i64, i64* @verbosity, align 8
  %112 = load i64, i64* @V_SILENT, align 8
  %113 = icmp ne i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @tuklib_exit(i32 %109, i32 %110, i32 %114)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @tuklib_exit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
