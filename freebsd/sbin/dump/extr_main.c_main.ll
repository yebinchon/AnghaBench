; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.stat = type { i32, i32 }
%union.dinode = type { i32 }
%struct.fstab = type { i8*, i8* }

@spcl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@tsize = common dso_local global double 0.000000e+00, align 8
@_PATH_DUMPDATES = common dso_local global i8* null, align 8
@dumpdates = common dso_local global i8* null, align 8
@popenout = common dso_local global i8* null, align 8
@tape = common dso_local global i8* null, align 8
@_PATH_DTMP = common dso_local global i32 0, align 4
@temp = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TP_BSIZE must be a multiple of DEV_BSIZE\0A\00", align 1
@level = common dso_local global i32 0, align 4
@rsync_friendly = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"0123456789aB:b:C:cD:d:f:h:LnP:RrSs:T:uWw\00", align 1
@unlimited = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"number of blocks per file\00", align 1
@blocksperfile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"number of blocks per write\00", align 1
@ntrec = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"cachesize\00", align 1
@cachesize = common dso_local global i32 0, align 4
@cartridge = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@density = common dso_local global i32 0, align 4
@HIGHDENSITYTREC = common dso_local global double 0.000000e+00, align 8
@X_STARTUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"You cannot use the P and f flags together.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"honor level\00", align 1
@snapdump = common dso_local global i64 0, align 8
@notify = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"tape size\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"bad time \22%s\22\0A\00", align 1
@lastlevel = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@X_FINOK = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Must specify disk or file system\0A\00", align 1
@disk = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"Unknown arguments to dump:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"rsync friendly options\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"can be used only with level 0 dumps.\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"You cannot use the T and u flags together.\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"child pipeline process\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"TAPE\00", align 1
@_PATH_DEFTAPE = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@pipeout = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@host = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"remote dump not enabled\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@sig = common dso_local global i64 0, align 8
@SIGTRAP = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@interrupt = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"%s: unknown file system\00", align 1
@NAMELEN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"an unlisted file system\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"WARNING: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"-L ignored for read-only filesystem.\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"should use -L when dumping live read-write filesystems!\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"%s/.snap\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"WARNING: %s %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"-L requested but snapshot location\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"         %s: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"is not a directory\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"dump downgraded, -L ignored\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"%s/.snap/dump_snapshot\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@_PATH_MKSNAP_FFS = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [22 x i8] c"Cannot create %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@diskfd = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%s: stat\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"WARNING: Cannot use -L on an unmounted filesystem.\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@TS_TAPE = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"the epoch\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Date of this level %d dump: %s\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"Date of last (level unknown) dump: %s\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Date of last level %d dump: %s\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Dumping %s%s \00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"snapshot of \00", align 1
@.str.48 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"to %s on host %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"to %s\0A\00", align 1
@sblock = common dso_local global %struct.TYPE_6__* null, align 8
@STDSB = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [35 x i8] c"Cannot find file system superblock\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"Unable to read file system superblock\00", align 1
@dev_bsize = common dso_local global i32 0, align 4
@dev_bshift = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [36 x i8] c"dev_bsize (%ld) is not a power of 2\00", align 1
@tp_bshift = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [34 x i8] c"TP_BSIZE (%d) is not a power of 2\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@mapsize = common dso_local global i32 0, align 4
@usedinomap = common dso_local global i8* null, align 8
@dumpdirmap = common dso_local global i8* null, align 8
@dumpinomap = common dso_local global i8* null, align 8
@tapesize = common dso_local global i32 0, align 4
@nonodump = common dso_local global i32 0, align 4
@passno = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [26 x i8] c"%s: pass 1: regular files\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"mapping (Pass I) [regular files]\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"%s: pass 2: directories\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"mapping (Pass II) [directories]\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"estimated %ld tape blocks.\0A\00", align 1
@etapes = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [45 x i8] c"estimated %ld tape blocks on %3.2f tape(s).\0A\00", align 1
@.str.62 = private unnamed_addr constant [62 x i8] c"can't allocate tape buffers - try a smaller blocking factor.\0A\00", align 1
@tstart_writing = common dso_local global i64 0, align 8
@TS_CLRI = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [24 x i8] c"%s: pass 3: directories\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"dumping (Pass III) [directories]\0A\00", align 1
@IFDIR = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [26 x i8] c"%s: pass 4: regular files\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"dumping (Pass IV) [regular files]\0A\00", align 1
@tend_writing = common dso_local global i64 0, align 8
@TS_END = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [23 x i8] c"DUMP: %jd tape blocks\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"DUMP: %jd tape blocks on %d volume%s\0A\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"finished in less than a second\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"finished in %jd seconds, throughput %jd KBytes/sec\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"DUMP IS DONE!\07\07\0A\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"DUMP IS DONE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.dinode*, align 8
  %10 = alloca %struct.fstab*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %32 = call i32 @time(i32* null)
  %33 = call i8* @_time_to_time64(i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  store double 0.000000e+00, double* @tsize, align 8
  %35 = load i8*, i8** @_PATH_DUMPDATES, align 8
  store i8* %35, i8** @dumpdates, align 8
  store i8* null, i8** @popenout, align 8
  store i8* null, i8** @tape, align 8
  %36 = load i32, i32* @_PATH_DTMP, align 4
  store i32 %36, i32* @temp, align 4
  %37 = load i32, i32* @TP_BSIZE, align 4
  %38 = load i32, i32* @DEV_BSIZE, align 4
  %39 = sdiv i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @TP_BSIZE, align 4
  %43 = load i32, i32* @DEV_BSIZE, align 4
  %44 = srem i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %2
  %47 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  store i32 0, i32* @level, align 4
  store i32 0, i32* @rsync_friendly, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %48
  %54 = call i32 @obsolete(i32* %4, i8*** %5)
  br label %55

55:                                               ; preds = %148, %53
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @getopt(i32 %56, i8** %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %149

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  switch i32 %61, label %146 [
    i32 48, label %62
    i32 49, label %62
    i32 50, label %62
    i32 51, label %62
    i32 52, label %62
    i32 53, label %62
    i32 54, label %62
    i32 55, label %62
    i32 56, label %62
    i32 57, label %62
    i32 97, label %68
    i32 66, label %69
    i32 98, label %71
    i32 67, label %74
    i32 99, label %78
    i32 68, label %79
    i32 100, label %81
    i32 102, label %92
    i32 104, label %100
    i32 76, label %102
    i32 110, label %103
    i32 80, label %104
    i32 114, label %112
    i32 82, label %117
    i32 83, label %122
    i32 115, label %123
    i32 84, label %128
    i32 117, label %140
    i32 87, label %141
    i32 119, label %141
  ]

62:                                               ; preds = %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  %63 = load i32, i32* @level, align 4
  %64 = mul nsw i32 10, %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* @level, align 4
  br label %148

68:                                               ; preds = %60
  store i32 1, i32* @unlimited, align 4
  br label %148

69:                                               ; preds = %60
  %70 = call i32 @numarg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 1, i64 0)
  store i32 %70, i32* @blocksperfile, align 4
  br label %148

71:                                               ; preds = %60
  %72 = call i32 @numarg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 1, i64 1000)
  %73 = sitofp i32 %72 to double
  store double %73, double* @ntrec, align 8
  br label %148

