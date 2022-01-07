; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF16_MAX = common dso_local global i32 0, align 4
@UTF32_MAX = common dso_local global i32 0, align 4
@SRG_BASE = common dso_local global i64 0, align 8
@HISRG_MIN = common dso_local global i64 0, align 8
@LOSRG_MIN = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i32*, i64*)* @_citrus_UTF7_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF7_wcrtomb_priv(i32* noalias %0, i8* noalias %1, i64 %2, i64 %3, i32* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load i64, i64* %11, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @UTF16_MAX, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 %28, i64* %29, align 16
  store i32 1, i32* %18, align 4
  br label %57

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @UTF32_MAX, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i64, i64* @SRG_BASE, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 10
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @HISRG_MIN, align 8
  %44 = add nsw i64 %42, %43
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 %44, i64* %45, align 16
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @UINT32_C(i32 1023)
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @LOSRG_MIN, align 8
  %51 = add nsw i64 %49, %50
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  store i32 2, i32* %18, align 4
  br label %56

53:                                               ; preds = %30
  %54 = load i64*, i64** %13, align 8
  store i64 -1, i64* %54, align 8
  %55 = load i32, i32* @EILSEQ, align 4
  store i32 %55, i32* %7, align 4
  br label %92

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %26
  store i64 0, i64* %20, align 8
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @_citrus_UTF7_utf16tomb(i32* %63, i8* %64, i64 %65, i64 %69, i32* %70, i64* %19)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %7, align 4
  br label %92

76:                                               ; preds = %62
  %77 = load i64, i64* %19, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %9, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %20, align 8
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %58

89:                                               ; preds = %58
  %90 = load i64, i64* %20, align 8
  %91 = load i64*, i64** %13, align 8
  store i64 %90, i64* %91, align 8
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %74, %53
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @_citrus_UTF7_utf16tomb(i32*, i8*, i64, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
