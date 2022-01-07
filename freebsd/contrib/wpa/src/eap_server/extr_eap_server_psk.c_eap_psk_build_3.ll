; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_build_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_build_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32* }
%struct.eap_psk_data = type { i32*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.eap_psk_hdr_3 = type { i32*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-PSK: PSK-3 (sending)\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-PSK: Failed to allocate memory request\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_PSK_RAND_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"EAP-PSK: TEK\00", align 1
@EAP_PSK_TEK_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"EAP-PSK: MSK\00", align 1
@EAP_MSK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"EAP-PSK: EMSK\00", align 1
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@EAP_PSK_R_FLAG_DONE_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"EAP-PSK: PCHANNEL (plaintext)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"EAP-PSK: PCHANNEL (encrypted)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_psk_data*, i32)* @eap_psk_build_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_psk_build_3(%struct.eap_sm* %0, %struct.eap_psk_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_psk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_psk_hdr_3*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_psk_data* %1, %struct.eap_psk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = load i32, i32* @EAP_TYPE_PSK, align 4
  %18 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.wpabuf* @eap_msg_alloc(i32 %16, i32 %17, i32 37, i32 %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %8, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** @FAILURE, align 8
  %27 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %172

29:                                               ; preds = %3
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = call i8* @wpabuf_put(%struct.wpabuf* %30, i32 16)
  %32 = bitcast i8* %31 to %struct.eap_psk_hdr_3*
  store %struct.eap_psk_hdr_3* %32, %struct.eap_psk_hdr_3** %9, align 8
  %33 = call i32 @EAP_PSK_FLAGS_SET_T(i32 2)
  %34 = load %struct.eap_psk_hdr_3*, %struct.eap_psk_hdr_3** %9, align 8
  %35 = getelementptr inbounds %struct.eap_psk_hdr_3, %struct.eap_psk_hdr_3* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.eap_psk_hdr_3*, %struct.eap_psk_hdr_3** %9, align 8
  %37 = getelementptr inbounds %struct.eap_psk_hdr_3, %struct.eap_psk_hdr_3* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %43 = call i32 @os_memcpy(i32* %38, i32* %41, i32 %42)
  %44 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32* @os_malloc(i64 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  br label %166

55:                                               ; preds = %29
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %61 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @os_memcpy(i32* %56, i32* %59, i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %66 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %71 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %74 = call i32 @os_memcpy(i32* %69, i32* %72, i32 %73)
  %75 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %76 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.eap_psk_hdr_3*, %struct.eap_psk_hdr_3** %9, align 8
  %81 = getelementptr inbounds %struct.eap_psk_hdr_3, %struct.eap_psk_hdr_3* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @omac1_aes_128(i32 %77, i32* %78, i64 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %55
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @os_free(i32* %86)
  br label %166

88:                                               ; preds = %55
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @os_free(i32* %89)
  %91 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %92 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %95 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %98 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %104 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @eap_psk_derive_keys(i32 %93, i32* %96, i32 %99, i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  br label %166

109:                                              ; preds = %88
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %112 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @EAP_PSK_TEK_LEN, align 4
  %115 = call i32 @wpa_hexdump_key(i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @EAP_MSK_LEN, align 4
  %121 = call i32 @wpa_hexdump_key(i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %124 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @EAP_EMSK_LEN, align 4
  %127 = call i32 @wpa_hexdump_key(i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %126)
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %129 = call i32 @os_memset(i32* %128, i32 0, i32 64)
  %130 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %131 = call i8* @wpabuf_put(%struct.wpabuf* %130, i32 21)
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %11, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %135 = getelementptr inbounds i32, i32* %134, i64 12
  %136 = call i32 @os_memcpy(i32* %133, i32* %135, i32 4)
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = call i32 @os_memset(i32* %138, i32 0, i32 16)
  %140 = load i32, i32* @EAP_PSK_R_FLAG_DONE_SUCCESS, align 4
  %141 = shl i32 %140, 6
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 20
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @wpa_hexdump(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32* %145, i32 21)
  %147 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %151 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %152 = call i32 @wpabuf_head(%struct.wpabuf* %151)
  %153 = load i32*, i32** %11, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = call i64 @aes_128_eax_encrypt(i32 %149, i32* %150, i32 64, i32 %152, i32 22, i32* %155, i32 1, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %109
  br label %166

161:                                              ; preds = %109
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @wpa_hexdump(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %163, i32 21)
  %165 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %165, %struct.wpabuf** %4, align 8
  br label %172

166:                                              ; preds = %160, %108, %85, %54
  %167 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %168 = call i32 @wpabuf_free(%struct.wpabuf* %167)
  %169 = load i8*, i8** @FAILURE, align 8
  %170 = load %struct.eap_psk_data*, %struct.eap_psk_data** %6, align 8
  %171 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %172

172:                                              ; preds = %166, %161, %23
  %173 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %173
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @EAP_PSK_FLAGS_SET_T(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @omac1_aes_128(i32, i32*, i64, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @eap_psk_derive_keys(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @aes_128_eax_encrypt(i32, i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
