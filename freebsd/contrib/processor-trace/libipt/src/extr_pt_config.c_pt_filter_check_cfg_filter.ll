; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_check_cfg_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_check_cfg_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_conf_addr_filter = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_addr_cfg_filter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_conf_addr_filter*, i64)* @pt_filter_check_cfg_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_filter_check_cfg_filter(%struct.pt_conf_addr_filter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_conf_addr_filter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pt_conf_addr_filter* %0, %struct.pt_conf_addr_filter** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %12 = icmp ne %struct.pt_conf_addr_filter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i64, i64* %6, align 8
  %19 = call i64 (...) @pt_filter_addr_ncfg()
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @pt_filter_addr_cfg(%struct.pt_conf_addr_filter* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @pt_addr_cfg_filter, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %45

29:                                               ; preds = %21
  %30 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @pt_filter_addr_a(%struct.pt_conf_addr_filter* %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @pt_filter_addr_b(%struct.pt_conf_addr_filter* %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %66

44:                                               ; preds = %39, %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %17

48:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i64, i64* %6, align 8
  %51 = call i64 (...) @pt_filter_addr_ncfg()
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @pt_filter_addr_cfg(%struct.pt_conf_addr_filter* %54, i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @pt_addr_cfg_filter, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %66

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %49

65:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %60, %43, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
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
