; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_process_std_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pax.c_eap_pax_process_std_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_pax_data = type { i64, i32, i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.eap_method_ret = type { i32, i8*, i8*, i8* }
%struct.eap_pax_hdr = type { i32 }

@EAP_PAX_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-PAX: PAX_STD-3 (received)\00", align 1
@PAX_STD_2_SENT = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"EAP-PAX: PAX_STD-3 received in unexpected state (%d) - ignored\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_PAX_FLAGS_CE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"EAP-PAX: PAX_STD-3 with CE flag set - ignored\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"EAP-PAX: PAX_STD-3 with too short payload\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"EAP-PAX: PAX_STD-3 with incorrect MAC_CK length %d (expected %d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"EAP-PAX: MAC_CK(B, CID)\00", align 1
@EAP_PAX_CK_LEN = common dso_local global i32 0, align 4
@EAP_PAX_RAND_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"EAP-PAX: Could not derive MAC_CK(B, CID)\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"EAP-PAX: Invalid MAC_CK(B, CID) received\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"EAP-PAX: expected MAC_CK(B, CID)\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"EAP-PAX: ignored extra payload\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"EAP-PAX: PAX-ACK (sending)\00", align 1
@EAP_PAX_OP_ACK = common dso_local global i32 0, align 4
@EAP_PAX_ICV_LEN = common dso_local global i64 0, align 8
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@PAX_DONE = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_pax_data*, %struct.eap_method_ret*, i32, %struct.eap_pax_hdr*, i64)* @eap_pax_process_std_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pax_process_std_3(%struct.eap_pax_data* %0, %struct.eap_method_ret* %1, i32 %2, %struct.eap_pax_hdr* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_pax_data*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_pax_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.eap_pax_data* %0, %struct.eap_pax_data** %7, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.eap_pax_hdr* %3, %struct.eap_pax_hdr** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAX_STD_2_SENT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %5
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %33 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %38 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

39:                                               ; preds = %5
  %40 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %41 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EAP_PAX_FLAGS_CE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %51 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

52:                                               ; preds = %39
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, 4
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %57 = add nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %65 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

66:                                               ; preds = %52
  %67 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %68 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %67, i64 1
  %69 = bitcast %struct.eap_pax_hdr* %68 to i32*
  store i32* %69, i32** %16, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @WPA_GET_BE16(i32* %70)
  %72 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @WPA_GET_BE16(i32* %76)
  %78 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %82 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

83:                                               ; preds = %66
  %84 = load i32*, i32** %16, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = sub i64 %86, 2
  store i64 %87, i64* %17, align 8
  %88 = load i32, i32* @MSG_MSGDUMP, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @wpa_hexdump(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %89, i64 %91)
  %93 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %97 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %100 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %101 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %106 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %107 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %111 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @eap_pax_mac(i32 %95, i32 %98, i32 %99, i32 %104, i64 %105, i32* %109, i32 %112, i32* null, i32 0, i32* %22)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %83
  %116 = load i32, i32* @MSG_INFO, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i8*, i8** @METHOD_DONE, align 8
  %119 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %120 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @DECISION_FAIL, align 8
  %122 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %123 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

124:                                              ; preds = %83
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %127 = call i64 @os_memcmp_const(i32* %125, i32* %22, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* @MSG_MSGDUMP, align 4
  %133 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %134 = sext i32 %133 to i64
  %135 = call i32 @wpa_hexdump(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32* %22, i64 %134)
  %136 = load i8*, i8** @METHOD_DONE, align 8
  %137 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %138 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @DECISION_FAIL, align 8
  %140 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %141 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

142:                                              ; preds = %124
  %143 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %144 = load i32*, i32** %16, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %16, align 8
  %147 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %17, align 8
  %150 = sub i64 %149, %148
  store i64 %150, i64* %17, align 8
  %151 = load i64, i64* %17, align 8
  %152 = icmp ugt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %142
  %154 = load i32, i32* @MSG_MSGDUMP, align 4
  %155 = load i32*, i32** %16, align 8
  %156 = load i64, i64* %17, align 8
  %157 = call i32 @wpa_hexdump(i32 %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32* %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %142
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %161 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %10, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @EAP_PAX_OP_ACK, align 4
  %164 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %165 = call %struct.wpabuf* @eap_pax_alloc_resp(%struct.eap_pax_hdr* %161, i32 %162, i32 %163, i64 %164)
  store %struct.wpabuf* %165, %struct.wpabuf** %12, align 8
  %166 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %167 = icmp eq %struct.wpabuf* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

169:                                              ; preds = %158
  %170 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %171 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %172 = call i32* @wpabuf_put(%struct.wpabuf* %170, i64 %171)
  store i32* %172, i32** %13, align 8
  %173 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %174 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %177 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %180 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %181 = call i32 @wpabuf_head(%struct.wpabuf* %180)
  %182 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %183 = call i64 @wpabuf_len(%struct.wpabuf* %182)
  %184 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %185 = sub i64 %183, %184
  %186 = load i32*, i32** %13, align 8
  %187 = call i64 @eap_pax_mac(i32 %175, i32 %178, i32 %179, i32 %181, i64 %185, i32* null, i32 0, i32* null, i32 0, i32* %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %169
  %190 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %191 = call i32 @wpabuf_free(%struct.wpabuf* %190)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

192:                                              ; preds = %169
  %193 = load i32, i32* @MSG_MSGDUMP, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %196 = call i32 @wpa_hexdump(i32 %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %194, i64 %195)
  %197 = load i64, i64* @PAX_DONE, align 8
  %198 = load %struct.eap_pax_data*, %struct.eap_pax_data** %7, align 8
  %199 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load i8*, i8** @METHOD_DONE, align 8
  %201 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %202 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %201, i32 0, i32 2
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %204 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %205 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* @FALSE, align 4
  %207 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %208 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %209, %struct.wpabuf** %6, align 8
  store i32 1, i32* %18, align 4
  br label %210

210:                                              ; preds = %192, %189, %168, %129, %115, %74, %60, %46, %30
  %211 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @WPA_GET_BE16(i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i64 @eap_pax_mac(i32, i32, i32, i32, i64, i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local %struct.wpabuf* @eap_pax_alloc_resp(%struct.eap_pax_hdr*, i32, i32, i64) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
