; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32, i32 }
%struct.ccconn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.atm_p2p_call_active = type { i32 }
%struct.atm_p2mp_call_active = type { i32 }

@USER_ACTIVE = common dso_local global i32 0, align 4
@UNI_BEARER_P2P = common dso_local global i64 0, align 8
@USER_P2P = common dso_local global i32 0, align 4
@ATMOP_P2P_CALL_ACTIVE = common dso_local global i32 0, align 4
@USER_ROOT = common dso_local global i32 0, align 4
@ATMOP_P2MP_CALL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*)* @cc_user_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_user_active(%struct.ccuser* %0) #0 {
  %2 = alloca %struct.ccuser*, align 8
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca %struct.atm_p2p_call_active*, align 8
  %5 = alloca %struct.atm_p2mp_call_active*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %2, align 8
  %6 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %7 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %6, i32 0, i32 1
  %8 = call %struct.ccconn* @TAILQ_FIRST(i32* %7)
  store %struct.ccconn* %8, %struct.ccconn** %3, align 8
  %9 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %10 = load i32, i32* @USER_ACTIVE, align 4
  %11 = call i32 @set_state(%struct.ccuser* %9, i32 %10)
  %12 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %13 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UNI_BEARER_P2P, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load i32, i32* @USER_P2P, align 4
  %20 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %21 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call %struct.atm_p2p_call_active* @CCZALLOC(i32 4)
  store %struct.atm_p2p_call_active* %22, %struct.atm_p2p_call_active** %4, align 8
  %23 = load %struct.atm_p2p_call_active*, %struct.atm_p2p_call_active** %4, align 8
  %24 = icmp eq %struct.atm_p2p_call_active* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %61

26:                                               ; preds = %18
  %27 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %28 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.atm_p2p_call_active*, %struct.atm_p2p_call_active** %4, align 8
  %31 = getelementptr inbounds %struct.atm_p2p_call_active, %struct.atm_p2p_call_active* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %33 = load i32, i32* @ATMOP_P2P_CALL_ACTIVE, align 4
  %34 = load %struct.atm_p2p_call_active*, %struct.atm_p2p_call_active** %4, align 8
  %35 = call i32 @cc_user_send(%struct.ccuser* %32, i32 %33, %struct.atm_p2p_call_active* %34, i32 4)
  %36 = load %struct.atm_p2p_call_active*, %struct.atm_p2p_call_active** %4, align 8
  %37 = call i32 @CCFREE(%struct.atm_p2p_call_active* %36)
  br label %61

38:                                               ; preds = %1
  %39 = load i32, i32* @USER_ROOT, align 4
  %40 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %41 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = call %struct.atm_p2p_call_active* @CCZALLOC(i32 4)
  %43 = bitcast %struct.atm_p2p_call_active* %42 to %struct.atm_p2mp_call_active*
  store %struct.atm_p2mp_call_active* %43, %struct.atm_p2mp_call_active** %5, align 8
  %44 = load %struct.atm_p2mp_call_active*, %struct.atm_p2mp_call_active** %5, align 8
  %45 = icmp eq %struct.atm_p2mp_call_active* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %49 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.atm_p2mp_call_active*, %struct.atm_p2mp_call_active** %5, align 8
  %52 = getelementptr inbounds %struct.atm_p2mp_call_active, %struct.atm_p2mp_call_active* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %54 = load i32, i32* @ATMOP_P2MP_CALL_ACTIVE, align 4
  %55 = load %struct.atm_p2mp_call_active*, %struct.atm_p2mp_call_active** %5, align 8
  %56 = bitcast %struct.atm_p2mp_call_active* %55 to %struct.atm_p2p_call_active*
  %57 = call i32 @cc_user_send(%struct.ccuser* %53, i32 %54, %struct.atm_p2p_call_active* %56, i32 4)
  %58 = load %struct.atm_p2mp_call_active*, %struct.atm_p2mp_call_active** %5, align 8
  %59 = bitcast %struct.atm_p2mp_call_active* %58 to %struct.atm_p2p_call_active*
  %60 = call i32 @CCFREE(%struct.atm_p2p_call_active* %59)
  br label %61

61:                                               ; preds = %25, %46, %47, %26
  ret void
}

declare dso_local %struct.ccconn* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @set_state(%struct.ccuser*, i32) #1

declare dso_local %struct.atm_p2p_call_active* @CCZALLOC(i32) #1

declare dso_local i32 @cc_user_send(%struct.ccuser*, i32, %struct.atm_p2p_call_active*, i32) #1

declare dso_local i32 @CCFREE(%struct.atm_p2p_call_active*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
