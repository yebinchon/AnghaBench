; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_connect_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_connect_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Driver is still in Listen state; wait for it to complete\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Timeout on sending GO Negotiation Request without getting response\00", align 1
@P2P_CONNECT = common dso_local global i32 0, align 4
@P2P_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_connect_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_connect_listen(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %14 = call i32 @p2p_dbg(%struct.p2p_data* %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %40

15:                                               ; preds = %7
  %16 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 120
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %24 = call i32 @p2p_dbg(%struct.p2p_data* %23, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %26 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %25, i32 -1)
  br label %40

27:                                               ; preds = %15
  %28 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %29 = load i32, i32* @P2P_CONNECT, align 4
  %30 = call i32 @p2p_set_state(%struct.p2p_data* %28, i32 %29)
  %31 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %32 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @p2p_connect_send(%struct.p2p_data* %31, %struct.TYPE_2__* %34)
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %38 = load i32, i32* @P2P_IDLE, align 4
  %39 = call i32 @p2p_set_state(%struct.p2p_data* %37, i32 %38)
  br label %40

40:                                               ; preds = %12, %22, %36, %27
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_connect_send(%struct.p2p_data*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
