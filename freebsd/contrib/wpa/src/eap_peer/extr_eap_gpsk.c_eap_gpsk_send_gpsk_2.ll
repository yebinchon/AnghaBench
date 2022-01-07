; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_send_gpsk_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_send_gpsk_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_gpsk_data = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.eap_gpsk_csuite = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Sending Response/GPSK-2\00", align 1
@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_GPSK_OPCODE_GPSK_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"EAP-GPSK: ID_Peer\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-GPSK: Failed to get random data for RAND_Peer\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"EAP-GPSK: RAND_Peer\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Failed to derive keys\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"EAP-GPSK: Failed to derive Session-Id\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"EAP-GPSK: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_gpsk_data*, i32, i32*, i64)* @eap_gpsk_send_gpsk_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_send_gpsk_2(%struct.eap_gpsk_data* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.eap_gpsk_csuite*, align 8
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @eap_gpsk_mic_len(i32 %20, i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 3, %27
  %29 = add nsw i32 %28, 2
  %30 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %33, %35
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = add i64 %40, 8
  %42 = add i64 %41, 2
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %46 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.wpabuf* @eap_msg_alloc(i32 %45, i32 %46, i64 %47, i32 %48, i32 %49)
  store %struct.wpabuf* %50, %struct.wpabuf** %10, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %52 = icmp eq %struct.wpabuf* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %311

54:                                               ; preds = %4
  %55 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %56 = load i32, i32* @EAP_GPSK_OPCODE_GPSK_2, align 4
  %57 = call i32 @wpabuf_put_u8(%struct.wpabuf* %55, i32 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %59 = call i8* @wpabuf_put(%struct.wpabuf* %58, i64 0)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %14, align 8
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %63 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %66 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wpa_hexdump_ascii(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32 %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %70 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %71 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = call i32 @wpabuf_put_be16(%struct.wpabuf* %69, i64 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %76 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %77 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %76, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %80 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i32 @wpabuf_put_data(%struct.wpabuf* %75, i32* %78, i64 %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %85 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 @wpabuf_put_be16(%struct.wpabuf* %84, i64 %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %91 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %92 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %95 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @wpabuf_put_data(%struct.wpabuf* %90, i32* %93, i64 %97)
  %99 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %100 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %99, i32 0, i32 11
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %103 = call i64 @random_get_bytes(i32* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %54
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %109 = load i32, i32* @FAILURE, align 4
  %110 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %108, i32 %109)
  %111 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %112 = call i32 @wpabuf_free(%struct.wpabuf* %111)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %311

113:                                              ; preds = %54
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %116 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %115, i32 0, i32 11
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %119 = call i32 @wpa_hexdump(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %117, i32 %118)
  %120 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %121 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %122 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %121, i32 0, i32 11
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 @wpabuf_put_data(%struct.wpabuf* %120, i32* %123, i64 %125)
  %127 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %128 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %129 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %128, i32 0, i32 10
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 @wpabuf_put_data(%struct.wpabuf* %127, i32* %130, i64 %132)
  %134 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @wpabuf_put_be16(%struct.wpabuf* %134, i64 %135)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @wpabuf_put_data(%struct.wpabuf* %137, i32* %138, i64 %139)
  %141 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %142 = call i8* @wpabuf_put(%struct.wpabuf* %141, i64 8)
  %143 = bitcast i8* %142 to %struct.eap_gpsk_csuite*
  store %struct.eap_gpsk_csuite* %143, %struct.eap_gpsk_csuite** %15, align 8
  %144 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %15, align 8
  %145 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @WPA_PUT_BE32(i32 %146, i32 %149)
  %151 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %15, align 8
  %152 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %155 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @WPA_PUT_BE16(i32 %153, i32 %156)
  %158 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %159 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %162 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %161, i32 0, i32 12
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %165 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %168 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %171 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %170, i32 0, i32 11
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %174 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %173, i32 0, i32 10
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %177 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %176, i32 0, i32 9
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %180 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %184 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %183, i32 0, i32 8
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %187 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %191 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %190, i32 0, i32 17
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %194 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %193, i32 0, i32 16
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %197 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %200 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %199, i32 0, i32 5
  %201 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %202 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %201, i32 0, i32 15
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %205 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %204, i32 0, i32 14
  %206 = call i64 @eap_gpsk_derive_keys(i32 %160, i32 %163, i32 %166, i32 %169, i32* %172, i32* %175, i32* %178, i64 %182, i32* %185, i64 %189, i32 %192, i32 %195, i32 %198, i32* %200, i32 %203, i32* %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %113
  %209 = load i32, i32* @MSG_DEBUG, align 4
  %210 = call i32 @wpa_printf(i32 %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %211 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %212 = load i32, i32* @FAILURE, align 4
  %213 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %211, i32 %212)
  %214 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %215 = call i32 @wpabuf_free(%struct.wpabuf* %214)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %311

216:                                              ; preds = %113
  %217 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %218 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %217, i32 0, i32 13
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %221 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %220, i32 0, i32 12
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %224 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %227 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %230 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %229, i32 0, i32 11
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %233 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %232, i32 0, i32 10
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %236 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %235, i32 0, i32 9
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %239 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %243 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %246 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %250 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %251 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %250, i32 0, i32 7
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %254 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %253, i32 0, i32 2
  %255 = call i64 @eap_gpsk_derive_session_id(i32 %219, i32 %222, i32 %225, i32 %228, i32* %231, i32* %234, i32* %237, i64 %241, i32* %244, i64 %248, i32 %249, i32* %252, i32* %254)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %216
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = call i32 @wpa_printf(i32 %258, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %260 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %261 = load i32, i32* @FAILURE, align 4
  %262 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %260, i32 %261)
  %263 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %264 = call i32 @wpabuf_free(%struct.wpabuf* %263)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %311

265:                                              ; preds = %216
  %266 = load i32, i32* @MSG_DEBUG, align 4
  %267 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %268 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %271 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @wpa_hexdump(i32 %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* %269, i32 %272)
  %274 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %275 = call i32 @wpabuf_put_be16(%struct.wpabuf* %274, i64 0)
  %276 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %277 = load i64, i64* %12, align 8
  %278 = call i8* @wpabuf_put(%struct.wpabuf* %276, i64 %277)
  %279 = bitcast i8* %278 to i32*
  store i32* %279, i32** %13, align 8
  %280 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %281 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %284 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %287 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %290 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %14, align 8
  %293 = load i32*, i32** %13, align 8
  %294 = load i32*, i32** %14, align 8
  %295 = ptrtoint i32* %293 to i64
  %296 = ptrtoint i32* %294 to i64
  %297 = sub i64 %295, %296
  %298 = sdiv exact i64 %297, 4
  %299 = trunc i64 %298 to i32
  %300 = load i32*, i32** %13, align 8
  %301 = call i64 @eap_gpsk_compute_mic(i32 %282, i32 %285, i32 %288, i32 %291, i32* %292, i32 %299, i32* %300)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %265
  %304 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %305 = load i32, i32* @FAILURE, align 4
  %306 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %304, i32 %305)
  %307 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %308 = call i32 @wpabuf_free(%struct.wpabuf* %307)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %311

309:                                              ; preds = %265
  %310 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %310, %struct.wpabuf** %5, align 8
  br label %311

311:                                              ; preds = %309, %303, %257, %208, %105, %53
  %312 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %312
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_gpsk_mic_len(i32, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i32) #1

declare dso_local i64 @eap_gpsk_derive_keys(i32, i32, i32, i32, i32*, i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @eap_gpsk_derive_session_id(i32, i32, i32, i32, i32*, i32*, i32*, i64, i32*, i64, i32, i32*, i32*) #1

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
