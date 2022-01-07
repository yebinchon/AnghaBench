; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_phase2_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_phase2_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpabuf* (%struct.eap_sm*, i32, i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Initiate Basic-Password-Auth\00", align 1
@TEAP_TLV_BASIC_PASSWORD_AUTH_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-TEAP: Initiate inner EAP method\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Phase 2 method not initialized\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-TEAP: Phase 2 EAP-Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, i32)* @eap_teap_build_phase2_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_build_phase2_req(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.wpabuf* @wpabuf_alloc(i32 4)
  store %struct.wpabuf* %16, %struct.wpabuf** %8, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %18 = icmp ne %struct.wpabuf* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = load i32, i32* @TEAP_TLV_BASIC_PASSWORD_AUTH_REQ, align 4
  %23 = call i32 @eap_teap_put_tlv_hdr(%struct.wpabuf* %21, i32 %22, i32 0)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %24, %struct.wpabuf** %4, align 8
  br label %56

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

35:                                               ; preds = %25
  %36 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.wpabuf* (%struct.eap_sm*, i32, i32)*, %struct.wpabuf* (%struct.eap_sm*, i32, i32)** %39, align 8
  %41 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %42 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.wpabuf* %40(%struct.eap_sm* %41, i32 %44, i32 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %8, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %48 = icmp ne %struct.wpabuf* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

50:                                               ; preds = %35
  %51 = load i32, i32* @MSG_MSGDUMP, align 4
  %52 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %53 = call i32 @wpa_hexdump_buf_key(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = call %struct.wpabuf* @eap_teap_tlv_eap_payload(%struct.wpabuf* %54)
  store %struct.wpabuf* %55, %struct.wpabuf** %4, align 8
  br label %56

56:                                               ; preds = %50, %49, %32, %20, %19
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %57
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @eap_teap_put_tlv_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_eap_payload(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
