; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_wstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_wstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPPRESS_PTR = common dso_local global i8* null, align 8
@WEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @convert_wstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_wstring(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** @SUPPRESS_PTR, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @__fgetwc(i32* %17, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @WEOF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @iswspace(i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22, %16
  %32 = phi i1 [ false, %22 ], [ false, %16 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %16

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @WEOF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @__ungetwc(i64 %41, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  br label %83

46:                                               ; preds = %4
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %65, %46
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @__fgetwc(i32* %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* @WEOF, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @iswspace(i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %54, %48
  %64 = phi i1 [ false, %54 ], [ false, %48 ], [ %62, %58 ]
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %48

72:                                               ; preds = %63
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @WEOF, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @__ungetwc(i64 %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i8*, i8** %6, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %45
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local i64 @__fgetwc(i32*, i32) #1

declare dso_local i32 @iswspace(i64) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
