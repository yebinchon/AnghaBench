; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_cmp_af(%struct.pf_rule* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %4, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %5, align 8
  %6 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %7 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %10 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %15 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
