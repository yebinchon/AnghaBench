; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i64 }

@dpp_curves = common dso_local global %struct.dpp_curve_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_curve_params* (i32*)* @dpp_get_curve_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_curve_params* @dpp_get_curve_oid(i32* %0) #0 {
  %2 = alloca %struct.dpp_curve_params*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %7, i64 %9
  %11 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %6
  %15 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %15, i64 %17
  %19 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32* @OBJ_txt2obj(i64 %20, i32 0)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @OBJ_cmp(i32* %25, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %30, i64 %32
  store %struct.dpp_curve_params* %33, %struct.dpp_curve_params** %2, align 8
  br label %39

34:                                               ; preds = %24, %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %6

38:                                               ; preds = %6
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %2, align 8
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %2, align 8
  ret %struct.dpp_curve_params* %40
}

declare dso_local i32* @OBJ_txt2obj(i64, i32) #1

declare dso_local i64 @OBJ_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
