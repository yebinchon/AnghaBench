; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i64 }

@dpp_curves = common dso_local global %struct.dpp_curve_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_curve_params* (i32)* @dpp_get_curve_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_curve_params* @dpp_get_curve_nid(i32 %0) #0 {
  %2 = alloca %struct.dpp_curve_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %2, align 8
  br label %39

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %11, i64 %13
  %15 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %10
  %19 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %19, i64 %21
  %23 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @OBJ_txt2nid(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %30, i64 %32
  store %struct.dpp_curve_params* %33, %struct.dpp_curve_params** %2, align 8
  br label %39

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %10

38:                                               ; preds = %10
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %2, align 8
  br label %39

39:                                               ; preds = %38, %29, %8
  %40 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %2, align 8
  ret %struct.dpp_curve_params* %40
}

declare dso_local i32 @OBJ_txt2nid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
