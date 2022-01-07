; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process_std_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_process_std_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.eap_pax_data = type { i64, i64, i32, i32, i32, i32*, %struct.TYPE_6__, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_pax_hdr = type { i32 }

@EAP_PAX_MAC_LEN = common dso_local global i32 0, align 4
@EAP_PAX_ICV_LEN = common dso_local global i32 0, align 4
@PAX_STD_1 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-PAX: Received PAX_STD-2\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_PAX = common dso_local global i64 0, align 8
@EAP_PAX_RAND_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Too short PAX_STD-2 (B)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"EAP-PAX: Y (client rand)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"EAP-PAX: Too short PAX_STD-2 (CID)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"EAP-PAX: Too long CID\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"EAP-PAX: Failed to allocate memory for CID\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"EAP-PAX: CID\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"EAP-PAX: Too short PAX_STD-2 (MAC_CK)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"EAP-PAX: MAC_CK(A, B, CID)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"EAP-PAX: unknown CID\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"EAP-PAX: EAP-PAX not enabled for CID\00", align 1
@EAP_PAX_AK_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"EAP-PAX: invalid password in user database for CID\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"EAP-PAX: Failed to complete initial key derivation\00", align 1
@EAP_PAX_CK_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"EAP-PAX: Failed to calculate MAC_CK\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"EAP-PAX: Invalid MAC_CK(A, B, CID) in PAX_STD-2\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"EAP-PAX: Expected MAC_CK(A, B, CID)\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"EAP-PAX: Too short ICV (%lu) in PAX_STD-2\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Failed to calculate ICV\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"EAP-PAX: Invalid ICV in PAX_STD-2\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"EAP-PAX: Expected ICV\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"EAP-PAX: ignored extra payload\00", align 1
@PAX_STD_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pax_data*, %struct.wpabuf*)* @eap_pax_process_std_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pax_process_std_2(%struct.eap_sm* %0, %struct.eap_pax_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_pax_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_pax_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_pax_data* %1, %struct.eap_pax_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %17 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAX_STD_1, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %16, align 4
  br label %518

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %34 = load i64, i64* @EAP_TYPE_PAX, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %36 = call i32* @eap_hdr_validate(i64 %33, i64 %34, %struct.wpabuf* %35, i64* %12)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 4, %42
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %30
  store i32 1, i32* %16, align 4
  br label %518

46:                                               ; preds = %39
  %47 = load i32*, i32** %11, align 8
  %48 = bitcast i32* %47 to %struct.eap_pax_hdr*
  store %struct.eap_pax_hdr* %48, %struct.eap_pax_hdr** %7, align 8
  %49 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %49, i64 1
  %51 = bitcast %struct.eap_pax_hdr* %50 to i32*
  store i32* %51, i32** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 %52, 4
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %56 = add nsw i32 2, %55
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %46
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @WPA_GET_BE16(i32* %60)
  %62 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %46
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

67:                                               ; preds = %59
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32* %69, i32** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, 2
  store i64 %71, i64* %13, align 8
  %72 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %73 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %79 = call i32 @os_memcpy(i32* %76, i32* %77, i32 %78)
  %80 = load i32, i32* @MSG_MSGDUMP, align 4
  %81 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %82 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @wpa_hexdump(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %85, i64 %87)
  %89 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %13, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp ult i64 %97, 2
  br i1 %98, label %106, label %99

99:                                               ; preds = %67
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @WPA_GET_BE16(i32* %100)
  %102 = sext i32 %101 to i64
  %103 = add i64 2, %102
  %104 = load i64, i64* %13, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99, %67
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

109:                                              ; preds = %99
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @WPA_GET_BE16(i32* %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ugt i64 %113, 1500
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_INFO, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

118:                                              ; preds = %109
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %121 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %123 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @os_free(i32* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %129 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32* @os_memdup(i32* %127, i64 %130)
  %132 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %133 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %132, i32 0, i32 5
  store i32* %131, i32** %133, align 8
  %134 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %135 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %118
  %139 = load i32, i32* @MSG_INFO, align 4
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

141:                                              ; preds = %118
  %142 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %143 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add i64 2, %144
  %146 = load i32*, i32** %11, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 %145
  store i32* %147, i32** %11, align 8
  %148 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %149 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 2, %150
  %152 = load i64, i64* %13, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %13, align 8
  %154 = load i32, i32* @MSG_MSGDUMP, align 4
  %155 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %156 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %159 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @wpa_hexdump_ascii(i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %157, i32 %161)
  %163 = load i64, i64* %13, align 8
  %164 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %165 = add nsw i32 2, %164
  %166 = sext i32 %165 to i64
  %167 = icmp ult i64 %163, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %141
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @WPA_GET_BE16(i32* %169)
  %171 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %168, %141
  %174 = load i32, i32* @MSG_INFO, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

176:                                              ; preds = %168
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  store i32* %178, i32** %11, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub i64 %179, 2
  store i64 %180, i64* %13, align 8
  %181 = load i32, i32* @MSG_MSGDUMP, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 @wpa_hexdump(i32 %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32* %182, i64 %184)
  %186 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %187 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %188 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %191 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i64 @eap_user_get(%struct.eap_sm* %186, i32* %189, i32 %193, i32 0)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %176
  %197 = load i32, i32* @MSG_DEBUG, align 4
  %198 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %199 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %202 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @wpa_hexdump_ascii(i32 %197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %200, i32 %204)
  %206 = load i8*, i8** @FAILURE, align 8
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %209 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  store i32 1, i32* %16, align 4
  br label %518

210:                                              ; preds = %176
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %273, %210
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @EAP_MAX_METHODS, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %243

215:                                              ; preds = %211
  %216 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %217 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %241, label %228

228:                                              ; preds = %215
  %229 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %230 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @EAP_TYPE_NONE, align 8
  %240 = icmp ne i64 %238, %239
  br label %241

241:                                              ; preds = %228, %215
  %242 = phi i1 [ true, %215 ], [ %240, %228 ]
  br label %243

243:                                              ; preds = %241, %211
  %244 = phi i1 [ false, %211 ], [ %242, %241 ]
  br i1 %244, label %245, label %276

245:                                              ; preds = %243
  %246 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %247 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %246, i32 0, i32 0
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %245
  %259 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %260 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %259, i32 0, i32 0
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @EAP_TYPE_PAX, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %258
  br label %276

272:                                              ; preds = %258, %245
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %211

276:                                              ; preds = %271, %243
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* @EAP_MAX_METHODS, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %306, label %280

280:                                              ; preds = %276
  %281 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %282 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %281, i32 0, i32 0
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %306, label %293

293:                                              ; preds = %280
  %294 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %295 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %294, i32 0, i32 0
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @EAP_TYPE_PAX, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %320

306:                                              ; preds = %293, %280, %276
  %307 = load i32, i32* @MSG_DEBUG, align 4
  %308 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %309 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %312 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = call i32 @wpa_hexdump_ascii(i32 %307, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32* %310, i32 %314)
  %316 = load i8*, i8** @FAILURE, align 8
  %317 = ptrtoint i8* %316 to i64
  %318 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %319 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  store i32 1, i32* %16, align 4
  br label %518

320:                                              ; preds = %293
  %321 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %322 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %321, i32 0, i32 0
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = icmp eq i32* %325, null
  br i1 %326, label %335, label %327

327:                                              ; preds = %320
  %328 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %329 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %328, i32 0, i32 0
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @EAP_PAX_AK_LEN, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %327, %320
  %336 = load i32, i32* @MSG_DEBUG, align 4
  %337 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %338 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %337, i32 0, i32 5
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %341 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 @wpa_hexdump_ascii(i32 %336, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32* %339, i32 %343)
  %345 = load i8*, i8** @FAILURE, align 8
  %346 = ptrtoint i8* %345 to i64
  %347 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %348 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %347, i32 0, i32 0
  store i64 %346, i64* %348, align 8
  store i32 1, i32* %16, align 4
  br label %518

349:                                              ; preds = %327
  %350 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %351 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %350, i32 0, i32 10
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %354 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %353, i32 0, i32 0
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* @EAP_PAX_AK_LEN, align 4
  %359 = call i32 @os_memcpy(i32* %352, i32* %357, i32 %358)
  %360 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %361 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %364 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %363, i32 0, i32 10
  %365 = load i32*, i32** %364, align 8
  %366 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %367 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %366, i32 0, i32 6
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %371 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %370, i32 0, i32 9
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %374 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %377 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %380 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %379, i32 0, i32 8
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @eap_pax_initial_key_derivation(i32 %362, i32* %365, i32 %369, i32 %372, i32 %375, i32 %378, i32 %381)
  %383 = icmp slt i64 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %349
  %385 = load i32, i32* @MSG_INFO, align 4
  %386 = call i32 (i32, i8*, ...) @wpa_printf(i32 %385, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %387 = load i8*, i8** @FAILURE, align 8
  %388 = ptrtoint i8* %387 to i64
  %389 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %390 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  store i32 1, i32* %16, align 4
  br label %518

391:                                              ; preds = %349
  %392 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %393 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %392, i32 0, i32 2
  store i32 1, i32* %393, align 8
  %394 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %395 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %398 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %401 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %402 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %407 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %408 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %407, i32 0, i32 6
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %413 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %414 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %413, i32 0, i32 5
  %415 = load i32*, i32** %414, align 8
  %416 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %417 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = trunc i64 %418 to i32
  %420 = call i64 @eap_pax_mac(i32 %396, i32 %399, i32 %400, i32 %405, i32 %406, i32* %411, i32 %412, i32* %415, i32 %419, i32* %20)
  %421 = icmp slt i64 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %391
  %423 = load i32, i32* @MSG_INFO, align 4
  %424 = call i32 (i32, i8*, ...) @wpa_printf(i32 %423, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %425 = load i8*, i8** @FAILURE, align 8
  %426 = ptrtoint i8* %425 to i64
  %427 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %428 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %427, i32 0, i32 0
  store i64 %426, i64* %428, align 8
  store i32 1, i32* %16, align 4
  br label %518

429:                                              ; preds = %391
  %430 = load i32*, i32** %11, align 8
  %431 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %432 = call i64 @os_memcmp_const(i32* %20, i32* %430, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %445

434:                                              ; preds = %429
  %435 = load i32, i32* @MSG_INFO, align 4
  %436 = call i32 (i32, i8*, ...) @wpa_printf(i32 %435, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %437 = load i32, i32* @MSG_MSGDUMP, align 4
  %438 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %439 = sext i32 %438 to i64
  %440 = call i32 @wpa_hexdump(i32 %437, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32* %20, i64 %439)
  %441 = load i8*, i8** @FAILURE, align 8
  %442 = ptrtoint i8* %441 to i64
  %443 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %444 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %443, i32 0, i32 0
  store i64 %442, i64* %444, align 8
  store i32 1, i32* %16, align 4
  br label %518

445:                                              ; preds = %429
  %446 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %447 = load i32*, i32** %11, align 8
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i32, i32* %447, i64 %448
  store i32* %449, i32** %11, align 8
  %450 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %13, align 8
  %453 = sub i64 %452, %451
  store i64 %453, i64* %13, align 8
  %454 = load i64, i64* %13, align 8
  %455 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %456 = sext i32 %455 to i64
  %457 = icmp ult i64 %454, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %445
  %459 = load i32, i32* @MSG_INFO, align 4
  %460 = load i64, i64* %13, align 8
  %461 = call i32 (i32, i8*, ...) @wpa_printf(i32 %459, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i64 %460)
  store i32 1, i32* %16, align 4
  br label %518

462:                                              ; preds = %445
  %463 = load i32, i32* @MSG_MSGDUMP, align 4
  %464 = load i32*, i32** %11, align 8
  %465 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %466 = sext i32 %465 to i64
  %467 = call i32 @wpa_hexdump(i32 %463, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32* %464, i64 %466)
  %468 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %469 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %472 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %475 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %476 = call i32 @wpabuf_head(%struct.wpabuf* %475)
  %477 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %478 = call i32 @wpabuf_len(%struct.wpabuf* %477)
  %479 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %480 = sub nsw i32 %478, %479
  %481 = call i64 @eap_pax_mac(i32 %470, i32 %473, i32 %474, i32 %476, i32 %480, i32* null, i32 0, i32* null, i32 0, i32* %23)
  %482 = icmp slt i64 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %462
  %484 = load i32, i32* @MSG_INFO, align 4
  %485 = call i32 (i32, i8*, ...) @wpa_printf(i32 %484, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %518

486:                                              ; preds = %462
  %487 = load i32*, i32** %11, align 8
  %488 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %489 = call i64 @os_memcmp_const(i32* %23, i32* %487, i32 %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %486
  %492 = load i32, i32* @MSG_INFO, align 4
  %493 = call i32 (i32, i8*, ...) @wpa_printf(i32 %492, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %494 = load i32, i32* @MSG_MSGDUMP, align 4
  %495 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %496 = sext i32 %495 to i64
  %497 = call i32 @wpa_hexdump(i32 %494, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32* %23, i64 %496)
  store i32 1, i32* %16, align 4
  br label %518

498:                                              ; preds = %486
  %499 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %500 = load i32*, i32** %11, align 8
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %500, i64 %501
  store i32* %502, i32** %11, align 8
  %503 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %504 = sext i32 %503 to i64
  %505 = load i64, i64* %13, align 8
  %506 = sub i64 %505, %504
  store i64 %506, i64* %13, align 8
  %507 = load i64, i64* %13, align 8
  %508 = icmp ugt i64 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %498
  %510 = load i32, i32* @MSG_MSGDUMP, align 4
  %511 = load i32*, i32** %11, align 8
  %512 = load i64, i64* %13, align 8
  %513 = call i32 @wpa_hexdump(i32 %510, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32* %511, i64 %512)
  br label %514

514:                                              ; preds = %509, %498
  %515 = load i64, i64* @PAX_STD_3, align 8
  %516 = load %struct.eap_pax_data*, %struct.eap_pax_data** %5, align 8
  %517 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %516, i32 0, i32 0
  store i64 %515, i64* %517, align 8
  store i32 0, i32* %16, align 4
  br label %518

518:                                              ; preds = %514, %491, %483, %458, %434, %422, %384, %335, %306, %196, %173, %138, %115, %106, %64, %45, %29
  %519 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %519)
  %520 = load i32, i32* %16, align 4
  switch i32 %520, label %522 [
    i32 0, label %521
    i32 1, label %521
  ]

521:                                              ; preds = %518, %518
  ret void

522:                                              ; preds = %518
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32* @eap_hdr_validate(i64, i64, %struct.wpabuf*, i64*) #2

declare dso_local i32 @WPA_GET_BE16(i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @os_memdup(i32*, i64) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #2

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i32, i32) #2

declare dso_local i64 @eap_pax_initial_key_derivation(i32, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @eap_pax_mac(i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
