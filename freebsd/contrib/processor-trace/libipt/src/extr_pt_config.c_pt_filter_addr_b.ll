; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_addr_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_config.c_pt_filter_addr_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_conf_addr_filter = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pt_filter_addr_b(%struct.pt_conf_addr_filter* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_conf_addr_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.pt_conf_addr_filter* %0, %struct.pt_conf_addr_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %8 = icmp ne %struct.pt_conf_addr_filter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %25

10:                                               ; preds = %2
  %11 = call i32 (...) @pt_filter_addr_ncfg()
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i64 0, i64* %3, align 8
  br label %25

15:                                               ; preds = %10
  %16 = load %struct.pt_conf_addr_filter*, %struct.pt_conf_addr_filter** %4, align 8
  %17 = getelementptr inbounds %struct.pt_conf_addr_filter, %struct.pt_conf_addr_filter* %16, i32 0, i32 0
  store i64* %17, i64** %6, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %15, %14, %9
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i32 @pt_filter_addr_ncfg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
