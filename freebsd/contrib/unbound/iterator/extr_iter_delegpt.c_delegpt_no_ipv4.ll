; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_no_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_no_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i64, %struct.delegpt_ns* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_no_ipv4(%struct.delegpt* %0) #0 {
  %2 = alloca %struct.delegpt*, align 8
  %3 = alloca %struct.delegpt_ns*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %2, align 8
  %4 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %5 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %4, i32 0, i32 0
  %6 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  store %struct.delegpt_ns* %6, %struct.delegpt_ns** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %9 = icmp ne %struct.delegpt_ns* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %12 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %17 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %21 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %20, i32 0, i32 2
  %22 = load %struct.delegpt_ns*, %struct.delegpt_ns** %21, align 8
  store %struct.delegpt_ns* %22, %struct.delegpt_ns** %3, align 8
  br label %7

23:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
