; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_basic_auth_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_basic_auth_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Basic-Password-Auth-Req prompt\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"EAP-TEAP: No username/password suitable for Basic-Password-Auth\00", align 1
@TEAP_TLV_BASIC_PASSWORD_AUTH_REQ = common dso_local global i32 0, align 4
@TEAP_TLV_BASIC_PASSWORD_AUTH_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-TEAP: Basic-Password-Auth-Resp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, i32*, i64)* @eap_teap_process_basic_auth_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_process_basic_auth_req(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_teap_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @wpa_hexdump_ascii(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %17, i64 %18)
  %20 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %21 = call i32* @eap_get_config_identity(%struct.eap_sm* %20, i64* %12)
  store i32* %21, i32** %10, align 8
  %22 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %23 = call i32* @eap_get_config_password(%struct.eap_sm* %22, i64* %13)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %30, 255
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %33, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %29, %26, %4
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @TEAP_TLV_BASIC_PASSWORD_AUTH_REQ, align 4
  %39 = call %struct.wpabuf* @eap_teap_tlv_nak(i32 0, i32 %38)
  store %struct.wpabuf* %39, %struct.wpabuf** %5, align 8
  br label %78

40:                                               ; preds = %32
  %41 = load i64, i64* %12, align 8
  %42 = add i64 1, %41
  %43 = add i64 %42, 1
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.wpabuf* @wpabuf_alloc(i32 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %15, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %51 = icmp ne %struct.wpabuf* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %78

53:                                               ; preds = %40
  %54 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %55 = load i32, i32* @TEAP_TLV_BASIC_PASSWORD_AUTH_RESP, align 4
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @eap_teap_put_tlv_hdr(%struct.wpabuf* %54, i32 %55, i64 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @wpabuf_put_u8(%struct.wpabuf* %58, i64 %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @wpabuf_put_data(%struct.wpabuf* %61, i32* %62, i64 %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @wpabuf_put_u8(%struct.wpabuf* %65, i64 %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @wpabuf_put_data(%struct.wpabuf* %68, i32* %69, i64 %70)
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %74 = call i32 @wpa_hexdump_buf_key(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %73)
  %75 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %76 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %77, %struct.wpabuf** %5, align 8
  br label %78

78:                                               ; preds = %53, %52, %35
  %79 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %79
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_nak(i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @eap_teap_put_tlv_hdr(%struct.wpabuf*, i32, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
