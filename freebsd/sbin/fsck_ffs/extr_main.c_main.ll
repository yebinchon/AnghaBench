; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@skipclean = common dso_local global i32 0, align 4
@inoopt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"b:Bc:CdEfFm:npRrSyZz\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@optarg = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Alternate super block location: %jd\0A\00", align 1
@bkgrdflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"conversion level\00", align 1
@cvtlevel = common dso_local global i32 0, align 4
@EEXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot do level %d conversion\00", align 1
@debug = common dso_local global i32 0, align 4
@Eflag = common dso_local global i32 0, align 4
@bkgrdcheck = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@lfmode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"bad mode to -m: %o\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"** lost+found creation mode %o\0A\00", align 1
@nflag = common dso_local global i32 0, align 4
@yflag = common dso_local global i32 0, align 4
@preen = common dso_local global i32 0, align 4
@ckclean = common dso_local global i64 0, align 8
@wantrestart = common dso_local global i32 0, align 4
@surrender = common dso_local global i32 0, align 4
@Zflag = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@catch = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@catchquit = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@infohandler = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@alarmhandler = common dso_local global i64 0, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@returntosingle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca %struct.itimerval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @sync()
  store i32 1, i32* @skipclean, align 4
  store i64 0, i64* @inoopt, align 8
  br label %12

12:                                               ; preds = %81, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %82

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %79 [
    i32 98, label %19
    i32 66, label %24
    i32 99, label %25
    i32 100, label %35
    i32 69, label %38
    i32 102, label %41
    i32 70, label %42
    i32 109, label %43
    i32 110, label %56
    i32 112, label %59
    i32 67, label %62
    i32 82, label %65
    i32 114, label %66
    i32 83, label %69
    i32 121, label %70
    i32 90, label %73
    i32 122, label %76
  ]

19:                                               ; preds = %17
  store i32 0, i32* @skipclean, align 4
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @argtoimax(i8 signext 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 10)
  store i32 %21, i32* @bflag, align 4
  %22 = load i32, i32* @bflag, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %81

24:                                               ; preds = %17
  store i32 1, i32* @bkgrdflag, align 4
  br label %81

25:                                               ; preds = %17
  store i32 0, i32* @skipclean, align 4
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @argtoimax(i8 signext 99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 10)
  store i32 %27, i32* @cvtlevel, align 4
  %28 = load i32, i32* @cvtlevel, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EEXIT, align 4
  %32 = load i32, i32* @cvtlevel, align 4
  %33 = call i32 @errx(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %81

35:                                               ; preds = %17
  %36 = load i32, i32* @debug, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @debug, align 4
  br label %81

38:                                               ; preds = %17
  %39 = load i32, i32* @Eflag, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @Eflag, align 4
  br label %81

41:                                               ; preds = %17
  store i32 0, i32* @skipclean, align 4
  br label %81

42:                                               ; preds = %17
  store i32 1, i32* @bkgrdcheck, align 4
  br label %81

43:                                               ; preds = %17
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @argtoimax(i8 signext 109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %44, i32 8)
  store i32 %45, i32* @lfmode, align 4
  %46 = load i32, i32* @lfmode, align 4
  %47 = and i32 %46, -4096
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @EEXIT, align 4
  %51 = load i32, i32* @lfmode, align 4
  %52 = call i32 @errx(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* @lfmode, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  br label %81

56:                                               ; preds = %17
  %57 = load i32, i32* @nflag, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @nflag, align 4
  store i32 0, i32* @yflag, align 4
  br label %81

59:                                               ; preds = %17
  %60 = load i32, i32* @preen, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @preen, align 4
  br label %62

62:                                               ; preds = %17, %59
  %63 = load i64, i64* @ckclean, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @ckclean, align 8
  br label %81

65:                                               ; preds = %17
  store i32 1, i32* @wantrestart, align 4
  br label %81

66:                                               ; preds = %17
  %67 = load i64, i64* @inoopt, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* @inoopt, align 8
  br label %81

69:                                               ; preds = %17
  store i32 1, i32* @surrender, align 4
  br label %81

70:                                               ; preds = %17
  %71 = load i32, i32* @yflag, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @yflag, align 4
  store i32 0, i32* @nflag, align 4
  br label %81

73:                                               ; preds = %17
  %74 = load i32, i32* @Zflag, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @Zflag, align 4
  br label %81

76:                                               ; preds = %17
  %77 = load i32, i32* @zflag, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @zflag, align 4
  br label %81

79:                                               ; preds = %17
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %76, %73, %70, %69, %66, %65, %62, %56, %53, %42, %41, %38, %35, %34, %24, %19
  br label %12

82:                                               ; preds = %12
  %83 = load i64, i64* @optind, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  %88 = load i64, i64* @optind, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 %88
  store i8** %90, i8*** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %93, %82
  %96 = load i32, i32* @SIGINT, align 4
  %97 = load i64, i64* @SIG_IGN, align 8
  %98 = call i64 @signal(i32 %96, i64 %97)
  %99 = load i64, i64* @SIG_IGN, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @SIGINT, align 4
  %103 = load i64, i64* @catch, align 8
  %104 = call i64 @signal(i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i64, i64* @ckclean, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @SIGQUIT, align 4
  %110 = load i64, i64* @catchquit, align 8
  %111 = call i64 @signal(i32 %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* @SIGINFO, align 4
  %114 = load i64, i64* @infohandler, align 8
  %115 = call i64 @signal(i32 %113, i64 %114)
  %116 = load i32, i32* @bkgrdflag, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load i32, i32* @SIGALRM, align 4
  %120 = load i64, i64* @alarmhandler, align 8
  %121 = call i64 @signal(i32 %119, i64 %120)
  %122 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 5, i32* %123, align 8
  %124 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 5, i32* %127, align 8
  %128 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @ITIMER_REAL, align 4
  %131 = call i32 @setitimer(i32 %130, %struct.itimerval* %8, i32* null)
  br label %132

132:                                              ; preds = %118, %112
  %133 = load i32, i32* @RLIMIT_DATA, align 4
  %134 = call i64 @getrlimit(i32 %133, %struct.rlimit* %7)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @RLIMIT_DATA, align 4
  %141 = call i32 @setrlimit(i32 %140, %struct.rlimit* %7)
  br label %142

142:                                              ; preds = %136, %132
  br label %143

143:                                              ; preds = %153, %152, %142
  %144 = load i32, i32* %4, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i8**, i8*** %5, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @checkfilesys(i8* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* @ERESTART, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %143

153:                                              ; preds = %146
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %4, align 4
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %5, align 8
  br label %143

161:                                              ; preds = %143
  %162 = load i64, i64* @returntosingle, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 2, i32* %10, align 4
  br label %165

165:                                              ; preds = %164, %161
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @exit(i32 %166) #3
  unreachable
}

declare dso_local i32 @sync(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @argtoimax(i8 signext, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @checkfilesys(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
