; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_dst_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_dst_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@PF_OP_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_cmp_dst_port(%struct.pf_rule* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %4, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %5, align 8
  %6 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %7 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PF_OP_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %2
  %13 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %14 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %18 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %12
  %23 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %24 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %30 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %22
  %37 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %38 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %44 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36, %22, %12, %2
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