74:                                               ; preds = %60
  %75 = call i32 @numarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 0, i64 0)
  %76 = mul nsw i32 %75, 1024
  %77 = mul nsw i32 %76, 1024
  store i32 %77, i32* @cachesize, align 4
  br label %148

78:                                               ; preds = %60
  store i32 1, i32* @cartridge, align 4
  br label %148

79:                                               ; preds = %60
  %80 = load i8*, i8** @optarg, align 8
  store i8* %80, i8** @dumpdates, align 8
  br label %148

81:                                               ; preds = %60
  %82 = call i32 @numarg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 10, i64 327670)
  %83 = sdiv i32 %82, 10
  store i32 %83, i32* @density, align 4
  %84 = load i32, i32* @density, align 4
  %85 = icmp sge i32 %84, 625
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load double, double* @HIGHDENSITYTREC, align 8
  store double %90, double* @ntrec, align 8
  br label %91

91:                                               ; preds = %89, %86, %81
  br label %148

92:                                               ; preds = %60
  %93 = load i8*, i8** @popenout, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @X_STARTUP, align 4
  %97 = call i32 (i32, i8*, ...) @errx(i32 %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** @optarg, align 8
  store i8* %99, i8** @tape, align 8
  br label %148

100:                                              ; preds = %60
  %101 = call i32 @numarg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 0, i64 10)
  store i32 %101, i32* %21, align 4
  br label %148

102:                                              ; preds = %60
  store i64 1, i64* @snapdump, align 8
  br label %148

103:                                              ; preds = %60
  store i32 1, i32* @notify, align 4
  br label %148

104:                                              ; preds = %60
  %105 = load i8*, i8** @tape, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* @X_STARTUP, align 4
  %109 = call i32 (i32, i8*, ...) @errx(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** @optarg, align 8
  store i8* %111, i8** @popenout, align 8
  br label %148

112:                                              ; preds = %60
  %113 = load i32, i32* @rsync_friendly, align 4
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* @rsync_friendly, align 4
  br label %116

116:                                              ; preds = %115, %112
  br label %148

117:                                              ; preds = %60
  %118 = load i32, i32* @rsync_friendly, align 4
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 2, i32* @rsync_friendly, align 4
  br label %121

121:                                              ; preds = %120, %117
  br label %148

122:                                              ; preds = %60
  store i32 1, i32* %22, align 4
  br label %148

123:                                              ; preds = %60
  %124 = call i32 @numarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 1, i64 0)
  %125 = mul nsw i32 %124, 12
  %126 = mul nsw i32 %125, 10
  %127 = sitofp i32 %126 to double
  store double %127, double* @tsize, align 8
  br label %148

128:                                              ; preds = %60
  %129 = load i8*, i8** @optarg, align 8
  %130 = call i64 @unctime(i8* %129)
  store i64 %130, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @stderr, align 4
  %135 = load i8*, i8** @optarg, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* @X_STARTUP, align 4
  %138 = call i32 @exit(i32 %137) #4
  unreachable

139:                                              ; preds = %128
  store i32 1, i32* %20, align 4
  store i32 -1, i32* @lastlevel, align 4
  br label %148

140:                                              ; preds = %60
  store i32 1, i32* @uflag, align 4
  br label %148

141:                                              ; preds = %60, %60
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @lastdump(i32 %142)
  %144 = load i32, i32* @X_FINOK, align 4
  %145 = call i32 @exit(i32 %144) #4
  unreachable

146:                                              ; preds = %60
  %147 = call i32 (...) @usage()
  br label %148

148:                                              ; preds = %146, %140, %139, %123, %122, %121, %116, %110, %103, %102, %100, %98, %91, %79, %78, %74, %71, %69, %68, %62
  br label %55

149:                                              ; preds = %55
  %150 = load i64, i64* @optind, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  %155 = load i64, i64* @optind, align 8
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 %155
  store i8** %157, i8*** %5, align 8
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %165

160:                                              ; preds = %149
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %163 = load i32, i32* @X_STARTUP, align 4
  %164 = call i32 @exit(i32 %163) #4
  unreachable

165:                                              ; preds = %149
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %5, align 8
  %168 = load i8*, i8** %166, align 8
  store i8* %168, i8** @disk, align 8
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp sge i32 %171, 1
  br i1 %172, label %173, label %191

173:                                              ; preds = %165
  %174 = load i32, i32* @stderr, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %176

176:                                              ; preds = %180, %173
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %4, align 4
  %179 = icmp ne i32 %177, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @stderr, align 4
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %5, align 8
  %184 = load i8*, i8** %182, align 8
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %184)
  br label %176

186:                                              ; preds = %176
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %189 = load i32, i32* @X_STARTUP, align 4
  %190 = call i32 @exit(i32 %189) #4
  unreachable

191:                                              ; preds = %165
  %192 = load i32, i32* @rsync_friendly, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load i32, i32* @level, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, i32* @stderr, align 4
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %200 = load i32, i32* @X_STARTUP, align 4
  %201 = call i32 @exit(i32 %200) #4
  unreachable

