; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstold.c_wcstold_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcstold.c_wcstold_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wcstold_l.initial = internal constant i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @wcstold_l(i32* noalias %0, i32** noalias %1, i32 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca x86_fp80, align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FIX_LOCALE(i32 %15)
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %12, align 8
  store i64 0, i64* %14, align 8
  br label %18

18:                                               ; preds = %24, %3
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @iswspace_l(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %12, align 8
  %27 = load i64, i64* %14, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %14, align 8
  br label %18

29:                                               ; preds = %18
  %30 = load i32, i32* @wcstold_l.initial, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @wcsrtombs_l(i8* null, i32** %12, i64 0, i32* %8, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32**, i32*** %6, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32**, i32*** %6, align 8
  store i32* %38, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  store x86_fp80 0xK00000000000000000000, x86_fp80* %4, align 16
  br label %87

41:                                               ; preds = %29
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @malloc(i64 %43)
  store i8* %44, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32**, i32*** %6, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load i32**, i32*** %6, align 8
  store i32* %50, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  store x86_fp80 0xK00000000000000000000, x86_fp80* %4, align 16
  br label %87

53:                                               ; preds = %41
  %54 = load i32, i32* @wcstold_l.initial, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @wcsrtombs_l(i8* %55, i32** %12, i64 %57, i32* %8, i32 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call x86_fp80 @strtold_l(i8* %60, i8** %11, i32 %61)
  store x86_fp80 %62, x86_fp80* %9, align 16
  %63 = load i32**, i32*** %6, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %53
  %66 = load i32*, i32** %5, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32**, i32*** %6, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load i64, i64* %14, align 8
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %78
  store i32* %81, i32** %79, align 8
  br label %82

82:                                               ; preds = %77, %65
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load x86_fp80, x86_fp80* %9, align 16
  store x86_fp80 %86, x86_fp80* %4, align 16
  br label %87

87:                                               ; preds = %83, %52, %40
  %88 = load x86_fp80, x86_fp80* %4, align 16
  ret x86_fp80 %88
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i64 @iswspace_l(i32, i32) #1

declare dso_local i64 @wcsrtombs_l(i8*, i32**, i64, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local x86_fp80 @strtold_l(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
