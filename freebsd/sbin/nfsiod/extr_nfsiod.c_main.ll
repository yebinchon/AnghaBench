; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nfsiod/extr_nfsiod.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nfsiod/extr_nfsiod.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvfsconf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kldload(nfs)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"NFS support is not available in the running kernel\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"n:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"nfsiod count %u; reset to %d\00", align 1
@MAXNFSDCNT = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"vfs.nfs.iodmin\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"sysctlbyname(\22vfs.nfs.iodmin\22)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"vfs.nfs.iodmax\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"sysctlbyname(\22vfs.nfs.iodmax\22)\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"vfs.nfs.iodmin=%u\0Avfs.nfs.iodmax=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xvfsconf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 @getvfsbyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.xvfsconf* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = call i32 @kldload(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @getvfsbyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.xvfsconf* %7)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %55 [
    i32 110, label %36
    i32 63, label %54
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @atoi(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ult i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 1)
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MAXNFSDCNT, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MAXNFSDCNT, align 4
  %51 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @MAXNFSDCNT, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %57

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %34, %54
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %53
  br label %29

58:                                               ; preds = %29
  %59 = load i64, i64* @optind, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* @optind, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8** %66, i8*** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %58
  store i64 4, i64* %12, align 8
  %72 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %9, i64* %12, i32* null, i32 0)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  store i64 4, i64* %12, align 8
  %78 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %10, i64* %12, i32* null, i32 0)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %87, i32 %88)
  %90 = call i32 @exit(i32 0) #3
  unreachable

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %9, align 4
  %97 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* null, i64* null, i32* %9, i32 4)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %10, align 4
  %105 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null, i64* null, i32* %10, i32 4)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getvfsbyname(i8*, %struct.xvfsconf*) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

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
