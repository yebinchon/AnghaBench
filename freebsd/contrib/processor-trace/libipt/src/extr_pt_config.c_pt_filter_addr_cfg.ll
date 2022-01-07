; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_addr_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_addr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_conf_addr_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_filter_addr_cfg(%struct.pt_conf_addr_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_conf_addr_filter*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_conf_addr_filter* %0, %struct.pt_conf_addr_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %7 = icmp ne %struct.pt_conf_addr_filter* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

9:                                                ; preds = %2
  %10 = call i32 (...) @pt_filter_addr_ncfg()
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %23

14:                                               ; preds = %9
  %15 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %16 = getelementptr inbounds %struct.pt_conf_addr_filter, %struct.pt_conf_addr_filter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 4, %19
  %21 = ashr i32 %18, %20
  %22 = and i32 %21, 15
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @pt_filter_addr_ncfg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
