; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_wait_peer_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_wait_peer_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.p2p_device* }
%struct.p2p_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unknown GO Neg peer - stop GO Neg wait\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Go to Listen state while waiting for the peer to become ready for GO Negotiation\00", align 1
@P2P_WAIT_PEER_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_wait_peer_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_wait_peer_idle(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  %3 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %4 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %5 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %4, i32 0, i32 0
  %6 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  store %struct.p2p_device* %6, %struct.p2p_device** %3, align 8
  %7 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %8 = icmp eq %struct.p2p_device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %11 = call i32 @p2p_dbg(%struct.p2p_data* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %14 = call i32 @p2p_dbg(%struct.p2p_data* %13, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %16 = load i32, i32* @P2P_WAIT_PEER_CONNECT, align 4
  %17 = call i32 @p2p_set_state(%struct.p2p_data* %15, i32 %16)
  %18 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %19 = call i32 @p2p_listen_in_find(%struct.p2p_data* %18, i32 0)
  br label %20

20:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_listen_in_find(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