202:                                              ; preds = %194, %191
  %203 = load i32, i32* %20, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load i32, i32* @uflag, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* @stderr, align 4
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  %211 = load i32, i32* @X_STARTUP, align 4
  %212 = call i32 @exit(i32 %211) #4
  unreachable

213:                                              ; preds = %205, %202
  %214 = load i8*, i8** @popenout, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8** @tape, align 8
  br label %226

217:                                              ; preds = %213
  %218 = load i8*, i8** @tape, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i8* %221, i8** @tape, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i8*, i8** @_PATH_DEFTAPE, align 8
  store i8* %224, i8** @tape, align 8
  br label %225

225:                                              ; preds = %223, %220, %217
  br label %226

226:                                              ; preds = %225, %216
  %227 = load i8*, i8** @tape, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i64, i64* @pipeout, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* @pipeout, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8** @tape, align 8
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i32, i32* @blocksperfile, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* @blocksperfile, align 4
  %238 = load double, double* @ntrec, align 8
  %239 = call i32 @rounddown(i32 %237, double %238)
  store i32 %239, i32* @blocksperfile, align 4
  br label %262

240:                                              ; preds = %233
  %241 = load i32, i32* @unlimited, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* @density, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* @cartridge, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 100, i32 160
  store i32 %250, i32* @density, align 4
  br label %251

251:                                              ; preds = %246, %243
  %252 = load double, double* @tsize, align 8
  %253 = fcmp oeq double %252, 0.000000e+00
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i32, i32* @cartridge, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i64 204000, i64 276000
  %259 = sitofp i64 %258 to double
  store double %259, double* @tsize, align 8
  br label %260

260:                                              ; preds = %254, %251
  br label %261

261:                                              ; preds = %260, %240
  br label %262

262:                                              ; preds = %261, %236
  %263 = load i8*, i8** @tape, align 8
  %264 = call i8* @strchr(i8* %263, i8 signext 58)
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load i8*, i8** @tape, align 8
  store i8* %267, i8** @host, align 8
  %268 = load i8*, i8** @host, align 8
  %269 = call i8* @strchr(i8* %268, i8 signext 58)
  store i8* %269, i8** @tape, align 8
  %270 = load i8*, i8** @tape, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** @tape, align 8
  store i8 0, i8* %270, align 1
  %272 = load i32, i32* @stderr, align 4
  %273 = call i32 (i32, i8*, ...) @fprintf(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %274 = load i32, i32* @X_STARTUP, align 4
  %275 = call i32 @exit(i32 %274) #4
  unreachable

276:                                              ; preds = %262
  %277 = call i32 (...) @getuid()
  %278 = call i32 @setuid(i32 %277)
  %279 = load i32, i32* @SIGHUP, align 4
  %280 = load i64, i64* @SIG_IGN, align 8
  %281 = call i64 @signal(i32 %279, i64 %280)
  %282 = load i64, i64* @SIG_IGN, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %276
  %285 = load i32, i32* @SIGHUP, align 4
  %286 = load i64, i64* @sig, align 8
  %287 = call i64 @signal(i32 %285, i64 %286)
  br label %288

288:                                              ; preds = %284, %276
  %289 = load i32, i32* @SIGTRAP, align 4
  %290 = load i64, i64* @SIG_IGN, align 8
  %291 = call i64 @signal(i32 %289, i64 %290)
  %292 = load i64, i64* @SIG_IGN, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32, i32* @SIGTRAP, align 4
  %296 = load i64, i64* @sig, align 8
  %297 = call i64 @signal(i32 %295, i64 %296)
  br label %298

298:                                              ; preds = %294, %288
  %299 = load i32, i32* @SIGFPE, align 4
  %300 = load i64, i64* @SIG_IGN, align 8
  %301 = call i64 @signal(i32 %299, i64 %300)
  %302 = load i64, i64* @SIG_IGN, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32, i32* @SIGFPE, align 4
  %306 = load i64, i64* @sig, align 8
  %307 = call i64 @signal(i32 %305, i64 %306)
  br label %308

308:                                              ; preds = %304, %298
  %309 = load i32, i32* @SIGBUS, align 4
  %310 = load i64, i64* @SIG_IGN, align 8
  %311 = call i64 @signal(i32 %309, i64 %310)
  %312 = load i64, i64* @SIG_IGN, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = load i32, i32* @SIGBUS, align 4
  %316 = load i64, i64* @sig, align 8
  %317 = call i64 @signal(i32 %315, i64 %316)
  br label %318

318:                                              ; preds = %314, %308
  %319 = load i32, i32* @SIGSEGV, align 4
  %320 = load i64, i64* @SIG_IGN, align 8
  %321 = call i64 @signal(i32 %319, i64 %320)
  %322 = load i64, i64* @SIG_IGN, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %318
  %325 = load i32, i32* @SIGSEGV, align 4
  %326 = load i64, i64* @sig, align 8
  %327 = call i64 @signal(i32 %325, i64 %326)
  br label %328

328:                                              ; preds = %324, %318
  %329 = load i32, i32* @SIGTERM, align 4
  %330 = load i64, i64* @SIG_IGN, align 8
  %331 = call i64 @signal(i32 %329, i64 %330)
  %332 = load i64, i64* @SIG_IGN, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %328
  %335 = load i32, i32* @SIGTERM, align 4
  %336 = load i64, i64* @sig, align 8
  %337 = call i64 @signal(i32 %335, i64 %336)
  br label %338

338:                                              ; preds = %334, %328
  %339 = load i32, i32* @SIGINT, align 4
  %340 = load i64, i64* @interrupt, align 8
  %341 = call i64 @signal(i32 %339, i64 %340)
  %342 = load i64, i64* @SIG_IGN, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = load i32, i32* @SIGINT, align 4
  %346 = load i64, i64* @SIG_IGN, align 8
  %347 = call i64 @signal(i32 %345, i64 %346)
  br label %348

348:                                              ; preds = %344, %338
  %349 = call i32 (...) @dump_getfstab()
  %350 = load i8*, i8** @disk, align 8
  %351 = call %struct.fstab* @fstabsearch(i8* %350)
  store %struct.fstab* %351, %struct.fstab** %10, align 8
  %352 = load %struct.fstab*, %struct.fstab** %10, align 8
  %353 = icmp ne %struct.fstab* %352, null
  br i1 %353, label %354, label %380

354:                                              ; preds = %348
  %355 = load %struct.fstab*, %struct.fstab** %10, align 8
  %356 = getelementptr inbounds %struct.fstab, %struct.fstab* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i8* @rawname(i8* %357)
  store i8* %358, i8** @disk, align 8
  %359 = load i8*, i8** @disk, align 8
  %360 = icmp eq i8* %359, null
  br i1 %360, label %361, label %367

361:                                              ; preds = %354
  %362 = load i32, i32* @X_STARTUP, align 4
  %363 = load %struct.fstab*, %struct.fstab** %10, align 8
  %364 = getelementptr inbounds %struct.fstab, %struct.fstab* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 (i32, i8*, ...) @errx(i32 %362, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %361, %354
  %368 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %369 = load %struct.fstab*, %struct.fstab** %10, align 8
  %370 = getelementptr inbounds %struct.fstab, %struct.fstab* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = load i32, i32* @NAMELEN, align 4
  %373 = call i32 @strncpy(i8* %368, i8* %371, i32 %372)
  %374 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 3), align 8
  %375 = load %struct.fstab*, %struct.fstab** %10, align 8
  %376 = getelementptr inbounds %struct.fstab, %struct.fstab* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* @NAMELEN, align 4
  %379 = call i32 @strncpy(i8* %374, i8* %377, i32 %378)
  br label %388

380:                                              ; preds = %348
  %381 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %382 = load i8*, i8** @disk, align 8
  %383 = load i32, i32* @NAMELEN, align 4
  %384 = call i32 @strncpy(i8* %381, i8* %382, i32 %383)
  %385 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 3), align 8
  %386 = load i32, i32* @NAMELEN, align 4
  %387 = call i32 @strncpy(i8* %385, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %386)
  br label %388

