; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h___ultoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h___ultoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i32, i8*)* @__ultoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ultoa(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %95 [
    i32 10, label %16
    i32 8, label %55
    i32 16, label %79
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = call signext i8 @to_char(i32 %20)
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %12, align 8
  store i8 %21, i8* %23, align 1
  %24 = load i8*, i8** %12, align 8
  store i8* %24, i8** %6, align 8
  br label %99

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @LONG_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = srem i32 %30, 10
  %32 = call signext i8 @to_char(i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %12, align 8
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, 10
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %38, %29
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i64, i64* %13, align 8
  %44 = srem i64 %43, 10
  %45 = trunc i64 %44 to i32
  %46 = call signext i8 @to_char(i32 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %12, align 8
  store i8 %46, i8* %48, align 1
  %49 = load i64, i64* %13, align 8
  %50 = sdiv i64 %49, 10
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %42, label %54

54:                                               ; preds = %51
  br label %97

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %64, %55
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 7
  %59 = call signext i8 @to_char(i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %12, align 8
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %56, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 48
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %12, align 8
  store i8 48, i8* %77, align 1
  br label %78

78:                                               ; preds = %75, %70, %67
  br label %97

79:                                               ; preds = %5
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 15
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %12, align 8
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %80, label %94

94:                                               ; preds = %91
  br label %97

95:                                               ; preds = %5
  %96 = call i32 (...) @abort() #3
  unreachable

97:                                               ; preds = %94, %78, %54
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i8*, i8** %6, align 8
  ret i8* %100
}

declare dso_local signext i8 @to_char(i32) #1

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
