; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_failure_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_failure_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32, i32 }
%struct.eap_mschapv2_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"E=691 R=0 C=00000000000000000000000000000000 V=3 M=FAILED\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-MSCHAPV2: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@MSCHAPV2_OP_FAILURE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Failure Request Message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, i32)* @eap_mschapv2_build_failure_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_build_failure_req(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_mschapv2_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_mschapv2_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = call i32 @os_strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = add i64 12, %14
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.wpabuf* @eap_msg_alloc(i32 %16, i32 %17, i64 %18, i32 %19, i32 %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %8, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %23 = icmp eq %struct.wpabuf* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @FAILURE, align 4
  %28 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = call %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf* %31, i32 12)
  store %struct.eap_mschapv2_hdr* %32, %struct.eap_mschapv2_hdr** %9, align 8
  %33 = load i32, i32* @MSCHAPV2_OP_FAILURE, align 4
  %34 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @WPA_PUT_BE16(i32 %43, i64 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @os_strlen(i8* %48)
  %50 = call i32 @wpabuf_put_data(%struct.wpabuf* %46, i8* %47, i32 %49)
  %51 = load i32, i32* @MSG_MSGDUMP, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @os_strlen(i8* %54)
  %56 = call i32 @wpa_hexdump_ascii(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %53, i32 %55)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %57, %struct.wpabuf** %4, align 8
  br label %58

58:                                               ; preds = %30, %24
  %59 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %59
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
