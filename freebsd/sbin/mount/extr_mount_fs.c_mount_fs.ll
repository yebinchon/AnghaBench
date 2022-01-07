; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount_fs.c_mount_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount_fs.c_mount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@getmnt_silent = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@mopts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_fs(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca [255 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlcpy(i8* %25, i8* %26, i32 32)
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* %17, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 255)
  store i32 1, i32* @getmnt_silent, align 4
  store %struct.iovec* null, %struct.iovec** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %30

30:                                               ; preds = %56, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %54 [
    i32 111, label %37
    i32 63, label %53
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** @optarg, align 8
  %39 = load i32, i32* @mopts, align 4
  %40 = call i32 @getmntopts(i8* %38, i32 %39, i32* %10, i32 0)
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 61)
  store i8* %42, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %18, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %18, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %19, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i8*, i8** @optarg, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @build_iovec(%struct.iovec** %8, i32* %9, i8* %50, i8* %51, i32 -1)
  br label %56

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %35, %53
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %49
  br label %30

57:                                               ; preds = %30
  %58 = load i32, i32* @optind, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @optind, align 4
  %62 = load i8**, i8*** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8** %64, i8*** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %57
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %12, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @checkpath(i8* %76, i8* %24)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %111

81:                                               ; preds = %69
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @rmslashes(i8* %82, i8* %83)
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %86 = call i32 @build_iovec(%struct.iovec** %8, i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 -1)
  %87 = call i32 @build_iovec(%struct.iovec** %8, i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %24, i32 -1)
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @build_iovec(%struct.iovec** %8, i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32 -1)
  %90 = getelementptr inbounds [255 x i8], [255 x i8]* %17, i64 0, i64 0
  %91 = call i32 @build_iovec(%struct.iovec** %8, i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %90, i32 255)
  %92 = load %struct.iovec*, %struct.iovec** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @nmount(%struct.iovec* %92, i32 %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %110

97:                                               ; preds = %81
  %98 = getelementptr inbounds [255 x i8], [255 x i8]* %17, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds [255 x i8], [255 x i8]* %17, i64 0, i64 0
  %105 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %103, i8* %104)
  br label %109

106:                                              ; preds = %97
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %102
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %111

110:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %111

111:                                              ; preds = %110, %109, %79
  %112 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @getmntopts(i8*, i32, i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @checkpath(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*, ...) #2

declare dso_local i32 @rmslashes(i8*, i8*) #2

declare dso_local i32 @nmount(%struct.iovec*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
