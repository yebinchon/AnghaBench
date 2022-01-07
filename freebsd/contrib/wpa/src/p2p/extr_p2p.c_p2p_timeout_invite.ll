; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_invite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@P2P_INVITE_LISTEN = common dso_local global i32 0, align 4
@P2P_INVITE_ROLE_ACTIVE_GO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Inviting in active GO role - wait on operating channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_invite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_invite(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %7(i32 %12)
  %14 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %15 = load i32, i32* @P2P_INVITE_LISTEN, align 4
  %16 = call i32 @p2p_set_state(%struct.p2p_data* %14, i32 %15)
  %17 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @P2P_INVITE_ROLE_ACTIVE_GO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %24 = call i32 @p2p_dbg(%struct.p2p_data* %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %26 = call i32 @p2p_set_timeout(%struct.p2p_data* %25, i32 0, i32 100000)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %29 = call i32 @p2p_listen_in_find(%struct.p2p_data* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_listen_in_find(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
