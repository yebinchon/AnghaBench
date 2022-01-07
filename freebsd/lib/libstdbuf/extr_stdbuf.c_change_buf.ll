; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libstdbuf/extr_stdbuf.c_change_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libstdbuf/extr_stdbuf.c_change_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_IONBF = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@_IOFBF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Wrong buffer mode '%s' for %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown suffix '%c' for %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot set buffer mode '%s' for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @change_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_buf(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 48
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @_IONBF, align 4
  store i32 %20, i32* %7, align 4
  br label %92

21:                                               ; preds = %13, %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 76
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @_IOLBF, align 4
  store i32 %34, i32* %7, align 4
  br label %91

35:                                               ; preds = %27, %21
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 66
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @_IOFBF, align 4
  store i32 %48, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %90

49:                                               ; preds = %41, %35
  store i64 0, i64* @errno, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strtol(i8* %50, i8** %5, i32 0)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EINVAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ERANGE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %55, %49
  %64 = load i8*, i8** %4, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @stream_name(i32* %65)
  %67 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %82 [
    i32 71, label %72
    i32 77, label %75
    i32 107, label %78
    i32 0, label %81
  ]

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = mul i64 %73, 1073741824
  store i64 %74, i64* %6, align 8
  br label %88

75:                                               ; preds = %68
  %76 = load i64, i64* %6, align 8
  %77 = mul i64 %76, 1048576
  store i64 %77, i64* %6, align 8
  br label %88

78:                                               ; preds = %68
  %79 = load i64, i64* %6, align 8
  %80 = mul i64 %79, 1024
  store i64 %80, i64* %6, align 8
  br label %88

81:                                               ; preds = %68
  br label %88

82:                                               ; preds = %68
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @stream_name(i32* %85)
  %87 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %84, i32 %86)
  br label %103

88:                                               ; preds = %81, %78, %75, %72
  %89 = load i32, i32* @_IOFBF, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %47
  br label %91

91:                                               ; preds = %90, %33
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @setvbuf(i32* %93, i32* null, i32 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %4, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @stream_name(i32* %100)
  %102 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %99, i32 %101)
  br label %103

103:                                              ; preds = %82, %98, %92
  ret void
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i8*, i32) #1

declare dso_local i32 @stream_name(i32*) #1

declare dso_local i32 @warnx(i8*, i8 signext, i32) #1

declare dso_local i64 @setvbuf(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