388:                                              ; preds = %380, %367
  %389 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %390 = load i32, i32* @NAMELEN, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %389, i64 %392
  store i8 0, i8* %393, align 1
  %394 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 3), align 8
  %395 = load i32, i32* @NAMELEN, align 4
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, i8* %394, i64 %397
  store i8 0, i8* %398, align 1
  %399 = load i8*, i8** @disk, align 8
  %400 = call i8* @getmntpt(i8* %399, i32* %15)
  store i8* %400, i8** %12, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %482

402:                                              ; preds = %388
  %403 = load i32, i32* %15, align 4
  %404 = load i32, i32* @MNT_RDONLY, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %402
  %408 = load i64, i64* @snapdump, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %407
  %411 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  store i64 0, i64* @snapdump, align 8
  br label %412

412:                                              ; preds = %410, %407
  br label %481

413:                                              ; preds = %402
  %414 = load i64, i64* @snapdump, align 8
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %413
  %417 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0))
  br label %480

418:                                              ; preds = %413
  %419 = load i32, i32* @BUFSIZ, align 4
  %420 = zext i32 %419 to i64
  %421 = call i8* @llvm.stacksave()
  store i8* %421, i8** %25, align 8
  %422 = alloca i8, i64 %420, align 16
  store i64 %420, i64* %26, align 8
  %423 = load i32, i32* @BUFSIZ, align 4
  %424 = zext i32 %423 to i64
  %425 = alloca i8, i64 %424, align 16
  store i64 %424, i64* %27, align 8
  %426 = trunc i64 %420 to i32
  %427 = load i8*, i8** %12, align 8
  %428 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %422, i32 %426, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* %427)
  %429 = call i64 @stat(i8* %422, %struct.stat* %6)
  %430 = icmp slt i64 %429, 0
  br i1 %430, label %436, label %431

431:                                              ; preds = %418
  %432 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = call i64 @S_ISDIR(i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %431, %418
  %437 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i8* %422)
  %438 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0))
  store i64 0, i64* @snapdump, align 8
  br label %478

439:                                              ; preds = %431
  %440 = trunc i64 %420 to i32
  %441 = load i8*, i8** %12, align 8
  %442 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %422, i32 %440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i8* %441)
  %443 = trunc i64 %424 to i32
  %444 = load i8*, i8** @_PATH_MKSNAP_FFS, align 8
  %445 = load i8*, i8** %12, align 8
  %446 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %425, i32 %443, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* %444, i8* %445, i8* %422)
  %447 = call i32 @unlink(i8* %422)
  %448 = call i64 @system(i8* %425)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %439
  %451 = load i32, i32* @X_STARTUP, align 4
  %452 = load i32, i32* @errno, align 4
  %453 = call i32 @strerror(i32 %452)
  %454 = call i32 (i32, i8*, ...) @errx(i32 %451, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i8* %422, i32 %453)
  br label %455

455:                                              ; preds = %450, %439
  %456 = load i32, i32* @O_RDONLY, align 4
  %457 = call i32 @open(i8* %422, i32 %456)
  store i32 %457, i32* @diskfd, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %465

459:                                              ; preds = %455
  %460 = call i32 @unlink(i8* %422)
  %461 = load i32, i32* @X_STARTUP, align 4
  %462 = load i32, i32* @errno, align 4
  %463 = call i32 @strerror(i32 %462)
  %464 = call i32 (i32, i8*, ...) @errx(i32 %461, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i8* %422, i32 %463)
  br label %465

465:                                              ; preds = %459, %455
  %466 = call i32 @unlink(i8* %422)
  %467 = load i32, i32* @diskfd, align 4
  %468 = call i64 @fstat(i32 %467, %struct.stat* %6)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %465
  %471 = load i32, i32* @X_STARTUP, align 4
  %472 = call i32 @err(i32 %471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* %422)
  br label %473

473:                                              ; preds = %470, %465
  %474 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = call i8* @_time_to_time64(i32 %475)
  %477 = ptrtoint i8* %476 to i64
  store i64 %477, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  br label %478

478:                                              ; preds = %473, %436
  %479 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %479)
  br label %480

480:                                              ; preds = %478, %416
  br label %481

481:                                              ; preds = %480, %412
  br label %488

