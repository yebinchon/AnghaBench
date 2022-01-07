; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_openSrcFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_openSrcFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdinmark = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using stdin for input \0A\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"zstd: can't stat %s : %s -- ignored \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"zstd: %s is not a regular file -- ignored \0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"zstd: %s: %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @FIO_openSrcFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FIO_openSrcFile(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @stdinmark, align 4
  %11 = call i32 @strcmp(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** @stdin, align 8
  %16 = call i32 @SET_BINARY_MODE(i32* %15)
  %17 = load i32*, i32** @stdin, align 8
  store i32* %17, i32** %2, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @UTIL_fileExist(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  store i32* null, i32** %2, align 8
  br label %50

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @UTIL_isRegularFile(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @UTIL_isFIFO(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32* null, i32** %2, align 8
  br label %50

38:                                               ; preds = %31, %27
  %39 = load i8*, i8** %3, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %4, align 8
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %48, %35, %22, %13
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #1

declare dso_local i32 @UTIL_fileExist(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @UTIL_isRegularFile(i8*) #1

declare dso_local i32 @UTIL_isFIFO(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
