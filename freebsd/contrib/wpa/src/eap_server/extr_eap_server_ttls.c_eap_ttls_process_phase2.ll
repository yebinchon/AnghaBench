; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8*, i32, i32 }
%struct.eap_ttls_data = type { i64, %struct.TYPE_2__, %struct.wpabuf* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_ttls_avp = type { i32, i8*, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32, i32, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-TTLS: received %lu bytes encrypted data for Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"EAP-TTLS: Pending Phase 2 EAP response - skip decryption and use old data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-TTLS: Failed to decrypt Phase 2 data\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: Decrypted Phase 2 EAP\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-TTLS: Failed to parse AVPs\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"TTLS-User-Name '%s'\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"EAP-TTLS: Phase2 Identity not found in the user database\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.wpabuf*)* @eap_ttls_process_phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_ttls_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_ttls_avp, align 8
  %9 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %12 = call i64 @wpabuf_len(%struct.wpabuf* %11)
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %14, i32 0, i32 2
  %16 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %17 = icmp ne %struct.wpabuf* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %22 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %23 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %23, i32 0, i32 2
  %25 = load %struct.wpabuf*, %struct.wpabuf** %24, align 8
  %26 = call i8* @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %28 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %27, i32 0, i32 2
  %29 = load %struct.wpabuf*, %struct.wpabuf** %28, align 8
  %30 = call i64 @wpabuf_len(%struct.wpabuf* %29)
  %31 = call i32 @eap_ttls_process_phase2_eap(%struct.eap_sm* %21, %struct.eap_ttls_data* %22, i8* %26, i64 %30)
  %32 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %32, i32 0, i32 2
  %34 = load %struct.wpabuf*, %struct.wpabuf** %33, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  %36 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %36, i32 0, i32 2
  store %struct.wpabuf* null, %struct.wpabuf** %37, align 8
  br label %221

38:                                               ; preds = %3
  %39 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %47 = call %struct.wpabuf* @tls_connection_decrypt(i32 %41, i32 %45, %struct.wpabuf* %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %7, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %49 = icmp eq %struct.wpabuf* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %54 = load i32, i32* @FAILURE, align 4
  %55 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %53, i32 %54)
  br label %221

56:                                               ; preds = %38
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %59 = call i32 @wpa_hexdump_buf_key(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %61 = call i64 @eap_ttls_avp_parse(%struct.wpabuf* %60, %struct.eap_ttls_avp* %8)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %67 = call i32 @wpabuf_free(%struct.wpabuf* %66)
  %68 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %69 = load i32, i32* @FAILURE, align 4
  %70 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %68, i32 %69)
  br label %221

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %138

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 4
  %79 = add nsw i32 %78, 1
  %80 = call i8* @os_malloc(i32 %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 4
  %88 = add nsw i32 %87, 1
  %89 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 15
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @printf_encode(i8* %84, i32 %88, i64 %90, i32 %92)
  %94 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @eap_log_msg(%struct.eap_sm* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @os_free(i8* %97)
  br label %99

99:                                               ; preds = %83, %75
  %100 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %101 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @os_free(i8* %102)
  %104 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 15
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @os_memdup(i64 %105, i32 %107)
  %109 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %110 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %112 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %99
  %116 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %117 = load i32, i32* @FAILURE, align 4
  %118 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %116, i32 %117)
  br label %215

119:                                              ; preds = %99
  %120 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %125 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 15
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @eap_user_get(%struct.eap_sm* %124, i64 %126, i32 %128, i32 1)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %119
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %135 = load i32, i32* @FAILURE, align 4
  %136 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %134, i32 %135)
  br label %215

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %71
  %139 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %144 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %145 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 14
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @eap_ttls_process_phase2_eap(%struct.eap_sm* %143, %struct.eap_ttls_data* %144, i8* %146, i64 %148)
  br label %214

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 13
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %156 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %157 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 13
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 12
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @eap_ttls_process_phase2_pap(%struct.eap_sm* %155, %struct.eap_ttls_data* %156, i64 %158, i32 %160)
  br label %213

162:                                              ; preds = %150
  %163 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %168 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %169 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @eap_ttls_process_phase2_chap(%struct.eap_sm* %167, %struct.eap_ttls_data* %168, i32 %170, i32 %172, i64 %174, i32 %176)
  br label %212

178:                                              ; preds = %162
  %179 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %184 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %185 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @eap_ttls_process_phase2_mschap(%struct.eap_sm* %183, %struct.eap_ttls_data* %184, i32 %186, i32 %188, i64 %190, i32 %192)
  br label %211

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %200 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %201 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @eap_ttls_process_phase2_mschapv2(%struct.eap_sm* %199, %struct.eap_ttls_data* %200, i32 %202, i32 %204, i64 %206, i32 %208)
  br label %210

210:                                              ; preds = %198, %194
  br label %211

211:                                              ; preds = %210, %182
  br label %212

212:                                              ; preds = %211, %166
  br label %213

213:                                              ; preds = %212, %154
  br label %214

214:                                              ; preds = %213, %142
  br label %215

215:                                              ; preds = %214, %131, %115
  %216 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %217 = call i32 @wpabuf_free(%struct.wpabuf* %216)
  %218 = getelementptr inbounds %struct.eap_ttls_avp, %struct.eap_ttls_avp* %8, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @os_free(i8* %219)
  br label %221

221:                                              ; preds = %215, %63, %50, %18
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_ttls_process_phase2_eap(%struct.eap_sm*, %struct.eap_ttls_data*, i8*, i64) #1

declare dso_local i8* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @tls_connection_decrypt(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @eap_ttls_avp_parse(%struct.wpabuf*, %struct.eap_ttls_avp*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @printf_encode(i8*, i32, i64, i32) #1

declare dso_local i32 @eap_log_msg(%struct.eap_sm*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_memdup(i64, i32) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i64, i32, i32) #1

declare dso_local i32 @eap_ttls_process_phase2_pap(%struct.eap_sm*, %struct.eap_ttls_data*, i64, i32) #1

declare dso_local i32 @eap_ttls_process_phase2_chap(%struct.eap_sm*, %struct.eap_ttls_data*, i32, i32, i64, i32) #1

declare dso_local i32 @eap_ttls_process_phase2_mschap(%struct.eap_sm*, %struct.eap_ttls_data*, i32, i32, i64, i32) #1

declare dso_local i32 @eap_ttls_process_phase2_mschapv2(%struct.eap_sm*, %struct.eap_ttls_data*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
