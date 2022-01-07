; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c__wind_stringprep_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c__wind_stringprep_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LENGTH_CANON = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_wind_stringprep_normalize(i32* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64*, i64** %9, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %56

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %18, 4
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @MAX_LENGTH_CANON, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @MAX_LENGTH_CANON, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i64, i64* %10, align 8
  %27 = mul i64 %26, 4
  %28 = call i32* @malloc(i64 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %5, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @compat_decomp(i32* %34, i64 %35, i32* %36, i64* %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @canonical_reorder(i32* %45, i64 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = call i32 @combine(i32* %48, i64 %49, i32* %50, i64* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @free(i32* %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %44, %40, %31, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @compat_decomp(i32*, i64, i32*, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @canonical_reorder(i32*, i64) #1

declare dso_local i32 @combine(i32*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
