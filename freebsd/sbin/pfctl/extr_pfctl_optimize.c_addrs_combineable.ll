; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_addrs_combineable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_addrs_combineable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule_addr = type { i64, i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PF_ADDR_ADDRMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addrs_combineable(%struct.pf_rule_addr* %0, %struct.pf_rule_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_rule_addr*, align 8
  %5 = alloca %struct.pf_rule_addr*, align 8
  store %struct.pf_rule_addr* %0, %struct.pf_rule_addr** %4, align 8
  store %struct.pf_rule_addr* %1, %struct.pf_rule_addr** %5, align 8
  %6 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %7 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PF_ADDR_ADDRMASK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %14 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PF_ADDR_ADDRMASK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %62

20:                                               ; preds = %12
  %21 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %22 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %25 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %60, label %28

28:                                               ; preds = %20
  %29 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %30 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %33 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %60, label %36

36:                                               ; preds = %28
  %37 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %38 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %43 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %41, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %36
  %49 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %4, align 8
  %50 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %55 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48, %36, %28, %20
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