482:                                              ; preds = %388
  %483 = load i64, i64* @snapdump, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  %486 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i64 0, i64 0))
  store i64 0, i64* @snapdump, align 8
  br label %487

487:                                              ; preds = %485, %482
  br label %488

488:                                              ; preds = %487, %481
  %489 = load i64, i64* @snapdump, align 8
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %518

491:                                              ; preds = %488
  %492 = load i8*, i8** @disk, align 8
  %493 = load i32, i32* @O_RDONLY, align 4
  %494 = call i32 @open(i8* %492, i32 %493)
  store i32 %494, i32* @diskfd, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %491
  %497 = load i32, i32* @X_STARTUP, align 4
  %498 = load i8*, i8** @disk, align 8
  %499 = call i32 @err(i32 %497, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* %498)
  br label %500

500:                                              ; preds = %496, %491
  %501 = load i32, i32* @diskfd, align 4
  %502 = call i64 @fstat(i32 %501, %struct.stat* %6)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %500
  %505 = load i32, i32* @X_STARTUP, align 4
  %506 = load i8*, i8** @disk, align 8
  %507 = call i32 @err(i32 %505, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* %506)
  br label %508

508:                                              ; preds = %504, %500
  %509 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = call i64 @S_ISDIR(i32 %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %508
  %514 = load i32, i32* @X_STARTUP, align 4
  %515 = load i8*, i8** @disk, align 8
  %516 = call i32 (i32, i8*, ...) @errx(i32 %514, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %515)
  br label %517

517:                                              ; preds = %513, %508
  br label %518

518:                                              ; preds = %517, %488
  %519 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 9), align 4
  %520 = call i32 @strcpy(i32 %519, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %521 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 8), align 8
  %522 = load i32, i32* @NAMELEN, align 4
  %523 = call i32 @gethostname(i32 %521, i32 %522)
  %524 = load i32, i32* @level, align 4
  store i32 %524, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %525 = load i32, i32* @TS_TAPE, align 4
  store i32 %525, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 7), align 4
  %526 = load i32, i32* @rsync_friendly, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %518
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 8
  br label %529

529:                                              ; preds = %528, %518
  %530 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %529
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** %24, align 8
  br label %537

533:                                              ; preds = %529
  %534 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  %535 = call i32 @_time64_to_time(i64 %534)
  store i32 %535, i32* %28, align 4
  %536 = call i8* @ctime(i32* %28)
  store i8* %536, i8** %24, align 8
  br label %537

537:                                              ; preds = %533, %532
  %538 = load i32, i32* @level, align 4
  %539 = load i8*, i8** %24, align 8
  %540 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 %538, i8* %539)
  %541 = load i32, i32* %20, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %548, label %543

543:                                              ; preds = %537
  %544 = load i32, i32* @rsync_friendly, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %548, label %546

546:                                              ; preds = %543
  %547 = call i32 (...) @getdumptime()
  br label %548

548:                                              ; preds = %546, %543, %537
  %549 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 8
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %548
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8** %24, align 8
  br label %556

552:                                              ; preds = %548
  %553 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 8
  %554 = call i32 @_time64_to_time(i64 %553)
  store i32 %554, i32* %29, align 4
  %555 = call i8* @ctime(i32* %29)
  store i8* %555, i8** %24, align 8
  br label %556

556:                                              ; preds = %552, %551
  %557 = load i32, i32* @lastlevel, align 4
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %556
  %560 = load i8*, i8** %24, align 8
  %561 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i64 0, i64 0), i8* %560)
  br label %566

562:                                              ; preds = %556
  %563 = load i32, i32* @lastlevel, align 4
  %564 = load i8*, i8** %24, align 8
  %565 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 %563, i8* %564)
  br label %566

566:                                              ; preds = %562, %559
  %567 = load i64, i64* @snapdump, align 8
  %568 = icmp ne i64 %567, 0
  %569 = zext i1 %568 to i64
  %570 = select i1 %568, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)
  %571 = load i8*, i8** @disk, align 8
  %572 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* %570, i8* %571)
  %573 = load %struct.fstab*, %struct.fstab** %10, align 8
  %574 = icmp ne %struct.fstab* %573, null
  br i1 %574, label %575, label %580

575:                                              ; preds = %566
  %576 = load %struct.fstab*, %struct.fstab** %10, align 8
  %577 = getelementptr inbounds %struct.fstab, %struct.fstab* %576, i32 0, i32 1
  %578 = load i8*, i8** %577, align 8
  %579 = call i32 (i8*, i8*, ...) @msgtail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* %578)
  br label %580

580:                                              ; preds = %575, %566
  %581 = load i8*, i8** @host, align 8
  %582 = icmp ne i8* %581, null
  br i1 %582, label %583, label %587

583:                                              ; preds = %580
  %584 = load i8*, i8** @tape, align 8
  %585 = load i8*, i8** @host, align 8
  %586 = call i32 (i8*, i8*, ...) @msgtail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i8* %584, i8* %585)
  br label %590

587:                                              ; preds = %580
  %588 = load i8*, i8** @tape, align 8
  %589 = call i32 (i8*, i8*, ...) @msgtail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* %588)
  br label %590

590:                                              ; preds = %587, %583
  %591 = call i32 (...) @sync()
  %592 = load i32, i32* @diskfd, align 4
  %593 = load i32, i32* @STDSB, align 4
  %594 = call i32 @sbget(i32 %592, %struct.TYPE_6__** @sblock, i32 %593)
  store i32 %594, i32* %17, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %602

596:                                              ; preds = %590
  %597 = load i32, i32* %17, align 4
  switch i32 %597, label %600 [
    i32 128, label %598
  ]

598:                                              ; preds = %596
  %599 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %930

600:                                              ; preds = %596
  %601 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %930

602:                                              ; preds = %590
  %603 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %607 = call i32 @fsbtodb(%struct.TYPE_6__* %606, i32 1)
  %608 = sdiv i32 %605, %607
  store i32 %608, i32* @dev_bsize, align 4
  %609 = load i32, i32* @dev_bsize, align 4
  %610 = call i32 @ffs(i32 %609)
  %611 = sub nsw i32 %610, 1
  store i32 %611, i32* @dev_bshift, align 4
  %612 = load i32, i32* @dev_bsize, align 4
  %613 = load i32, i32* @dev_bshift, align 4
  %614 = shl i32 1, %613
  %615 = icmp ne i32 %612, %614
  br i1 %615, label %616, label %619

