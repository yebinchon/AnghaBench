; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getbsize.c_getbsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getbsize.c_getbsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getbsize.header = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: unknown blocksize\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"maximum blocksize is %ldG\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"minimum blocksize is 512\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%ld%s-blocks\00", align 1
@GB = common dso_local global i64 0, align 8
@KB = common dso_local global i64 0, align 8
@MAXB = common dso_local global i64 0, align 8
@MB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getbsize(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %10, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @strtol(i8* %20, i8** %9, i32 10)
  store i64 %21, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %65

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 1, i64* %5, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %49

40:                                               ; preds = %33, %28
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %48 [
    i32 71, label %44
    i32 103, label %44
    i32 75, label %45
    i32 107, label %45
    i32 77, label %46
    i32 109, label %46
    i32 0, label %47
  ]

44:                                               ; preds = %40, %40
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i64 1, i64* %6, align 8
  store i64 1073741824, i64* %7, align 8
  br label %52

45:                                               ; preds = %40, %40
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  store i64 1048576, i64* %6, align 8
  store i64 1024, i64* %7, align 8
  br label %52

46:                                               ; preds = %40, %40
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  store i64 1024, i64* %6, align 8
  store i64 1048576, i64* %7, align 8
  br label %52

47:                                               ; preds = %40
  store i64 1073741824, i64* %6, align 8
  store i64 1, i64* %7, align 8
  br label %52

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  store i64 512, i64* %5, align 8
  store i64 1073741824, i64* %6, align 8
  store i64 1, i64* %7, align 8
  br label %52

52:                                               ; preds = %49, %47, %46, %45, %44
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 1)
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = mul nsw i64 %60, %61
  store i64 %62, i64* %8, align 8
  %63 = icmp slt i64 %62, 512
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %23
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i64 512, i64* %5, align 8
  store i64 512, i64* %8, align 8
  br label %67

67:                                               ; preds = %65, %59
  br label %69

68:                                               ; preds = %14, %2
  store i64 512, i64* %5, align 8
  store i64 512, i64* %8, align 8
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i64, i64* %5, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @snprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getbsize.header, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %70, i8* %71)
  %73 = call i32 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getbsize.header, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i64*, i64** %4, align 8
  store i64 %75, i64* %76, align 8
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getbsize.header, i64 0, i64 0)
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
