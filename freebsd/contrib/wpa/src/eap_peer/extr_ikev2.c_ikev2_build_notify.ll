; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_responder_data = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LAST_MSG_SA_AUTH = common dso_local global i64 0, align 8
@IKE_SA_AUTH = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_ENCRYPTED = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NOTIFICATION = common dso_local global i32 0, align 4
@IKEV2_FAILED = common dso_local global i32 0, align 4
@IKE_SA_INIT = common dso_local global i32 0, align 4
@SA_INIT = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"IKEV2: Sending message (Notification)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.ikev2_responder_data*)* @ikev2_build_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ikev2_build_notify(%struct.ikev2_responder_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_responder_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %3, align 8
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 1004)
  store %struct.wpabuf* %6, %struct.wpabuf** %4, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %12 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LAST_MSG_SA_AUTH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %17, %struct.wpabuf** %5, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = call i32 @wpabuf_free(%struct.wpabuf* %21)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

23:                                               ; preds = %16
  %24 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load i32, i32* @IKE_SA_AUTH, align 4
  %27 = load i32, i32* @IKEV2_PAYLOAD_ENCRYPTED, align 4
  %28 = call i32 @ikev2_build_hdr(%struct.ikev2_responder_data* %24, %struct.wpabuf* %25, i32 %26, i32 %27, i32 1)
  %29 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %31 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %32 = call i64 @ikev2_build_notification(%struct.ikev2_responder_data* %29, %struct.wpabuf* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %23
  %35 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %36 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %40 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %44 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %43, i32 0, i32 2
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = load i32, i32* @IKEV2_PAYLOAD_NOTIFICATION, align 4
  %48 = call i64 @ikev2_build_encrypted(i32 %38, i32 %42, i32* %44, i32 0, %struct.wpabuf* %45, %struct.wpabuf* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34, %23
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i32 @wpabuf_free(%struct.wpabuf* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = call i32 @wpabuf_free(%struct.wpabuf* %53)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

55:                                               ; preds = %34
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = call i32 @wpabuf_free(%struct.wpabuf* %56)
  %58 = load i32, i32* @IKEV2_FAILED, align 4
  %59 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %60 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %79

61:                                               ; preds = %10
  %62 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = load i32, i32* @IKE_SA_INIT, align 4
  %65 = load i32, i32* @IKEV2_PAYLOAD_NOTIFICATION, align 4
  %66 = call i32 @ikev2_build_hdr(%struct.ikev2_responder_data* %62, %struct.wpabuf* %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %70 = call i64 @ikev2_build_notification(%struct.ikev2_responder_data* %67, %struct.wpabuf* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %74 = call i32 @wpabuf_free(%struct.wpabuf* %73)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

75:                                               ; preds = %61
  %76 = load i32, i32* @SA_INIT, align 4
  %77 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %78 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %55
  %80 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %81 = call i32 @ikev2_update_hdr(%struct.wpabuf* %80)
  %82 = load i32, i32* @MSG_MSGDUMP, align 4
  %83 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %84 = call i32 @wpa_hexdump_buf(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %83)
  %85 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %85, %struct.wpabuf** %2, align 8
  br label %86

86:                                               ; preds = %79, %72, %50, %20, %9
  %87 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %87
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_build_hdr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i64 @ikev2_build_notification(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_encrypted(i32, i32, i32*, i32, %struct.wpabuf*, %struct.wpabuf*, i32) #1

declare dso_local i32 @ikev2_update_hdr(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
