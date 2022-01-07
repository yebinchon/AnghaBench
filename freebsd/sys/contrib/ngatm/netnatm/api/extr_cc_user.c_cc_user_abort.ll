; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32, i32 }
%struct.uni_ie_cause = type { i32 }
%struct.ccconn = type { %struct.uni_ie_cause* }

@USER_NULL = common dso_local global i32 0, align 4
@CONN_SIG_USER_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*, %struct.uni_ie_cause*)* @cc_user_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_user_abort(%struct.ccuser* %0, %struct.uni_ie_cause* %1) #0 {
  %3 = alloca %struct.ccuser*, align 8
  %4 = alloca %struct.uni_ie_cause*, align 8
  %5 = alloca %struct.ccconn*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %3, align 8
  store %struct.uni_ie_cause* %1, %struct.uni_ie_cause** %4, align 8
  %6 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %7 = load i32, i32* @USER_NULL, align 4
  %8 = call i32 @set_state(%struct.ccuser* %6, i32 %7)
  %9 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %10 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %15 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %14, i32 0, i32 0
  %16 = call %struct.ccconn* @TAILQ_FIRST(i32* %15)
  store %struct.ccconn* %16, %struct.ccconn** %5, align 8
  %17 = icmp ne %struct.ccconn* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %20 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %19, i32 0, i32 0
  %21 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %20, align 8
  %22 = call i32 @memset(%struct.uni_ie_cause* %21, i32 0, i32 8)
  %23 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %4, align 8
  %24 = icmp ne %struct.uni_ie_cause* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %27 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %26, i32 0, i32 0
  %28 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %27, align 8
  %29 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %28, i64 0
  %30 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %4, align 8
  %31 = bitcast %struct.uni_ie_cause* %29 to i8*
  %32 = bitcast %struct.uni_ie_cause* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %35 = call i32 @cc_conn_reset_acceptor(%struct.ccconn* %34)
  %36 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %37 = call i32 @cc_disconnect_from_user(%struct.ccconn* %36)
  %38 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %39 = load i32, i32* @CONN_SIG_USER_ABORT, align 4
  %40 = call i32 @cc_conn_sig(%struct.ccconn* %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %33, %13
  br label %42

42:                                               ; preds = %41, %2
  br label %43

43:                                               ; preds = %48, %42
  %44 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %45 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %44, i32 0, i32 0
  %46 = call %struct.ccconn* @TAILQ_FIRST(i32* %45)
  store %struct.ccconn* %46, %struct.ccconn** %5, align 8
  %47 = icmp ne %struct.ccconn* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %50 = call i32 @cc_disconnect_from_user(%struct.ccconn* %49)
  %51 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %52 = call i32 @cc_conn_dispatch(%struct.ccconn* %51)
  br label %43

53:                                               ; preds = %43
  %54 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %55 = call i32 @cc_user_reset(%struct.ccuser* %54)
  ret void
}

declare dso_local i32 @set_state(%struct.ccuser*, i32) #1

declare dso_local %struct.ccconn* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memset(%struct.uni_ie_cause*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cc_conn_reset_acceptor(%struct.ccconn*) #1

declare dso_local i32 @cc_disconnect_from_user(%struct.ccconn*) #1

declare dso_local i32 @cc_conn_sig(%struct.ccconn*, i32, i32*) #1

declare dso_local i32 @cc_conn_dispatch(%struct.ccconn*) #1

declare dso_local i32 @cc_user_reset(%struct.ccuser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
