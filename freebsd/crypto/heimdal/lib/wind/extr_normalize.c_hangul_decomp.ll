; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_hangul_decomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_hangul_decomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_base = common dso_local global i64 0, align 8
@s_count = common dso_local global i64 0, align 8
@l_base = common dso_local global i32 0, align 4
@n_count = common dso_local global i32 0, align 4
@v_base = common dso_local global i32 0, align 4
@t_count = common dso_local global i32 0, align 4
@t_base = common dso_local global i32 0, align 4
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i64*)* @hangul_decomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hangul_decomp(i64* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @s_base, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @s_base, align 8
  %24 = load i64, i64* @s_count, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @s_base, align 8
  %31 = sub nsw i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @l_base, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @n_count, align 4
  %36 = udiv i32 %34, %35
  %37 = add i32 %33, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @v_base, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @n_count, align 4
  %41 = urem i32 %39, %40
  %42 = load i32, i32* @t_count, align 4
  %43 = udiv i32 %41, %42
  %44 = add i32 %38, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @t_base, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @t_count, align 4
  %48 = urem i32 %46, %47
  %49 = add i32 %45, %48
  store i32 %49, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @t_base, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %28
  %54 = load i32, i32* %15, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %28
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %63, i32* %5, align 4
  br label %85

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64*, i64** %8, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @t_base, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %62, %27
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
