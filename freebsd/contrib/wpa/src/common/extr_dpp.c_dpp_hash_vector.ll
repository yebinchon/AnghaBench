; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hash_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_hash_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_curve_params*, i64, i32**, i64*, i32*)* @dpp_hash_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_hash_vector(%struct.dpp_curve_params* %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpp_curve_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.dpp_curve_params* %0, %struct.dpp_curve_params** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %13 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @sha256_vector(i64 %17, i32** %18, i64* %19, i32* %20)
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %5
  %23 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %24 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = load i32**, i32*** %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @sha384_vector(i64 %28, i32** %29, i64* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %45

33:                                               ; preds = %22
  %34 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %7, align 8
  %35 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i32**, i32*** %9, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @sha512_vector(i64 %39, i32** %40, i64* %41, i32* %42)
  store i32 %43, i32* %6, align 4
  br label %45

44:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38, %27, %16
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @sha256_vector(i64, i32**, i64*, i32*) #1

declare dso_local i32 @sha384_vector(i64, i32**, i64*, i32*) #1

declare dso_local i32 @sha512_vector(i64, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
