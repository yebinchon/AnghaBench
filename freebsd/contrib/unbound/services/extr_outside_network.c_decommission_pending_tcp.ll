; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_decommission_pending_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_decommission_pending_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { %struct.pending_tcp* }
%struct.pending_tcp = type { i32*, %struct.pending_tcp*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outside_network*, %struct.pending_tcp*)* @decommission_pending_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decommission_pending_tcp(%struct.outside_network* %0, %struct.pending_tcp* %1) #0 {
  %3 = alloca %struct.outside_network*, align 8
  %4 = alloca %struct.pending_tcp*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %3, align 8
  store %struct.pending_tcp* %1, %struct.pending_tcp** %4, align 8
  %5 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %6 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %14 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @comm_point_close(%struct.TYPE_2__* %15)
  %17 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %18 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %17, i32 0, i32 0
  %19 = load %struct.pending_tcp*, %struct.pending_tcp** %18, align 8
  %20 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %21 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %20, i32 0, i32 1
  store %struct.pending_tcp* %19, %struct.pending_tcp** %21, align 8
  %22 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %23 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %24 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %23, i32 0, i32 0
  store %struct.pending_tcp* %22, %struct.pending_tcp** %24, align 8
  %25 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %26 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @waiting_tcp_delete(i32* %27)
  %29 = load %struct.pending_tcp*, %struct.pending_tcp** %4, align 8
  %30 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %32 = call i32 @use_free_buffer(%struct.outside_network* %31)
  ret void
}

declare dso_local i32 @comm_point_close(%struct.TYPE_2__*) #1

declare dso_local i32 @waiting_tcp_delete(i32*) #1

declare dso_local i32 @use_free_buffer(%struct.outside_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
