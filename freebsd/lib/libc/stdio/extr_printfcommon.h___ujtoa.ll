; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h___ujtoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h___ujtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@INTMAX_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i32, i32, i8*)* @__ujtoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ujtoa(i64 %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ULONG_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = call i8* @__ultoa(i32 %20, i8* %21, i32 %22, i32 %23, i8* %24)
  store i8* %25, i8** %6, align 8
  br label %111

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %107 [
    i32 10, label %28
    i32 8, label %68
    i32 16, label %92
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %29, 10
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = srem i64 %32, 10
  %34 = call signext i8 @to_char(i64 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %12, align 8
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %6, align 8
  br label %111

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @INTMAX_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = srem i64 %43, 10
  %45 = call signext i8 @to_char(i64 %44)
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %12, align 8
  store i8 %45, i8* %47, align 1
  %48 = load i64, i64* %7, align 8
  %49 = sdiv i64 %48, 10
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %38
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %64, %54
  %56 = load i32, i32* %13, align 4
  %57 = srem i32 %56, 10
  %58 = sext i32 %57 to i64
  %59 = call signext i8 @to_char(i64 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %12, align 8
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 10
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %55, label %67

67:                                               ; preds = %64
  br label %109

68:                                               ; preds = %26
  br label %69

69:                                               ; preds = %77, %68
  %70 = load i64, i64* %7, align 8
  %71 = and i64 %70, 7
  %72 = call signext i8 @to_char(i64 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %12, align 8
  store i8 %72, i8* %74, align 1
  %75 = load i64, i64* %7, align 8
  %76 = ashr i64 %75, 3
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %69, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 48
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %12, align 8
  store i8 48, i8* %90, align 1
  br label %91

91:                                               ; preds = %88, %83, %80
  br label %109

92:                                               ; preds = %26
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %7, align 8
  %96 = and i64 %95, 15
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %12, align 8
  store i8 %98, i8* %100, align 1
  %101 = load i64, i64* %7, align 8
  %102 = ashr i64 %101, 4
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %93
  %104 = load i64, i64* %7, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %93, label %106

106:                                              ; preds = %103
  br label %109

107:                                              ; preds = %26
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %106, %91, %67
  %110 = load i8*, i8** %12, align 8
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %109, %31, %18
  %112 = load i8*, i8** %6, align 8
  ret i8* %112
}

declare dso_local i8* @__ultoa(i32, i8*, i32, i32, i8*) #1

declare dso_local signext i8 @to_char(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
