; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_build_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_mschapv2_data = type { i32, i32, i8* }
%struct.eap_mschapv2_hdr = type { i32, i32, i32 }

@CHALLENGE_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EAP-MSCHAPV2: Failed to get random data\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-MSCHAPV2: Failed to allocate memory for request\00", align 1
@MSCHAPV2_OP_CHALLENGE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"EAP-MSCHAPV2: Challenge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_mschapv2_data*, i32)* @eap_mschapv2_build_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_build_challenge(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_mschapv2_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_mschapv2_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CHALLENGE_LEN, align 4
  %20 = call i64 @random_get_bytes(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @MSG_ERROR, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** @FAILURE, align 8
  %26 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %99

28:                                               ; preds = %15, %3
  %29 = load i32, i32* @CHALLENGE_LEN, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 13, %30
  %32 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %31, %35
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %38 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.wpabuf* @eap_msg_alloc(i32 %37, i32 %38, i64 %39, i32 %40, i32 %41)
  store %struct.wpabuf* %42, %struct.wpabuf** %8, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %44 = icmp eq %struct.wpabuf* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @FAILURE, align 8
  %49 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %99

51:                                               ; preds = %28
  %52 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %53 = call %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf* %52, i32 12)
  store %struct.eap_mschapv2_hdr* %53, %struct.eap_mschapv2_hdr** %9, align 8
  %54 = load i32, i32* @MSCHAPV2_OP_CHALLENGE, align 4
  %55 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %56 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %59 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @WPA_PUT_BE16(i32 %62, i64 %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %66 = load i32, i32* @CHALLENGE_LEN, align 4
  %67 = call i32 @wpabuf_put_u8(%struct.wpabuf* %65, i32 %66)
  %68 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %69 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %51
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %75 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CHALLENGE_LEN, align 4
  %78 = call i32 @wpabuf_put_data(%struct.wpabuf* %73, i32 %76, i32 %77)
  br label %83

79:                                               ; preds = %51
  %80 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %81 = load i32, i32* @CHALLENGE_LEN, align 4
  %82 = call %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* @MSG_MSGDUMP, align 4
  %85 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CHALLENGE_LEN, align 4
  %89 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %91 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %92 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %95 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wpabuf_put_data(%struct.wpabuf* %90, i32 %93, i32 %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %98, %struct.wpabuf** %4, align 8
  br label %99

99:                                               ; preds = %83, %45, %22
  %100 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %100
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local %struct.eap_mschapv2_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
