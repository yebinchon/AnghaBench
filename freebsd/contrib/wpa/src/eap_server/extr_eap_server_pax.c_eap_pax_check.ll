; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_pax_data = type { i64, i64, i32, i64 }
%struct.eap_pax_hdr = type { i64, i32, i64, i64, i64 }

@EAP_PAX_ICV_LEN = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PAX = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-PAX: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"EAP-PAX: received frame: op_code 0x%x flags 0x%x mac_id 0x%x dh_group_id 0x%x public_key_id 0x%x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"EAP-PAX: received payload\00", align 1
@PAX_STD_1 = common dso_local global i64 0, align 8
@EAP_PAX_OP_STD_2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"EAP-PAX: Expected PAX_STD-2 - ignore op %d\00", align 1
@PAX_STD_3 = common dso_local global i64 0, align 8
@EAP_PAX_OP_ACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"EAP-PAX: Expected PAX-ACK - ignore op %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"EAP-PAX: Unknown op_code 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"EAP-PAX: Expected MAC ID 0x%x, received 0x%x\00", align 1
@EAP_PAX_DH_GROUP_NONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"EAP-PAX: Expected DH Group ID 0x%x, received 0x%x\00", align 1
@EAP_PAX_PUBLIC_KEY_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [52 x i8] c"EAP-PAX: Expected Public Key ID 0x%x, received 0x%x\00", align 1
@EAP_PAX_FLAGS_MF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"EAP-PAX: fragmentation not supported\00", align 1
@EAP_PAX_FLAGS_CE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"EAP-PAX: Unexpected CE flag\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"EAP-PAX: No ICV in the packet\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Failed to calculate ICV\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"EAP-PAX: Invalid ICV\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"EAP-PAX: Expected ICV\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_pax_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_pax_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_pax_data*, align 8
  %9 = alloca %struct.eap_pax_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.eap_pax_data*
  store %struct.eap_pax_data* %18, %struct.eap_pax_data** %8, align 8
  %19 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %24 = load i32, i32* @EAP_TYPE_PAX, align 4
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = call i32* @eap_hdr_validate(i32 %23, i32 %24, %struct.wpabuf* %25, i64* %11)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 40, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %3
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

39:                                               ; preds = %29
  %40 = load i64, i64* %11, align 8
  %41 = add i64 5, %40
  store i64 %41, i64* %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = bitcast i32* %42 to %struct.eap_pax_hdr*
  store %struct.eap_pax_hdr* %43, %struct.eap_pax_hdr** %9, align 8
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %52 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %55 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %50, i64 %53, i64 %56, i64 %59)
  %61 = load i32, i32* @MSG_MSGDUMP, align 4
  %62 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %63 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %62, i64 1
  %64 = bitcast %struct.eap_pax_hdr* %63 to i32*
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %65, 40
  %67 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @wpa_hexdump(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %64, i32 %70)
  %72 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %73 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PAX_STD_1, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %39
  %78 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %79 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EAP_PAX_OP_STD_2, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %86 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

90:                                               ; preds = %77, %39
  %91 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %92 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PAX_STD_3, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EAP_PAX_OP_ACK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %105 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

109:                                              ; preds = %96, %90
  %110 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %111 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EAP_PAX_OP_STD_2, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %117 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @EAP_PAX_OP_ACK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %124 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %121, %115, %109
  %128 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %129 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %132 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %138 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %141 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %139, i64 %142)
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

145:                                              ; preds = %127
  %146 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %147 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EAP_PAX_DH_GROUP_NONE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load i32, i32* @MSG_INFO, align 4
  %153 = load i64, i64* @EAP_PAX_DH_GROUP_NONE, align 8
  %154 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %155 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i64 %153, i64 %156)
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

159:                                              ; preds = %145
  %160 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %161 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @EAP_PAX_PUBLIC_KEY_NONE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load i32, i32* @MSG_INFO, align 4
  %167 = load i64, i64* @EAP_PAX_PUBLIC_KEY_NONE, align 8
  %168 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %169 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 %167, i64 %170)
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

173:                                              ; preds = %159
  %174 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %175 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @EAP_PAX_FLAGS_MF, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* @MSG_INFO, align 4
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

184:                                              ; preds = %173
  %185 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %186 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @EAP_PAX_FLAGS_CE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @MSG_INFO, align 4
  %193 = call i32 (i32, i8*, ...) @wpa_printf(i32 %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %194 = load i32, i32* @TRUE, align 4
  store i32 %194, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

195:                                              ; preds = %184
  %196 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %197 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %257

200:                                              ; preds = %195
  %201 = load i64, i64* %11, align 8
  %202 = sub i64 %201, 40
  %203 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ult i64 %202, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32, i32* @MSG_INFO, align 4
  %208 = call i32 (i32, i8*, ...) @wpa_printf(i32 %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

210:                                              ; preds = %200
  %211 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %212 = call i32 @wpabuf_mhead_u8(%struct.wpabuf* %211)
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %12, align 8
  %215 = add i64 %213, %214
  %216 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %217 = sext i32 %216 to i64
  %218 = sub i64 %215, %217
  %219 = inttoptr i64 %218 to i32*
  store i32* %219, i32** %15, align 8
  %220 = load i32, i32* @MSG_MSGDUMP, align 4
  %221 = load i32*, i32** %15, align 8
  %222 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %223 = call i32 @wpa_hexdump(i32 %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %221, i32 %222)
  %224 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %225 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %228 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %231 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %232 = call i32 @wpabuf_mhead(%struct.wpabuf* %231)
  %233 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %234 = call i64 @wpabuf_len(%struct.wpabuf* %233)
  %235 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %236 = sext i32 %235 to i64
  %237 = sub nsw i64 %234, %236
  %238 = call i64 @eap_pax_mac(i64 %226, i32 %229, i32 %230, i32 %232, i64 %237, i32* null, i32 0, i32* null, i32 0, i32* %22)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %210
  %241 = load i32, i32* @MSG_INFO, align 4
  %242 = call i32 (i32, i8*, ...) @wpa_printf(i32 %241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %243 = load i32, i32* @TRUE, align 4
  store i32 %243, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

244:                                              ; preds = %210
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %247 = call i64 @os_memcmp_const(i32* %22, i32* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load i32, i32* @MSG_INFO, align 4
  %251 = call i32 (i32, i8*, ...) @wpa_printf(i32 %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %252 = load i32, i32* @MSG_MSGDUMP, align 4
  %253 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %254 = call i32 @wpa_hexdump(i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32* %22, i32 %253)
  %255 = load i32, i32* @TRUE, align 4
  store i32 %255, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256, %195
  %258 = load i32, i32* @FALSE, align 4
  store i32 %258, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %259

259:                                              ; preds = %257, %249, %240, %206, %191, %180, %165, %151, %135, %102, %83, %35
  %260 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @wpabuf_mhead_u8(%struct.wpabuf*) #2

declare dso_local i64 @eap_pax_mac(i64, i32, i32, i32, i64, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
