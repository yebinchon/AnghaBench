; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcsftime.c_wcsftime_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcsftime.c_wcsftime_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@wcsftime_l.initial = internal constant i32 0, align 4
@SIZE_T_MAX = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wcsftime_l(i32* noalias %0, i64 %1, i32* noalias %2, %struct.tm* noalias %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.tm* %3, %struct.tm** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @FIX_LOCALE(i32 %20)
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %22 = load i32, i32* @wcsftime_l.initial, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %16, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @wcsrtombs_l(i8* null, i32** %16, i64 0, i32* %12, i32 %24)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %18, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %87

29:                                               ; preds = %5
  %30 = load i64, i64* %18, align 8
  %31 = add i64 %30, 1
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %14, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %87

35:                                               ; preds = %29
  %36 = load i32, i32* @wcsftime_l.initial, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %38, 1
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @wcsrtombs_l(i8* %37, i32** %16, i64 %39, i32* %12, i32 %40)
  %42 = load i64, i64* @SIZE_T_MAX, align 8
  %43 = load i64, i64* @MB_CUR_MAX, align 8
  %44 = udiv i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* @errno, align 4
  br label %87

49:                                               ; preds = %35
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MB_CUR_MAX, align 8
  %52 = mul i64 %50, %51
  %53 = call i8* @malloc(i64 %52)
  store i8* %53, i8** %13, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %87

56:                                               ; preds = %49
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.tm*, %struct.tm** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @strftime_l(i8* %57, i64 %58, i8* %59, %struct.tm* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %87

65:                                               ; preds = %56
  %66 = load i8*, i8** %13, align 8
  store i8* %66, i8** %15, align 8
  %67 = load i32, i32* @wcsftime_l.initial, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @mbsrtowcs_l(i32* %68, i8** %15, i64 %69, i32* %12, i32 %70)
  store i64 %71, i64* %17, align 8
  %72 = load i64, i64* %17, align 8
  %73 = icmp eq i64 %72, -2
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %17, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74, %65
  br label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i64, i64* %17, align 8
  store i64 %86, i64* %6, align 8
  br label %94

87:                                               ; preds = %80, %64, %55, %47, %34, %28
  %88 = load i32, i32* @errno, align 4
  store i32 %88, i32* %19, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %19, align 4
  store i32 %93, i32* @errno, align 4
  store i64 0, i64* %6, align 8
  br label %94

94:                                               ; preds = %87, %81
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @wcsrtombs_l(i8*, i32**, i64, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strftime_l(i8*, i64, i8*, %struct.tm*, i32) #1

declare dso_local i64 @mbsrtowcs_l(i32*, i8**, i64, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
