; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_responder_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_responder_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i64, i32, i32, i32, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.ikev2_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ikev2_payloads = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"IKEV2: Received message (len %lu)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IKEV2: Too short frame to include HDR\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IKEV2:   IKE_SA Initiator's SPI\00", align 1
@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IKEV2:   IKE_SA Responder's SPI\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"IKEV2:   Next Payload: %u  Version: 0x%x  Exchange Type: %u\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"IKEV2:   Message ID: %u  Length: %u\00", align 1
@IKEV2_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"IKEV2: Unsupported HDR version 0x%x (expected 0x%x)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"IKEV2: Invalid length (HDR: %lu != RX: %lu)\00", align 1
@IKEV2_HDR_INITIATOR = common dso_local global i32 0, align 4
@IKEV2_HDR_RESPONSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"IKEV2: Unexpected Flags value 0x%x\00", align 1
@SA_INIT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"IKEV2: Unexpected IKE_SA Initiator's SPI\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"IKEV2: Unexpected IKE_SA Responder's SPI\00", align 1
@LAST_MSG_SA_INIT = common dso_local global i32 0, align 4
@NOTIFY = common dso_local global i64 0, align 8
@SA_AUTH = common dso_local global i64 0, align 8
@LAST_MSG_SA_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_responder_process(%struct.ikev2_responder_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ikev2_responder_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.ikev2_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ikev2_payloads, align 4
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %12 = load i32, i32* @MSG_MSGDUMP, align 4
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = call i32 @wpabuf_len(%struct.wpabuf* %13)
  %15 = sext i32 %14 to i64
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %221

24:                                               ; preds = %2
  %25 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %26 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %28 = call i64 @wpabuf_head(%struct.wpabuf* %27)
  %29 = inttoptr i64 %28 to %struct.ikev2_hdr*
  store %struct.ikev2_hdr* %29, %struct.ikev2_hdr** %6, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %31 = call i32* @wpabuf_head_u8(%struct.wpabuf* %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = call i32 @wpabuf_len(%struct.wpabuf* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %10, align 8
  %36 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WPA_GET_BE32(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WPA_GET_BE32(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %49 = call i32 @wpa_hexdump(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %55 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %61 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %64 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IKEV2_VERSION, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %24
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IKEV2_VERSION, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 %81)
  store i32 -1, i32* %3, align 4
  br label %221

83:                                               ; preds = %24
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %86 = call i32 @wpabuf_len(%struct.wpabuf* %85)
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %93 = call i32 @wpabuf_len(%struct.wpabuf* %92)
  %94 = sext i32 %93 to i64
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %91, i64 %94)
  store i32 -1, i32* %3, align 4
  br label %221

96:                                               ; preds = %83
  %97 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %98 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %99 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @ikev2_validate_rx_state(%struct.ikev2_responder_data* %97, i32 %100, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %221

105:                                              ; preds = %96
  %106 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %107 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IKEV2_HDR_INITIATOR, align 4
  %110 = load i32, i32* @IKEV2_HDR_RESPONSE, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = load i32, i32* @IKEV2_HDR_INITIATOR, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load i32, i32* @MSG_INFO, align 4
  %117 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %118 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %3, align 4
  br label %221

121:                                              ; preds = %105
  %122 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %123 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SA_INIT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %121
  %128 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %129 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %132 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %135 = call i64 @os_memcmp(i32 %130, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %221

140:                                              ; preds = %127
  %141 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %142 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %145 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %148 = call i64 @os_memcmp(i32 %143, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %140
  %151 = load i32, i32* @MSG_INFO, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %221

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %121
  %155 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %156 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %155, i64 1
  %157 = bitcast %struct.ikev2_hdr* %156 to i32*
  store i32* %157, i32** %9, align 8
  %158 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %159 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = call i64 @ikev2_parse_payloads(%struct.ikev2_payloads* %11, i32 %160, i32* %161, i32* %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  store i32 -1, i32* %3, align 4
  br label %221

166:                                              ; preds = %154
  %167 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %168 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SA_INIT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %197

172:                                              ; preds = %166
  %173 = load i32, i32* @LAST_MSG_SA_INIT, align 4
  %174 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %175 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %177 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %178 = call i64 @ikev2_process_sa_init(%struct.ikev2_responder_data* %176, %struct.ikev2_hdr* %177, %struct.ikev2_payloads* %11)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %172
  %181 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %182 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NOTIFY, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %221

187:                                              ; preds = %180
  store i32 -1, i32* %3, align 4
  br label %221

188:                                              ; preds = %172
  %189 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %190 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @wpabuf_free(i32 %191)
  %193 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %194 = call i32 @wpabuf_dup(%struct.wpabuf* %193)
  %195 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %196 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %188, %166
  %198 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %199 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SA_AUTH, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load i32, i32* @LAST_MSG_SA_AUTH, align 4
  %205 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %206 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  %207 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %208 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %209 = call i64 @ikev2_process_sa_auth(%struct.ikev2_responder_data* %207, %struct.ikev2_hdr* %208, %struct.ikev2_payloads* %11)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %203
  %212 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %4, align 8
  %213 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NOTIFY, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %221

218:                                              ; preds = %211
  store i32 -1, i32* %3, align 4
  br label %221

219:                                              ; preds = %203
  br label %220

220:                                              ; preds = %219, %197
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %218, %217, %187, %186, %165, %150, %137, %115, %104, %88, %76, %21
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @ikev2_validate_rx_state(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i64 @ikev2_parse_payloads(%struct.ikev2_payloads*, i32, i32*, i32*) #1

declare dso_local i64 @ikev2_process_sa_init(%struct.ikev2_responder_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i64 @ikev2_process_sa_auth(%struct.ikev2_responder_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
