; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_jwk_crv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_jwk_crv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i64, i64 }

@dpp_curves = common dso_local global %struct.dpp_curve_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_curve_params* (i8*)* @dpp_get_curve_jwk_crv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_curve_params* @dpp_get_curve_jwk_crv(i8* %0) #0 {
  %2 = alloca %struct.dpp_curve_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %6, i64 %8
  %10 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %5
  %14 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %14, i64 %16
  %18 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %23, i64 %25
  %27 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @os_strcmp(i8* %22, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %32, i64 %34
  store %struct.dpp_curve_params* %35, %struct.dpp_curve_params** %2, align 8
  br label %41

36:                                               ; preds = %21, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %5

40:                                               ; preds = %5
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %2, align 8
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %2, align 8
  ret %struct.dpp_curve_params* %42
}

declare dso_local i64 @os_strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
