; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@WEOF = common dso_local global i64 0, align 8
@SUPPRESS_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @convert_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_string(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @initial_mbs, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %47, %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @__fgetwc(i32* %16, i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* @WEOF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @iswspace(i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %25, %21, %15
  %31 = phi i1 [ false, %21 ], [ false, %15 ], [ %29, %25 ]
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** @SUPPRESS_PTR, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @wcrtomb(i8* %37, i64 %38, i32* %10)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %15

50:                                               ; preds = %30
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @WEOF, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @__ungetwc(i64 %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** @SUPPRESS_PTR, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %42
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @__fgetwc(i32*, i32) #1

declare dso_local i32 @iswspace(i64) #1

declare dso_local i64 @wcrtomb(i8*, i64, i32*) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