616:                                              ; preds = %602
  %617 = load i32, i32* @dev_bsize, align 4
  %618 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i64 0, i64 0), i32 %617)
  br label %619

619:                                              ; preds = %616, %602
  %620 = load i32, i32* @TP_BSIZE, align 4
  %621 = call i32 @ffs(i32 %620)
  %622 = sub nsw i32 %621, 1
  store i32 %622, i32* @tp_bshift, align 4
  %623 = load i32, i32* @TP_BSIZE, align 4
  %624 = load i32, i32* @tp_bshift, align 4
  %625 = shl i32 1, %624
  %626 = icmp ne i32 %623, %625
  br i1 %626, label %627, label %630

627:                                              ; preds = %619
  %628 = load i32, i32* @TP_BSIZE, align 4
  %629 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0), i32 %628)
  br label %630

630:                                              ; preds = %627, %619
  %631 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %632 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sblock, align 8
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 4
  %637 = mul nsw i32 %633, %636
  store i32 %637, i32* %23, align 4
  %638 = load i32, i32* %23, align 4
  %639 = load i32, i32* @CHAR_BIT, align 4
  %640 = call i32 @howmany(i32 %638, i32 %639)
  %641 = load i32, i32* @TP_BSIZE, align 4
  %642 = call i32 @roundup(i32 %640, i32 %641)
  store i32 %642, i32* @mapsize, align 4
  %643 = load i32, i32* @mapsize, align 4
  %644 = call i64 @calloc(i32 %643, i32 1)
  %645 = inttoptr i64 %644 to i8*
  store i8* %645, i8** @usedinomap, align 8
  %646 = load i32, i32* @mapsize, align 4
  %647 = call i64 @calloc(i32 %646, i32 1)
  %648 = inttoptr i64 %647 to i8*
  store i8* %648, i8** @dumpdirmap, align 8
  %649 = load i32, i32* @mapsize, align 4
  %650 = call i64 @calloc(i32 %649, i32 1)
  %651 = inttoptr i64 %650 to i8*
  store i8* %651, i8** @dumpinomap, align 8
  %652 = load i32, i32* @mapsize, align 4
  %653 = sext i32 %652 to i64
  %654 = mul i64 %653, 1
  %655 = trunc i64 %654 to i32
  %656 = load i32, i32* @TP_BSIZE, align 4
  %657 = call i32 @howmany(i32 %655, i32 %656)
  %658 = add nsw i32 %657, 1
  %659 = mul nsw i32 3, %658
  store i32 %659, i32* @tapesize, align 4
  %660 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %661 = load i32, i32* %21, align 4
  %662 = icmp slt i32 %660, %661
  %663 = zext i1 %662 to i32
  store i32 %663, i32* @nonodump, align 4
  store i32 1, i32* @passno, align 4
  %664 = load i8*, i8** @disk, align 8
  %665 = call i32 @setproctitle(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0), i8* %664)
  %666 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0))
  %667 = load i32, i32* %23, align 4
  %668 = call i32 @mapfiles(i32 %667, i32* @tapesize)
  store i32 %668, i32* %18, align 4
  store i32 2, i32* @passno, align 4
  %669 = load i8*, i8** @disk, align 8
  %670 = call i32 @setproctitle(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i8* %669)
  %671 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0))
  br label %672

672:                                              ; preds = %675, %630
  %673 = load i32, i32* %18, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = load i32, i32* %23, align 4
  %677 = call i32 @mapdirs(i32 %676, i32* @tapesize)
  store i32 %677, i32* %18, align 4
  br label %672

678:                                              ; preds = %672
  %679 = load i64, i64* @pipeout, align 8
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %684, label %681

681:                                              ; preds = %678
  %682 = load i32, i32* @unlimited, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %689

684:                                              ; preds = %681, %678
  %685 = load i32, i32* @tapesize, align 4
  %686 = add nsw i32 %685, 10
  store i32 %686, i32* @tapesize, align 4
  %687 = load i32, i32* @tapesize, align 4
  %688 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0), i32 %687)
  br label %772

689:                                              ; preds = %681
  %690 = load i32, i32* @blocksperfile, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %689
  %693 = load i32, i32* @tapesize, align 4
  %694 = sitofp i32 %693 to double
  %695 = load i32, i32* @blocksperfile, align 4
  %696 = sitofp i32 %695 to double
  %697 = fdiv double %694, %696
  store double %697, double* %30, align 8
  br label %748

698:                                              ; preds = %689
  %699 = load i32, i32* @cartridge, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %721

701:                                              ; preds = %698
  %702 = load i32, i32* @tapesize, align 4
  %703 = sitofp i32 %702 to double
  %704 = load i32, i32* @TP_BSIZE, align 4
  %705 = sitofp i32 %704 to double
  %706 = fmul double %703, %705
  %707 = load i32, i32* @density, align 4
  %708 = sitofp i32 %707 to double
  %709 = fdiv double 1.000000e+00, %708
  %710 = fmul double %706, %709
  %711 = load i32, i32* @tapesize, align 4
  %712 = sitofp i32 %711 to double
  %713 = load double, double* @ntrec, align 8
  %714 = fdiv double 1.000000e+00, %713
  %715 = fmul double %712, %714
  %716 = fmul double %715, 1.548000e+01
  %717 = fadd double %710, %716
  %718 = load double, double* @tsize, align 8
  %719 = fdiv double 1.000000e+00, %718
  %720 = fmul double %717, %719
  store double %720, double* %30, align 8
  br label %747

