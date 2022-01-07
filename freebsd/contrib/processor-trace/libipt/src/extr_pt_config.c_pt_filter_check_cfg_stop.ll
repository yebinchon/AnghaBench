; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_check_cfg_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_check_cfg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_conf_addr_filter = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_addr_cfg_stop = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_conf_addr_filter*, i64)* @pt_filter_check_cfg_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_filter_check_cfg_stop(%struct.pt_conf_addr_filter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_conf_addr_filter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_conf_addr_filter* %0, %struct.pt_conf_addr_filter** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %11 = icmp ne %struct.pt_conf_addr_filter* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i64, i64* %6, align 8
  %18 = call i64 (...) @pt_filter_addr_ncfg()
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @pt_filter_addr_cfg(%struct.pt_conf_addr_filter* %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @pt_addr_cfg_stop, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %44

28:                                               ; preds = %20
  %29 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @pt_filter_addr_a(%struct.pt_conf_addr_filter* %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @pt_filter_addr_b(%struct.pt_conf_addr_filter* %32, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %48

43:                                               ; preds = %38, %28
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %16

47:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @pt_filter_addr_ncfg(...) #1

declare dso_local i64 @pt_filter_addr_cfg(%struct.pt_conf_addr_filter*, i64) #1

declare dso_local i64 @pt_filter_addr_a(%struct.pt_conf_addr_filter*, i64) #1

declare dso_local i64 @pt_filter_addr_b(%struct.pt_conf_addr_filter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
