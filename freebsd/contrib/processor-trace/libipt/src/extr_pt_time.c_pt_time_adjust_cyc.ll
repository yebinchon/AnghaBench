; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_adjust_cyc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_adjust_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time = type { i64, i64 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_tcal_fcr_shr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pt_time*, %struct.pt_config*, i32)* @pt_time_adjust_cyc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_time_adjust_cyc(i32* %0, %struct.pt_time* %1, %struct.pt_config* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_time*, align 8
  %8 = alloca %struct.pt_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.pt_time* %1, %struct.pt_time** %7, align 8
  store %struct.pt_config* %2, %struct.pt_config** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pt_time*, %struct.pt_time** %7, align 8
  %18 = icmp ne %struct.pt_time* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.pt_config*, %struct.pt_config** %8, align 8
  %21 = icmp ne %struct.pt_config* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %4
  %26 = load i32, i32* @pte_internal, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %22
  %29 = load %struct.pt_time*, %struct.pt_time** %7, align 8
  %30 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.pt_time*, %struct.pt_time** %7, align 8
  %33 = getelementptr inbounds %struct.pt_time, %struct.pt_time* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %74

39:                                               ; preds = %28
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.pt_config*, %struct.pt_config** %8, align 8
  %43 = call i32 @pt_time_ctc_delta(i64* %12, i64 %40, i64 %41, %struct.pt_config* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %5, align 4
  br label %74

48:                                               ; preds = %39
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.pt_config*, %struct.pt_config** %8, align 8
  %51 = call i32 @pt_time_ctc_fc(i32* %13, i64 %49, %struct.pt_config* %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %5, align 4
  br label %74

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @pt_tcal_fcr_shr, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %54, %46, %38, %25
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @pt_time_ctc_delta(i64*, i64, i64, %struct.pt_config*) #1

declare dso_local i32 @pt_time_ctc_fc(i32*, i64, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
