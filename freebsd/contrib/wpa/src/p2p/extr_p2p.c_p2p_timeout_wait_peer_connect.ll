; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_wait_peer_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_wait_peer_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 (i32)* }

@P2P_WAIT_PEER_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_wait_peer_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_wait_peer_connect(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = load i32, i32* @P2P_WAIT_PEER_IDLE, align 4
  %5 = call i32 @p2p_set_state(%struct.p2p_data* %3, i32 %4)
  %6 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %7 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64 (i32)*, i64 (i32)** %9, align 8
  %11 = icmp ne i64 (i32)* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64 (i32)*, i64 (i32)** %16, align 8
  %18 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %19 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 %17(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %27 = call i32 @p2p_set_timeout(%struct.p2p_data* %26, i32 0, i32 500000)
  br label %31

28:                                               ; preds = %12, %1
  %29 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %30 = call i32 @p2p_set_timeout(%struct.p2p_data* %29, i32 0, i32 200000)
  br label %31

31:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
