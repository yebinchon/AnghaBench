; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_unused_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_unused_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr* }
%struct.delegpt_addr = type { %struct.delegpt_addr*, %struct.delegpt_addr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_add_unused_targets(%struct.delegpt* %0) #0 {
  %2 = alloca %struct.delegpt*, align 8
  %3 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %2, align 8
  %4 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %5 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %4, i32 0, i32 1
  %6 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  store %struct.delegpt_addr* %6, %struct.delegpt_addr** %3, align 8
  %7 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %8 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %7, i32 0, i32 1
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %8, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.delegpt_addr*, %struct.delegpt_addr** %3, align 8
  %11 = icmp ne %struct.delegpt_addr* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %14 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %13, i32 0, i32 0
  %15 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %16 = load %struct.delegpt_addr*, %struct.delegpt_addr** %3, align 8
  %17 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %16, i32 0, i32 1
  store %struct.delegpt_addr* %15, %struct.delegpt_addr** %17, align 8
  %18 = load %struct.delegpt_addr*, %struct.delegpt_addr** %3, align 8
  %19 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %20 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %19, i32 0, i32 0
  store %struct.delegpt_addr* %18, %struct.delegpt_addr** %20, align 8
  %21 = load %struct.delegpt_addr*, %struct.delegpt_addr** %3, align 8
  %22 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %21, i32 0, i32 0
  %23 = load %struct.delegpt_addr*, %struct.delegpt_addr** %22, align 8
  store %struct.delegpt_addr* %23, %struct.delegpt_addr** %3, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
