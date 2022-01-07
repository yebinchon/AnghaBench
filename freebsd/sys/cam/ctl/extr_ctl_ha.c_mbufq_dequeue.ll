; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.mbufq = type { %struct.mbuf*, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbufq*)* @mbufq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @mbufq_dequeue(%struct.mbufq* %0) #0 {
  %2 = alloca %struct.mbufq*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mbufq* %0, %struct.mbufq** %2, align 8
  %4 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %5 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %4, i32 0, i32 0
  %6 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %6, %struct.mbuf** %3, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %11 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %10, i32 0, i32 1
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = icmp eq %struct.mbuf* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %17 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %16, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %23 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %22, i32 0, i32 0
  store %struct.mbuf* %21, %struct.mbuf** %23, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
