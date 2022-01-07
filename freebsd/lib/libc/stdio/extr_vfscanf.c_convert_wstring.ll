; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@SUPPRESS_PTR = common dso_local global i8* null, align 8
@WEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @convert_wstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_wstring(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @initial_mbs, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** @SUPPRESS_PTR, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @__fgetwc_mbs(i32* %19, i32* %9, i32* %12, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @WEOF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @iswspace(i64 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %28, %24, %18
  %34 = phi i1 [ false, %24 ], [ false, %18 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %18

39:                                               ; preds = %33
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @WEOF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (...) @__get_locale()
  %47 = call i32 @__ungetwc(i64 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %86

49:                                               ; preds = %4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @__fgetwc_mbs(i32* %51, i32* %9, i32* %12, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* @WEOF, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @iswspace(i64 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %60, %56, %50
  %66 = phi i1 [ false, %56 ], [ false, %50 ], [ %64, %60 ]
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  %68 = load i64, i64* %10, align 8
  %69 = trunc i64 %68 to i8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %50

75:                                               ; preds = %65
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @WEOF, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 (...) @__get_locale()
  %83 = call i32 @__ungetwc(i64 %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i8*, i8** %6, align 8
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %84, %48
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i64 @__fgetwc_mbs(i32*, i32*, i32*, i32) #1

declare dso_local i32 @iswspace(i64) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

declare dso_local i32 @__get_locale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
