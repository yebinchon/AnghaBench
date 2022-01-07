; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_psk.c_eap_psk_process_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_psk.c_eap_psk_process_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_psk_data = type { i64, i32, i32, i32*, i32, i32*, i32*, i32* }
%struct.eap_method_ret = type { i8*, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_psk_hdr_1 = type { i32*, i32 }
%struct.eap_psk_hdr_2 = type { i32*, i32*, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-PSK: in INIT state\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-PSK: Invalid first message length (%lu; expected %lu or more)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"EAP-PSK: Flags=0x%x\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-PSK: Unexpected T=%d (expected 0)\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"EAP-PSK: RAND_S\00", align 1
@EAP_PSK_RAND_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"EAP-PSK: Failed to allocate memory for ID_S (len=%lu)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EAP-PSK: ID_S\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"EAP-PSK: Failed to get random data\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"EAP-PSK: RAND_P\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"EAP-PSK: MAC_P\00", align 1
@EAP_PSK_MAC_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"EAP-PSK: ID_P\00", align 1
@PSK_MAC_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_psk_data*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_psk_process_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_psk_process_1(%struct.eap_psk_data* %0, %struct.eap_method_ret* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_psk_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_psk_hdr_1*, align 8
  %9 = alloca %struct.eap_psk_hdr_2*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.eap_psk_data* %0, %struct.eap_psk_data** %5, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %19 = load i32, i32* @EAP_TYPE_PSK, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32* @eap_hdr_validate(i32 %18, i32 %19, %struct.wpabuf* %20, i64* %14)
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = bitcast i32* %22 to %struct.eap_psk_hdr_1*
  store %struct.eap_psk_hdr_1* %23, %struct.eap_psk_hdr_1** %8, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %14, align 8
  %28 = icmp ult i64 %27, 16
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %3
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i64, i64* %14, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 16)
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %35 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

36:                                               ; preds = %26
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %39 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %43 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @EAP_PSK_FLAGS_GET_T(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %50 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @EAP_PSK_FLAGS_GET_T(i32 %51)
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @METHOD_DONE, align 4
  %55 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %56 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DECISION_FAIL, align 4
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

60:                                               ; preds = %36
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %63 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %66 = call i32 @wpa_hexdump(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %64, i32 %65)
  %67 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %68 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %71 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %74 = call i32 @os_memcpy(i32* %69, i32* %72, i32 %73)
  %75 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %76 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @os_free(i32* %77)
  %79 = load i64, i64* %14, align 8
  %80 = sub i64 %79, 16
  %81 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %82 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %84 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %83, i64 1
  %85 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %86 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32* @os_memdup(%struct.eap_psk_hdr_1* %84, i64 %87)
  %89 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %90 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  %91 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %92 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %60
  %96 = load i32, i32* @MSG_ERROR, align 4
  %97 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %98 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %99)
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %103 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

104:                                              ; preds = %60
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %107 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %110 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @wpa_hexdump_ascii(i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %108, i64 %111)
  %113 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %114 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %117 = call i64 @random_get_bytes(i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load i32, i32* @MSG_ERROR, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i8*, i8** @TRUE, align 8
  %123 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %124 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

125:                                              ; preds = %104
  %126 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %127 = load i32, i32* @EAP_TYPE_PSK, align 4
  %128 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %129 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add i64 32, %131
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %135 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %136 = call i32 @eap_get_id(%struct.wpabuf* %135)
  %137 = call %struct.wpabuf* @eap_msg_alloc(i32 %126, i32 %127, i32 %133, i32 %134, i32 %136)
  store %struct.wpabuf* %137, %struct.wpabuf** %10, align 8
  %138 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %139 = icmp eq %struct.wpabuf* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

141:                                              ; preds = %125
  %142 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %143 = call %struct.eap_psk_hdr_2* @wpabuf_put(%struct.wpabuf* %142, i32 32)
  store %struct.eap_psk_hdr_2* %143, %struct.eap_psk_hdr_2** %9, align 8
  %144 = call i32 @EAP_PSK_FLAGS_SET_T(i32 1)
  %145 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %146 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %148 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %151 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %154 = call i32 @os_memcpy(i32* %149, i32* %152, i32 %153)
  %155 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %156 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %159 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %162 = call i32 @os_memcpy(i32* %157, i32* %160, i32 %161)
  %163 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %164 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %165 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %168 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @wpabuf_put_data(%struct.wpabuf* %163, i32* %166, i32 %169)
  %171 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %172 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %176 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %174, %177
  %179 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %180 = mul nsw i32 2, %179
  %181 = sext i32 %180 to i64
  %182 = add i64 %178, %181
  store i64 %182, i64* %13, align 8
  %183 = load i64, i64* %13, align 8
  %184 = call i32* @os_malloc(i64 %183)
  store i32* %184, i32** %11, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %141
  %188 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %189 = call i32 @wpabuf_free(%struct.wpabuf* %188)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

190:                                              ; preds = %141
  %191 = load i32*, i32** %11, align 8
  %192 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %193 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %196 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @os_memcpy(i32* %191, i32* %194, i32 %197)
  %199 = load i32*, i32** %11, align 8
  %200 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %201 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  store i32* %204, i32** %12, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %207 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %210 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 @os_memcpy(i32* %205, i32* %208, i32 %212)
  %214 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %215 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  store i32* %218, i32** %12, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = load %struct.eap_psk_hdr_1*, %struct.eap_psk_hdr_1** %8, align 8
  %221 = getelementptr inbounds %struct.eap_psk_hdr_1, %struct.eap_psk_hdr_1* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %224 = call i32 @os_memcpy(i32* %219, i32* %222, i32 %223)
  %225 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %12, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %231 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %234 = call i32 @os_memcpy(i32* %229, i32* %232, i32 %233)
  %235 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %236 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = load i64, i64* %13, align 8
  %240 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %241 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i64 @omac1_aes_128(i32 %237, i32* %238, i64 %239, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %190
  %246 = load i32*, i32** %11, align 8
  %247 = call i32 @os_free(i32* %246)
  %248 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %249 = call i32 @wpabuf_free(%struct.wpabuf* %248)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %278

250:                                              ; preds = %190
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @os_free(i32* %251)
  %253 = load i32, i32* @MSG_DEBUG, align 4
  %254 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %255 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %258 = call i32 @wpa_hexdump(i32 %253, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %256, i32 %257)
  %259 = load i32, i32* @MSG_DEBUG, align 4
  %260 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %9, align 8
  %261 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @EAP_PSK_MAC_LEN, align 4
  %264 = call i32 @wpa_hexdump(i32 %259, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %262, i32 %263)
  %265 = load i32, i32* @MSG_DEBUG, align 4
  %266 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %267 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %270 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = call i32 @wpa_hexdump_ascii(i32 %265, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %268, i64 %272)
  %274 = load i32, i32* @PSK_MAC_SENT, align 4
  %275 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %276 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %277, %struct.wpabuf** %4, align 8
  br label %278

278:                                              ; preds = %250, %245, %187, %140, %119, %95, %47, %29
  %279 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %279
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @EAP_PSK_FLAGS_GET_T(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(%struct.eap_psk_hdr_1*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local %struct.eap_psk_hdr_2* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @EAP_PSK_FLAGS_SET_T(i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @omac1_aes_128(i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
