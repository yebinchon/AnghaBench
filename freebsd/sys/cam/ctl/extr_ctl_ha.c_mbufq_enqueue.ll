; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbufq = type { %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbufq*, %struct.mbuf*)* @mbufq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbufq_enqueue(%struct.mbufq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbufq*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbufq* %0, %struct.mbufq** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  %7 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %8 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %7, i32 0, i32 0
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %14 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  store %struct.mbuf* %12, %struct.mbuf** %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %20 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %19, i32 0, i32 1
  store %struct.mbuf* %18, %struct.mbuf** %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %24 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %23, i32 0, i32 0
  store %struct.mbuf* %22, %struct.mbuf** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
