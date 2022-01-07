; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"patterns must be specified as hex digits\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x\00", align 1
@maxpayload = common dso_local global i64 0, align 8
@TIMEVAL_LEN = common dso_local global i64 0, align 8
@options = common dso_local global i32 0, align 4
@F_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PATTERN: 0x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @isxdigit(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EX_USAGE, align 4
  %22 = call i32 @errx(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  %45 = call i64 @sscanf(i8* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @maxpayload, align 8
  %52 = load i64, i64* @TIMEVAL_LEN, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %51, %54
  %56 = icmp ule i64 %50, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 %66, i8* %71, align 1
  br label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %58

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %9, align 8
  br label %49

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80, %27
  %82 = load i32, i32* @options, align 4
  %83 = load i32, i32* @F_QUIET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %88

88:                                               ; preds = %100, %86
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 255
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %88

103:                                              ; preds = %88
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %81
  ret void
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
