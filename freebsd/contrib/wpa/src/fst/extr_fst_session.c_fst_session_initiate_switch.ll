; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_initiate_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_initiate_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.fst_ack_req = type { i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot initiate switch due to wrong setup state (%d)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"initiating FST switch: %s => %s\00", align 1
@FST_ACTION_ACK_REQUEST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"FST Ack Request sent\00", align 1
@FST_SESSION_STATE_TRANSITION_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot send FST Ack Request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_session_initiate_switch(%struct.fst_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fst_session*, align 8
  %4 = alloca %struct.fst_ack_req, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fst_session* %0, %struct.fst_session** %3, align 8
  %7 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %8 = call i32 @fst_session_is_ready(%struct.fst_session* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %14 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.fst_session*, i32, i8*, i32, ...) @fst_printf_session(%struct.fst_session* %11, i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %19 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fst_group_assign_dialog_token(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %23 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @WPA_ASSERT(i32 %27)
  %29 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %30 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @WPA_ASSERT(i32 %34)
  %36 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %39 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @fst_iface_get_name(i32* %41)
  %43 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %44 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @fst_iface_get_name(i32* %46)
  %48 = call i32 (%struct.fst_session*, i32, i8*, i32, ...) @fst_printf_session(%struct.fst_session* %36, i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %47)
  %49 = call i32 @os_memset(%struct.fst_ack_req* %4, i32 0, i32 12)
  %50 = load i32, i32* @FST_ACTION_ACK_REQUEST, align 4
  %51 = getelementptr inbounds %struct.fst_ack_req, %struct.fst_ack_req* %4, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds %struct.fst_ack_req, %struct.fst_ack_req* %4, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %55 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @host_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.fst_ack_req, %struct.fst_ack_req* %4, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @fst_session_send_action(%struct.fst_session* %60, i32 %61, %struct.fst_ack_req* %4, i32 12, i32* null)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %17
  %66 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @fst_printf_sframe(%struct.fst_session* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %71 = load i32, i32* @FST_SESSION_STATE_TRANSITION_DONE, align 4
  %72 = call i32 @fst_session_set_state(%struct.fst_session* %70, i32 %71, i32* null)
  %73 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %74 = call i32 @fst_session_stt_arm(%struct.fst_session* %73)
  br label %80

75:                                               ; preds = %17
  %76 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = load i32, i32* @MSG_ERROR, align 4
  %79 = call i32 @fst_printf_sframe(%struct.fst_session* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %10
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @fst_session_is_ready(%struct.fst_session*) #1

declare dso_local i32 @fst_printf_session(%struct.fst_session*, i32, i8*, i32, ...) #1

declare dso_local i32 @fst_group_assign_dialog_token(i32) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @fst_iface_get_name(i32*) #1

declare dso_local i32 @os_memset(%struct.fst_ack_req*, i32, i32) #1

declare dso_local i32 @host_to_le32(i32) #1

declare dso_local i32 @fst_session_send_action(%struct.fst_session*, i32, %struct.fst_ack_req*, i32, i32*) #1

declare dso_local i32 @fst_printf_sframe(%struct.fst_session*, i32, i32, i8*) #1

declare dso_local i32 @fst_session_set_state(%struct.fst_session*, i32, i32*) #1

declare dso_local i32 @fst_session_stt_arm(%struct.fst_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