721:                                              ; preds = %698
  %722 = load i32, i32* @density, align 4
  %723 = icmp eq i32 %722, 625
  %724 = zext i1 %723 to i64
  %725 = select i1 %723, i32 3, i32 7
  store i32 %725, i32* %31, align 4
  %726 = load i32, i32* @tapesize, align 4
  %727 = sitofp i32 %726 to double
  %728 = load i32, i32* @TP_BSIZE, align 4
  %729 = sitofp i32 %728 to double
  %730 = fmul double %727, %729
  %731 = load i32, i32* @density, align 4
  %732 = sitofp i32 %731 to double
  %733 = fdiv double 1.000000e+00, %732
  %734 = fmul double %730, %733
  %735 = load i32, i32* @tapesize, align 4
  %736 = sitofp i32 %735 to double
  %737 = load double, double* @ntrec, align 8
  %738 = fdiv double 1.000000e+00, %737
  %739 = fmul double %736, %738
  %740 = load i32, i32* %31, align 4
  %741 = sitofp i32 %740 to double
  %742 = fmul double %739, %741
  %743 = fadd double %734, %742
  %744 = load double, double* @tsize, align 8
  %745 = fdiv double 1.000000e+00, %744
  %746 = fmul double %743, %745
  store double %746, double* %30, align 8
  br label %747

747:                                              ; preds = %721, %701
  br label %748

748:                                              ; preds = %747, %692
  %749 = load double, double* %30, align 8
  %750 = fptosi double %749 to i32
  store i32 %750, i32* @etapes, align 4
  %751 = load i32, i32* @etapes, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* @etapes, align 4
  %753 = load i32, i32* @etapes, align 4
  %754 = sub nsw i32 %753, 1
  %755 = load i32, i32* @mapsize, align 4
  %756 = sext i32 %755 to i64
  %757 = mul i64 %756, 1
  %758 = trunc i64 %757 to i32
  %759 = load i32, i32* @TP_BSIZE, align 4
  %760 = call i32 @howmany(i32 %758, i32 %759)
  %761 = add nsw i32 %760, 1
  %762 = mul nsw i32 %754, %761
  %763 = load i32, i32* @tapesize, align 4
  %764 = add nsw i32 %763, %762
  store i32 %764, i32* @tapesize, align 4
  %765 = load i32, i32* @etapes, align 4
  %766 = add nsw i32 %765, 10
  %767 = load i32, i32* @tapesize, align 4
  %768 = add nsw i32 %767, %766
  store i32 %768, i32* @tapesize, align 4
  %769 = load i32, i32* @tapesize, align 4
  %770 = load double, double* %30, align 8
  %771 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.61, i64 0, i64 0), i32 %769, double %770)
  br label %772

772:                                              ; preds = %748, %684
  %773 = load i32, i32* %22, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %777

775:                                              ; preds = %772
  %776 = call i32 @exit(i32 0) #4
  unreachable

777:                                              ; preds = %772
  %778 = call i32 (...) @alloctape()
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %782, label %780

780:                                              ; preds = %777
  %781 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.62, i64 0, i64 0))
  br label %782

782:                                              ; preds = %780, %777
  %783 = call i32 @startnewtape(i32 1)
  %784 = call i32 @time(i32* bitcast (i64* @tstart_writing to i32*))
  %785 = load i8*, i8** @usedinomap, align 8
  %786 = load i32, i32* @TS_CLRI, align 4
  %787 = load i32, i32* %23, align 4
  %788 = sub nsw i32 %787, 1
  %789 = call i32 @dumpmap(i8* %785, i32 %786, i32 %788)
  store i32 3, i32* @passno, align 4
  %790 = load i8*, i8** @disk, align 8
  %791 = call i32 @setproctitle(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %790)
  %792 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %793 = load i8*, i8** @dumpdirmap, align 8
  store i8* %793, i8** %11, align 8
  store i32 1, i32* %7, align 4
  br label %794

794:                                              ; preds = %828, %782
  %795 = load i32, i32* %7, align 4
  %796 = load i32, i32* %23, align 4
  %797 = icmp slt i32 %795, %796
  br i1 %797, label %798, label %831

798:                                              ; preds = %794
  %799 = load i32, i32* %7, align 4
  %800 = sub nsw i32 %799, 1
  %801 = load i32, i32* @CHAR_BIT, align 4
  %802 = srem i32 %800, %801
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %809

804:                                              ; preds = %798
  %805 = load i8*, i8** %11, align 8
  %806 = getelementptr inbounds i8, i8* %805, i32 1
  store i8* %806, i8** %11, align 8
  %807 = load i8, i8* %805, align 1
  %808 = sext i8 %807 to i32
  store i32 %808, i32* %8, align 4
  br label %812

809:                                              ; preds = %798
  %810 = load i32, i32* %8, align 4
  %811 = ashr i32 %810, 1
  store i32 %811, i32* %8, align 4
  br label %812

812:                                              ; preds = %809, %804
  %813 = load i32, i32* %8, align 4
  %814 = and i32 %813, 1
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %817

816:                                              ; preds = %812
  br label %828

817:                                              ; preds = %812
  %818 = load i32, i32* %7, align 4
  %819 = call %union.dinode* @getino(i32 %818, i32* %14)
  store %union.dinode* %819, %union.dinode** %9, align 8
  %820 = load i32, i32* %14, align 4
  %821 = load i32, i32* @IFDIR, align 4
  %822 = icmp ne i32 %820, %821
  br i1 %822, label %823, label %824

823:                                              ; preds = %817
  br label %828

824:                                              ; preds = %817
  %825 = load %union.dinode*, %union.dinode** %9, align 8
  %826 = load i32, i32* %7, align 4
  %827 = call i32 @dumpino(%union.dinode* %825, i32 %826)
  br label %828

828:                                              ; preds = %824, %823, %816
  %829 = load i32, i32* %7, align 4
  %830 = add nsw i32 %829, 1
  store i32 %830, i32* %7, align 4
  br label %794

831:                                              ; preds = %794
  store i32 4, i32* @passno, align 4
  %832 = load i8*, i8** @disk, align 8
  %833 = call i32 @setproctitle(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i64 0, i64 0), i8* %832)
  %834 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0))
  %835 = load i8*, i8** @dumpinomap, align 8
  store i8* %835, i8** %11, align 8
  store i32 1, i32* %7, align 4
  br label %836

836:                                              ; preds = %870, %831
  %837 = load i32, i32* %7, align 4
  %838 = load i32, i32* %23, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %873

