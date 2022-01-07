; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tlv_eap_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tlv_eap_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-TEAP: Add EAP-Payload TLV\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"EAP-TEAP: Failed to allocate memory for TLV encapsulation\00", align 1
@TEAP_TLV_MANDATORY = common dso_local global i32 0, align 4
@TEAP_TLV_EAP_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_teap_tlv_eap_payload(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = icmp ne %struct.wpabuf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %32

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = call i64 @wpabuf_len(%struct.wpabuf* %11)
  %13 = add i64 4, %12
  %14 = call %struct.wpabuf* @wpabuf_alloc(i64 %13)
  store %struct.wpabuf* %14, %struct.wpabuf** %4, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = icmp ne %struct.wpabuf* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %21 = call i32 @wpabuf_free(%struct.wpabuf* %20)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %32

22:                                               ; preds = %8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %25 = load i32, i32* @TEAP_TLV_EAP_PAYLOAD, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %28 = call i32 @eap_teap_put_tlv_buf(%struct.wpabuf* %23, i32 %26, %struct.wpabuf* %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %30 = call i32 @wpabuf_free(%struct.wpabuf* %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %31, %struct.wpabuf** %2, align 8
  br label %32

32:                                               ; preds = %22, %17, %7
  %33 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %33
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_teap_put_tlv_buf(%struct.wpabuf*, i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
