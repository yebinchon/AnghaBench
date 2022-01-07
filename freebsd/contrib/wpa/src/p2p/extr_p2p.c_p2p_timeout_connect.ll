; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_timeout_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 (i32)* }

@P2P_DEV_WAIT_GO_NEG_CONFIRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Wait for GO Negotiation Confirm timed out - assume GO Negotiation failed\00", align 1
@P2P_DEV_PEER_WAITING_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Peer expected to wait our response - skip listen\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Skip connect-listen since GO Neg channel known (OOB)\00", align 1
@P2P_CONNECT_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_timeout_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_timeout_connect(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %3 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %4 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %7(i32 %12)
  %14 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @P2P_DEV_WAIT_GO_NEG_CONFIRM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %29 = call i32 @p2p_dbg(%struct.p2p_data* %28, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %31 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %30, i32 -1)
  br label %87

32:                                               ; preds = %18, %1
  %33 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %39 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @P2P_DEV_PEER_WAITING_RESPONSE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %48 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 120
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %55 = call i32 @p2p_dbg(%struct.p2p_data* %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %57 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %58 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @p2p_connect_send(%struct.p2p_data* %56, %struct.TYPE_4__* %59)
  br label %87

61:                                               ; preds = %46, %37, %32
  %62 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %63 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %68 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %75 = call i32 @p2p_dbg(%struct.p2p_data* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %77 = load i32, i32* @P2P_CONNECT_LISTEN, align 4
  %78 = call i32 @p2p_set_state(%struct.p2p_data* %76, i32 %77)
  %79 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %80 = call i32 @p2p_set_timeout(%struct.p2p_data* %79, i32 0, i32 30000)
  br label %87

81:                                               ; preds = %66, %61
  %82 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %83 = load i32, i32* @P2P_CONNECT_LISTEN, align 4
  %84 = call i32 @p2p_set_state(%struct.p2p_data* %82, i32 %83)
  %85 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %86 = call i32 @p2p_listen_in_find(%struct.p2p_data* %85, i32 0)
  br label %87

87:                                               ; preds = %81, %73, %53, %27
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_connect_send(%struct.p2p_data*, %struct.TYPE_4__*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_listen_in_find(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