840:                                              ; preds = %836
  %841 = load i32, i32* %7, align 4
  %842 = sub nsw i32 %841, 1
  %843 = load i32, i32* @CHAR_BIT, align 4
  %844 = srem i32 %842, %843
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %851

846:                                              ; preds = %840
  %847 = load i8*, i8** %11, align 8
  %848 = getelementptr inbounds i8, i8* %847, i32 1
  store i8* %848, i8** %11, align 8
  %849 = load i8, i8* %847, align 1
  %850 = sext i8 %849 to i32
  store i32 %850, i32* %8, align 4
  br label %854

851:                                              ; preds = %840
  %852 = load i32, i32* %8, align 4
  %853 = ashr i32 %852, 1
  store i32 %853, i32* %8, align 4
  br label %854

854:                                              ; preds = %851, %846
  %855 = load i32, i32* %8, align 4
  %856 = and i32 %855, 1
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %859

858:                                              ; preds = %854
  br label %870

859:                                              ; preds = %854
  %860 = load i32, i32* %7, align 4
  %861 = call %union.dinode* @getino(i32 %860, i32* %14)
  store %union.dinode* %861, %union.dinode** %9, align 8
  %862 = load i32, i32* %14, align 4
  %863 = load i32, i32* @IFDIR, align 4
  %864 = icmp eq i32 %862, %863
  br i1 %864, label %865, label %866

865:                                              ; preds = %859
  br label %870

866:                                              ; preds = %859
  %867 = load %union.dinode*, %union.dinode** %9, align 8
  %868 = load i32, i32* %7, align 4
  %869 = call i32 @dumpino(%union.dinode* %867, i32 %868)
  br label %870

870:                                              ; preds = %866, %865, %858
  %871 = load i32, i32* %7, align 4
  %872 = add nsw i32 %871, 1
  store i32 %872, i32* %7, align 4
  br label %836

873:                                              ; preds = %836
  %874 = call i32 @time(i32* bitcast (i64* @tend_writing to i32*))
  %875 = load i32, i32* @TS_END, align 4
  store i32 %875, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 7), align 4
  store i32 0, i32* %16, align 4
  br label %876

876:                                              ; preds = %885, %873
  %877 = load i32, i32* %16, align 4
  %878 = sitofp i32 %877 to double
  %879 = load double, double* @ntrec, align 8
  %880 = fcmp olt double %878, %879
  br i1 %880, label %881, label %888

881:                                              ; preds = %876
  %882 = load i32, i32* %23, align 4
  %883 = sub nsw i32 %882, 1
  %884 = call i32 @writeheader(i32 %883)
  br label %885

885:                                              ; preds = %881
  %886 = load i32, i32* %16, align 4
  %887 = add nsw i32 %886, 1
  store i32 %887, i32* %16, align 4
  br label %876

888:                                              ; preds = %876
  %889 = load i64, i64* @pipeout, align 8
  %890 = icmp ne i64 %889, 0
  br i1 %890, label %891, label %894

891:                                              ; preds = %888
  %892 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 5), align 4
  %893 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 %892)
  br label %902

894:                                              ; preds = %888
  %895 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 5), align 4
  %896 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 6), align 8
  %897 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 6), align 8
  %898 = icmp eq i32 %897, 1
  %899 = zext i1 %898 to i64
  %900 = select i1 %898, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)
  %901 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i32 %895, i32 %896, i8* %900)
  br label %902

902:                                              ; preds = %894, %891
  %903 = load i64, i64* @tend_writing, align 8
  %904 = load i64, i64* @tstart_writing, align 8
  %905 = sub nsw i64 %903, %904
  %906 = icmp eq i64 %905, 0
  br i1 %906, label %907, label %909

907:                                              ; preds = %902
  %908 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0))
  br label %923

909:                                              ; preds = %902
  %910 = load i64, i64* @tend_writing, align 8
  %911 = trunc i64 %910 to i32
  %912 = sext i32 %911 to i64
  %913 = load i64, i64* @tstart_writing, align 8
  %914 = sub nsw i64 %912, %913
  %915 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 5), align 4
  %916 = sext i32 %915 to i64
  %917 = load i64, i64* @tend_writing, align 8
  %918 = load i64, i64* @tstart_writing, align 8
  %919 = sub nsw i64 %917, %918
  %920 = sdiv i64 %916, %919
  %921 = trunc i64 %920 to i32
  %922 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i64 0, i64 0), i64 %914, i32 %921)
  br label %923

923:                                              ; preds = %909, %907
  %924 = call i32 (...) @putdumptime()
  %925 = call i32 (...) @trewind()
  %926 = call i32 @broadcast(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0))
  %927 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0))
  %928 = load i32, i32* @X_FINOK, align 4
  %929 = call i32 @Exit(i32 %928)
  br label %930

930:                                              ; preds = %923, %600, %598
  %931 = load i32, i32* %3, align 4
  ret i32 %931
}

declare dso_local i8* @_time_to_time64(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @quit(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @obsolete(i32*, i8***) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @numarg(i8*, i64, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @unctime(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lastdump(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rounddown(i32, double) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @dump_getfstab(...) #1

declare dso_local %struct.fstab* @fstabsearch(i8*) #1

declare dso_local i8* @rawname(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @getmntpt(i8*, i32*) #1

declare dso_local i32 @msg(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @gethostname(i32, i32) #1

declare dso_local i32 @_time64_to_time(i64) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @getdumptime(...) #1

declare dso_local i32 @msgtail(i8*, i8*, ...) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @sbget(i32, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @setproctitle(i8*, i8*) #1

declare dso_local i32 @mapfiles(i32, i32*) #1

declare dso_local i32 @mapdirs(i32, i32*) #1

declare dso_local i32 @alloctape(...) #1

declare dso_local i32 @startnewtape(i32) #1

declare dso_local i32 @dumpmap(i8*, i32, i32) #1

declare dso_local %union.dinode* @getino(i32, i32*) #1

declare dso_local i32 @dumpino(%union.dinode*, i32) #1

declare dso_local i32 @writeheader(i32) #1

declare dso_local i32 @putdumptime(...) #1

declare dso_local i32 @trewind(...) #1

declare dso_local i32 @broadcast(i8*) #1

declare dso_local i32 @Exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
