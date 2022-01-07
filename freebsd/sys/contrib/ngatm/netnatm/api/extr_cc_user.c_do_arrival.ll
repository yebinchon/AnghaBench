; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_do_arrival.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_do_arrival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32, i64 }
%struct.ccconn = type { i32 }

@USER_IN_ARRIVED = common dso_local global i32 0, align 4
@ATMOP_ARRIVAL_OF_INCOMING_CALL = common dso_local global i32 0, align 4
@CONN_SIG_ARRIVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*)* @do_arrival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_arrival(%struct.ccuser* %0) #0 {
  %2 = alloca %struct.ccuser*, align 8
  %3 = alloca %struct.ccconn*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %2, align 8
  %4 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %5 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %7 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %6, i32 0, i32 0
  %8 = call %struct.ccconn* @TAILQ_FIRST(i32* %7)
  store %struct.ccconn* %8, %struct.ccconn** %3, align 8
  %9 = icmp ne %struct.ccconn* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %12 = load i32, i32* @USER_IN_ARRIVED, align 4
  %13 = call i32 @set_state(%struct.ccuser* %11, i32 %12)
  %14 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %15 = load i32, i32* @ATMOP_ARRIVAL_OF_INCOMING_CALL, align 4
  %16 = call i32 @cc_user_send(%struct.ccuser* %14, i32 %15, i32* null, i32 0)
  %17 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %18 = load i32, i32* @CONN_SIG_ARRIVAL, align 4
  %19 = call i32 @cc_conn_sig(%struct.ccconn* %17, i32 %18, i32* null)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.ccconn* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @set_state(%struct.ccuser*, i32) #1

declare dso_local i32 @cc_user_send(%struct.ccuser*, i32, i32*, i32) #1

declare dso_local i32 @cc_conn_sig(%struct.ccconn*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
