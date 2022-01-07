; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i64 }
%struct.eap_mschapv2_data = type { i32*, i32, i8*, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_mschapv2_hdr = type { i64, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@MSCHAPV2_OP_RESPONSE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-MSCHAPV2: Invalid response\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-MSCHAPV2: Using pre-configured Peer-Challenge\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"EAP-MSCHAPV2: Peer-Challenge\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"EAP-MSCHAPV2: NT-Response\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"EAP-MSCHAPV2: Flags 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"EAP-MSCHAPV2: Name\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"EAP-MSCHAPV2 Name '%s'\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"EAP-MSCHAPV2: Mismatch in user names\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"EAP-MSCHAPV2: Expected user name\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"EAP-MSCHAPV2: Received user name\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"EAP-MSCHAPV2: User name\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"EAP-MSCHAPV2: Correct NT-Response\00", align 1
@SUCCESS_REQ = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"EAP-MSCHAPV2: Derived Master Key\00", align 1
@MSCHAPV2_KEY_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"EAP-MSCHAPV2: Expected NT-Response\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"EAP-MSCHAPV2: Invalid NT-Response\00", align 1
@FAILURE_REQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.wpabuf*)* @eap_mschapv2_process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_mschapv2_process_response(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_mschapv2_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_mschapv2_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [24 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca [16 x i32], align 16
  %26 = alloca [16 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %27 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %28 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = call i32* @eap_hdr_validate(i32 %27, i32 %28, %struct.wpabuf* %29, i64* %14)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* %14, align 8
  %35 = icmp ult i64 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %3
  br label %356

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = bitcast i32* %41 to %struct.eap_mschapv2_hdr*
  store %struct.eap_mschapv2_hdr* %42, %struct.eap_mschapv2_hdr** %7, align 8
  %43 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %43, i64 1
  %45 = bitcast %struct.eap_mschapv2_hdr* %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ult i64 %46, 66
  br i1 %47, label %59, label %48

48:                                               ; preds = %37
  %49 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MSCHAPV2_OP_RESPONSE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 49
  br i1 %58, label %59, label %66

59:                                               ; preds = %54, %48, %37
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %62 = call i32 @wpa_hexdump_buf(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %61)
  %63 = load i8*, i8** @FAILURE, align 8
  %64 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %65 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %356

66:                                               ; preds = %54
  %67 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 24
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 24
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %8, align 8
  %82 = load i32, i32* %80, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32*, i32** %8, align 8
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  store i64 %89, i64* %15, align 8
  %90 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %91 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %66
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %98 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %10, align 8
  br label %100

100:                                              ; preds = %94, %66
  %101 = load i32, i32* @MSG_MSGDUMP, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @wpa_hexdump(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %102, i32 16)
  %104 = load i32, i32* @MSG_MSGDUMP, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @wpa_hexdump(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %105, i32 24)
  %107 = load i32, i32* @MSG_MSGDUMP, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @MSG_MSGDUMP, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @wpa_hexdump_ascii(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %111, i64 %112)
  %114 = load i64, i64* %15, align 8
  %115 = mul i64 %114, 4
  %116 = add i64 %115, 1
  %117 = call i8* @os_malloc(i64 %116)
  store i8* %117, i8** %23, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %100
  %121 = load i8*, i8** %23, align 8
  %122 = load i64, i64* %15, align 8
  %123 = mul i64 %122, 4
  %124 = add i64 %123, 1
  %125 = load i32*, i32** %12, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i32 @printf_encode(i8* %121, i64 %124, i32* %125, i64 %126)
  %128 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %129 = load i8*, i8** %23, align 8
  %130 = call i32 @eap_log_msg(%struct.eap_sm* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  %131 = load i8*, i8** %23, align 8
  %132 = call i32 @os_free(i8* %131)
  br label %133

133:                                              ; preds = %120, %100
  %134 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %135 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %18, align 8
  %137 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %138 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %20, align 8
  store i64 0, i64* %16, align 8
  br label %140

140:                                              ; preds = %160, %133
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %20, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load i32*, i32** %18, align 8
  %146 = load i64, i64* %16, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 92
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load i64, i64* %16, align 8
  %152 = add i64 %151, 1
  %153 = load i64, i64* %20, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %20, align 8
  %155 = load i64, i64* %16, align 8
  %156 = add i64 %155, 1
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %18, align 8
  br label %163

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %16, align 8
  br label %140

163:                                              ; preds = %150, %140
  %164 = load i32*, i32** %12, align 8
  store i32* %164, i32** %19, align 8
  %165 = load i64, i64* %15, align 8
  store i64 %165, i64* %21, align 8
  store i64 0, i64* %16, align 8
  br label %166

166:                                              ; preds = %186, %163
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* %21, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32*, i32** %19, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 92
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load i64, i64* %16, align 8
  %178 = add i64 %177, 1
  %179 = load i64, i64* %21, align 8
  %180 = sub i64 %179, %178
  store i64 %180, i64* %21, align 8
  %181 = load i64, i64* %16, align 8
  %182 = add i64 %181, 1
  %183 = load i32*, i32** %19, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 %182
  store i32* %184, i32** %19, align 8
  br label %189

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %16, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %16, align 8
  br label %166

189:                                              ; preds = %176, %166
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* %21, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  %194 = load i32*, i32** %18, align 8
  %195 = load i32*, i32** %19, align 8
  %196 = load i64, i64* %20, align 8
  %197 = call i64 @os_memcmp(i32* %194, i32* %195, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %193, %189
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load i32*, i32** %18, align 8
  %204 = load i64, i64* %20, align 8
  %205 = call i32 @wpa_hexdump_ascii(i32 %202, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32* %203, i64 %204)
  %206 = load i32, i32* @MSG_DEBUG, align 4
  %207 = load i32*, i32** %19, align 8
  %208 = load i64, i64* %21, align 8
  %209 = call i32 @wpa_hexdump_ascii(i32 %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32* %207, i64 %208)
  %210 = load i8*, i8** @FAILURE, align 8
  %211 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %212 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  br label %356

213:                                              ; preds = %193
  %214 = load i32, i32* @MSG_MSGDUMP, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = load i64, i64* %20, align 8
  %217 = call i32 @wpa_hexdump_ascii(i32 %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32* %215, i64 %216)
  %218 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %219 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %218, i32 0, i32 2
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %213
  %225 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %226 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = load i32*, i32** %18, align 8
  %230 = load i64, i64* %20, align 8
  %231 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %232 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %231, i32 0, i32 2
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %237 = call i32 @generate_nt_response_pwhash(i32 %227, i32* %228, i32* %229, i64 %230, i32* %235, i32* %236)
  store i32 %237, i32* %22, align 4
  br label %257

238:                                              ; preds = %213
  %239 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %240 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %10, align 8
  %243 = load i32*, i32** %18, align 8
  %244 = load i64, i64* %20, align 8
  %245 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %246 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %245, i32 0, i32 2
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %251 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %250, i32 0, i32 2
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %256 = call i32 @generate_nt_response(i32 %241, i32* %242, i32* %243, i64 %244, i32* %249, i32 %254, i32* %255)
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %238, %224
  %258 = load i32, i32* %22, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i8*, i8** @FAILURE, align 8
  %262 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %263 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  br label %356

264:                                              ; preds = %257
  %265 = load i32*, i32** %11, align 8
  %266 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %267 = call i64 @os_memcmp_const(i32* %265, i32* %266, i32 24)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %347

269:                                              ; preds = %264
  %270 = load i32, i32* @MSG_DEBUG, align 4
  %271 = call i32 (i32, i8*, ...) @wpa_printf(i32 %270, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %272 = load i8*, i8** @SUCCESS_REQ, align 8
  %273 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %274 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %273, i32 0, i32 2
  store i8* %272, i8** %274, align 8
  %275 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %276 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %275, i32 0, i32 2
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %269
  %282 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %283 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %282, i32 0, i32 2
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %24, align 8
  br label %307

287:                                              ; preds = %269
  %288 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %289 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %288, i32 0, i32 2
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %294 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %293, i32 0, i32 2
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %299 = call i64 @nt_password_hash(i32* %292, i32 %297, i32* %298)
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %287
  %302 = load i8*, i8** @FAILURE, align 8
  %303 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %304 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %303, i32 0, i32 2
  store i8* %302, i8** %304, align 8
  br label %356

305:                                              ; preds = %287
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  store i32* %306, i32** %24, align 8
  br label %307

307:                                              ; preds = %305, %281
  %308 = load i32*, i32** %24, align 8
  %309 = load i32*, i32** %10, align 8
  %310 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %311 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load i32*, i32** %18, align 8
  %314 = load i64, i64* %20, align 8
  %315 = load i32*, i32** %11, align 8
  %316 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %317 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = call i64 @generate_authenticator_response_pwhash(i32* %308, i32* %309, i32 %312, i32* %313, i64 %314, i32* %315, i32 %318)
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %334, label %321

321:                                              ; preds = %307
  %322 = load i32*, i32** %24, align 8
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %324 = call i64 @hash_nt_password_hash(i32* %322, i32* %323)
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %321
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %328 = load i32*, i32** %11, align 8
  %329 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %330 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = call i64 @get_master_key(i32* %327, i32* %328, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %326, %321, %307
  %335 = load i8*, i8** @FAILURE, align 8
  %336 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %337 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  br label %356

338:                                              ; preds = %326
  %339 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %340 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %339, i32 0, i32 1
  store i32 1, i32* %340, align 8
  %341 = load i32, i32* @MSG_DEBUG, align 4
  %342 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %343 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @MSCHAPV2_KEY_LEN, align 4
  %346 = call i32 @wpa_hexdump_key(i32 %341, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %344, i32 %345)
  br label %356

347:                                              ; preds = %264
  %348 = load i32, i32* @MSG_MSGDUMP, align 4
  %349 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %350 = call i32 @wpa_hexdump(i32 %348, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32* %349, i32 24)
  %351 = load i32, i32* @MSG_DEBUG, align 4
  %352 = call i32 (i32, i8*, ...) @wpa_printf(i32 %351, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %353 = load i8*, i8** @FAILURE_REQ, align 8
  %354 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %355 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %354, i32 0, i32 2
  store i8* %353, i8** %355, align 8
  br label %356

356:                                              ; preds = %36, %59, %199, %260, %301, %334, %347, %338
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @printf_encode(i8*, i64, i32*, i64) #1

declare dso_local i32 @eap_log_msg(%struct.eap_sm*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @generate_nt_response_pwhash(i32, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @generate_nt_response(i32, i32*, i32*, i64, i32*, i32, i32*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #1

declare dso_local i64 @nt_password_hash(i32*, i32, i32*) #1

declare dso_local i64 @generate_authenticator_response_pwhash(i32*, i32*, i32, i32*, i64, i32*, i32) #1

declare dso_local i64 @hash_nt_password_hash(i32*, i32*) #1

declare dso_local i64 @get_master_key(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
