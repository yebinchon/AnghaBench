; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_success_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_success_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32, i32, i32 }
%struct.eap_mschapv2_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-MSCHAPV2: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@MSCHAPV2_OP_SUCCESS = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Success Request Message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, i32)* @eap_mschapv2_build_success_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_build_success_req(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_mschapv2_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_mschapv2_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = call i32 @os_strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 25, %15
  store i64 %16, i64* %12, align 8
  %17 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %18 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.wpabuf* @eap_msg_alloc(i32 %17, i32 %18, i64 %19, i32 %20, i32 %21)
  store %struct.wpabuf* %22, %struct.wpabuf** %8, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %24 = icmp eq %struct.wpabuf* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @FAILURE, align 4
  %29 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %33 = call %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf* %32, i32 12)
  store %struct.eap_mschapv2_hdr* %33, %struct.eap_mschapv2_hdr** %9, align 8
  %34 = load i32, i32* @MSCHAPV2_OP_SUCCESS, align 4
  %35 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %36 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %38 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @WPA_PUT_BE16(i32 %44, i64 %45)
  %47 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %47, i64 1
  %49 = bitcast %struct.eap_mschapv2_hdr* %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %51 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i8 signext 83)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %52, i8 signext 61)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = call %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf* %54, i32 8)
  %56 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %57 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wpa_snprintf_hex_uppercase(%struct.eap_mschapv2_hdr* %55, i32 9, i32 %58, i32 4)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %61 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i8 signext 32)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = call i32 @wpabuf_put_u8(%struct.wpabuf* %62, i8 signext 77)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %65 = call i32 @wpabuf_put_u8(%struct.wpabuf* %64, i8 signext 61)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @os_strlen(i8* %68)
  %70 = call i32 @wpabuf_put_data(%struct.wpabuf* %66, i8* %67, i32 %69)
  %71 = load i32, i32* @MSG_MSGDUMP, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %73, 12
  %75 = call i32 @wpa_hexdump_ascii(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %72, i64 %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  br label %77

77:                                               ; preds = %31, %25
  %78 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %78
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpa_snprintf_hex_uppercase(%struct.eap_mschapv2_hdr*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
