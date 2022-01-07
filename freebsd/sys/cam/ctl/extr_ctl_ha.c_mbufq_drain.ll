; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_mbufq_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbufq = type { i32*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbufq*)* @mbufq_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbufq_drain(%struct.mbufq* %0) #0 {
  %2 = alloca %struct.mbufq*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mbufq* %0, %struct.mbufq** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %6 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %5, i32 0, i32 1
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %7, %struct.mbuf** %3, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %13 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %14 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %13, i32 0, i32 1
  store %struct.mbuf* %12, %struct.mbuf** %14, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = call i32 @m_freem(%struct.mbuf* %15)
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.mbufq*, %struct.mbufq** %2, align 8
  %19 = getelementptr inbounds %struct.mbufq, %struct.mbufq* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
