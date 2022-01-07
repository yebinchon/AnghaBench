; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_curve_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_curve_params = type { i64, i64 }

@dpp_curves = common dso_local global %struct.dpp_curve_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpp_curve_params* (i8*)* @dpp_get_curve_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpp_curve_params* @dpp_get_curve_name(i8* %0) #0 {
  %2 = alloca %struct.dpp_curve_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %6, i64 %8
  %10 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %15, i64 %17
  %19 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @os_strcmp(i8* %14, i64 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %13
  %24 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %24, i64 %26
  %28 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %33, i64 %35
  %37 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @os_strcmp(i8* %32, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31, %13
  %42 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** @dpp_curves, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %42, i64 %44
  store %struct.dpp_curve_params* %45, %struct.dpp_curve_params** %2, align 8
  br label %51

46:                                               ; preds = %31, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %5

50:                                               ; preds = %5
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %2, align 8
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %2, align 8
  ret %struct.dpp_curve_params* %52
}

declare dso_local i64 @os_strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
