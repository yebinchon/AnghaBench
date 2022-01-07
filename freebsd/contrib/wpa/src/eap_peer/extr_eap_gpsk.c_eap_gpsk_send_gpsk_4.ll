; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_send_gpsk_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_send_gpsk_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_gpsk_data = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Sending Response/GPSK-4\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_GPSK_OPCODE_GPSK_4 = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_gpsk_data*, i32)* @eap_gpsk_send_gpsk_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_send_gpsk_4(%struct.eap_gpsk_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_gpsk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %13 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %16 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @eap_gpsk_mic_len(i32 %14, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %20 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %21 = load i64, i64* %9, align 8
  %22 = add i64 3, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.wpabuf* @eap_msg_alloc(i32 %19, i32 %20, i32 %23, i32 %24, i32 %25)
  store %struct.wpabuf* %26, %struct.wpabuf** %6, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %28 = icmp eq %struct.wpabuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %32 = load i32, i32* @EAP_GPSK_OPCODE_GPSK_4, align 4
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %31, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = call i32* @wpabuf_put(%struct.wpabuf* %34, i64 0)
  store i32* %35, i32** %8, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %37 = call i32 @wpabuf_put_be16(%struct.wpabuf* %36, i32 0)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32* @wpabuf_put(%struct.wpabuf* %38, i64 %39)
  store i32* %40, i32** %7, align 8
  %41 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %42 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %45 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %48 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %51 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @eap_gpsk_compute_mic(i32 %43, i32 %46, i32 %49, i32 %52, i32* %53, i32 %60, i32* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %30
  %65 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %4, align 8
  %66 = load i32, i32* @FAILURE, align 4
  %67 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %65, i32 %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %69 = call i32 @wpabuf_free(%struct.wpabuf* %68)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %72

70:                                               ; preds = %30
  %71 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %71, %struct.wpabuf** %3, align 8
  br label %72

72:                                               ; preds = %70, %64, %29
  %73 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %73
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_gpsk_mic_len(i32, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
