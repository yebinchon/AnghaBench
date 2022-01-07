; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_connect_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_connect_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@VCHIQ_SRVSTATE_HIDDEN = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_LISTENING = common dso_local global i32 0, align 4
@VCHIQ_CONNSTATE_DISCONNECTED = common dso_local global i64 0, align 8
@VCHIQ_MSG_CONNECT = common dso_local global i32 0, align 4
@QMFLAGS_IS_BLOCKING = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_CONNSTATE_CONNECTING = common dso_local global i64 0, align 8
@VCHIQ_CONNSTATE_CONNECTED = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_connect_internal(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_11__* @next_service_by_instance(%struct.TYPE_10__* %9, i32 %10, i32* %7)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VCHIQ_SRVSTATE_HIDDEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i32, i32* @VCHIQ_SRVSTATE_LISTENING, align 4
  %22 = call i32 @vchiq_set_service_state(%struct.TYPE_11__* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = call i32 @unlock_service(%struct.TYPE_11__* %24)
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VCHIQ_CONNSTATE_DISCONNECTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i32, i32* @VCHIQ_MSG_CONNECT, align 4
  %35 = call i32 @VCHIQ_MAKE_MSG(i32 %34, i32 0, i32 0)
  %36 = load i32, i32* @QMFLAGS_IS_BLOCKING, align 4
  %37 = call i64 @queue_message(%struct.TYPE_10__* %33, i32* null, i32 %35, i32* null, i32 0, i32 0, i32 %36)
  %38 = load i64, i64* @VCHIQ_RETRY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %41, i64* %3, align 8
  br label %68

42:                                               ; preds = %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i64, i64* @VCHIQ_CONNSTATE_CONNECTING, align 8
  %45 = call i32 @vchiq_set_conn_state(%struct.TYPE_10__* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %26
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VCHIQ_CONNSTATE_CONNECTING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = call i64 @down_interruptible(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %58, i64* %3, align 8
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load i64, i64* @VCHIQ_CONNSTATE_CONNECTED, align 8
  %62 = call i32 @vchiq_set_conn_state(%struct.TYPE_10__* %60, i64 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = call i32 @up(i32* %64)
  br label %66

66:                                               ; preds = %59, %46
  %67 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %57, %40
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_11__* @next_service_by_instance(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @unlock_service(%struct.TYPE_11__*) #1

declare dso_local i64 @queue_message(%struct.TYPE_10__*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i32 @vchiq_set_conn_state(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
