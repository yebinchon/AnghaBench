; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_ctc_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_time_ctc_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_pl_mtc_bit_size = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64, %struct.pt_config*)* @pt_time_ctc_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_time_ctc_delta(i64* %0, i64 %1, i64 %2, %struct.pt_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_config*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.pt_config* %3, %struct.pt_config** %9, align 8
  %10 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %11 = icmp ne %struct.pt_config* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @pt_pl_mtc_bit_size, align 4
  %27 = add i32 %25, %26
  %28 = shl i32 1, %27
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @pte_bad_packet, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %35, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
