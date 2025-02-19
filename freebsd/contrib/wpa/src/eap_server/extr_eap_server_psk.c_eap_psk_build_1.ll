; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_build_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_build_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64, i32 }
%struct.eap_psk_data = type { i32, i8* }
%struct.eap_psk_hdr_1 = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-PSK: PSK-1 (sending)\00", align 1
@EAP_PSK_RAND_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-PSK: Failed to get random data\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-PSK: RAND_S (server rand)\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"EAP-PSK: Failed to allocate memory request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_psk_data*, i32)* @eap_psk_build_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_psk_build_1(%struct.eap_sm* %0, %struct.eap_psk_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_psk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_psk_hdr_1*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_psk_data* %1, %struct.eap_psk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %16 = call i64 @random_get_bytes(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @FAILURE, align 8
  %22 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %71

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %30 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %32 = load i32, i32* @EAP_TYPE_PSK, align 4
  %33 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %34 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 8, %35
  %37 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.wpabuf* @eap_msg_alloc(i32 %31, i32 %32, i64 %36, i32 %37, i32 %38)
  store %struct.wpabuf* %39, %struct.wpabuf** %8, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %41 = icmp eq %struct.wpabuf* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** @FAILURE, align 8
  %46 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %71

48:                                               ; preds = %24
  %49 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %50 = call %struct.eap_psk_hdr_1* @wpabuf_put(%struct.wpabuf* %49, i32 8)
  store %struct.eap_psk_hdr_1* %50, %struct.eap_psk_hdr_1** %9, align 8
  %51 = call i32 @EAP_PSK_FLAGS_SET_T(i32 0)
  %52 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %9, align 8
  %53 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %9, align 8
  %55 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %61 = call i32 @os_memcpy(i32 %56, i32 %59, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %64 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %67 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @wpabuf_put_data(%struct.wpabuf* %62, i32 %65, i64 %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %70, %struct.wpabuf** %4, align 8
  br label %71

71:                                               ; preds = %48, %42, %18
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %72
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local %struct.eap_psk_hdr_1* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @EAP_PSK_FLAGS_SET_T(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
