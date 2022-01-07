; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_process_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_psk_data = type { i64, i64, i32, i32*, i32*, i32*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_psk_hdr_2 = type { i32*, i32* }

@EAP_PSK_MAC_LEN = common dso_local global i32 0, align 4
@PSK_1 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-PSK: Received PSK-2\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_PSK = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-PSK: Invalid frame\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"EAP-PSK: Failed to allocate memory for ID_P\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"EAP-PSK: ID_P\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"EAP-PSK: unknown ID_P\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"EAP-PSK: EAP-PSK not enabled for ID_P\00", align 1
@EAP_PSK_PSK_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"EAP-PSK: invalid password in user database for ID_P\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"EAP-PSK: AK\00", align 1
@EAP_PSK_AK_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"EAP-PSK: KDK\00", align 1
@EAP_PSK_KDK_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"EAP-PSK: RAND_P (client rand)\00", align 1
@EAP_PSK_RAND_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"EAP-PSK: MAC_P\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"EAP-PSK: Invalid MAC_P\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"EAP-PSK: Expected MAC_P\00", align 1
@PSK_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_psk_data*, %struct.wpabuf*)* @eap_psk_process_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_psk_process_2(%struct.eap_sm* %0, %struct.eap_psk_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_psk_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_psk_hdr_2*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_psk_data* %1, %struct.eap_psk_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %17 = load i32, i32* @EAP_PSK_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PSK_1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %16, align 4
  br label %392

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %31 = load i64, i64* @EAP_TYPE_PSK, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call i32* @eap_hdr_validate(i64 %30, i64 %31, %struct.wpabuf* %32, i64* %12)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %27
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %392

42:                                               ; preds = %36
  %43 = load i32*, i32** %15, align 8
  %44 = bitcast i32* %43 to %struct.eap_psk_hdr_2*
  store %struct.eap_psk_hdr_2* %44, %struct.eap_psk_hdr_2** %7, align 8
  %45 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %7, align 8
  %46 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %45, i64 1
  %47 = bitcast %struct.eap_psk_hdr_2* %46 to i32*
  store i32* %47, i32** %15, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %48, 16
  store i64 %49, i64* %12, align 8
  %50 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %51 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @os_free(i32* %52)
  %54 = load i32*, i32** %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32* @os_memdup(i32* %54, i64 %55)
  %57 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %58 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %60 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %42
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %392

66:                                               ; preds = %42
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %69 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @MSG_MSGDUMP, align 4
  %71 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %75 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @wpa_hexdump_ascii(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %73, i64 %76)
  %78 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %79 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %80 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %83 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @eap_user_get(%struct.eap_sm* %78, i32* %81, i64 %84, i32 0)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %66
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %90 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %93 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @wpa_hexdump_ascii(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %91, i64 %94)
  %96 = load i8*, i8** @FAILURE, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %99 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i32 1, i32* %16, align 4
  br label %392

100:                                              ; preds = %66
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %163, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @EAP_MAX_METHODS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %101
  %106 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %107 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %131, label %118

118:                                              ; preds = %105
  %119 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %120 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EAP_TYPE_NONE, align 8
  %130 = icmp ne i64 %128, %129
  br label %131

131:                                              ; preds = %118, %105
  %132 = phi i1 [ true, %105 ], [ %130, %118 ]
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi i1 [ false, %101 ], [ %132, %131 ]
  br i1 %134, label %135, label %166

135:                                              ; preds = %133
  %136 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %137 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %135
  %149 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %150 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @EAP_TYPE_PSK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  br label %166

162:                                              ; preds = %148, %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %101

166:                                              ; preds = %161, %133
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @EAP_MAX_METHODS, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %196, label %170

170:                                              ; preds = %166
  %171 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %172 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %196, label %183

183:                                              ; preds = %170
  %184 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %185 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @EAP_TYPE_PSK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %183, %170, %166
  %197 = load i32, i32* @MSG_DEBUG, align 4
  %198 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %199 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %202 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @wpa_hexdump_ascii(i32 %197, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32* %200, i64 %203)
  %205 = load i8*, i8** @FAILURE, align 8
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %208 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  store i32 1, i32* %16, align 4
  br label %392

209:                                              ; preds = %183
  %210 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %211 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %210, i32 0, i32 2
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %209
  %217 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %218 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %217, i32 0, i32 2
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @EAP_PSK_PSK_LEN, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %216, %209
  %225 = load i32, i32* @MSG_DEBUG, align 4
  %226 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %227 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %226, i32 0, i32 5
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %230 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @wpa_hexdump_ascii(i32 %225, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32* %228, i64 %231)
  %233 = load i8*, i8** @FAILURE, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %236 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  store i32 1, i32* %16, align 4
  br label %392

237:                                              ; preds = %216
  %238 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %239 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %238, i32 0, i32 2
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %244 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %247 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @eap_psk_key_setup(i32* %242, i32 %245, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %237
  %252 = load i8*, i8** @FAILURE, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %255 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  store i32 1, i32* %16, align 4
  br label %392

256:                                              ; preds = %237
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %259 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @EAP_PSK_AK_LEN, align 4
  %262 = call i32 @wpa_hexdump_key(i32 %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %260, i32 %261)
  %263 = load i32, i32* @MSG_DEBUG, align 4
  %264 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %265 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @EAP_PSK_KDK_LEN, align 4
  %268 = call i32 @wpa_hexdump_key(i32 %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %266, i32 %267)
  %269 = load i32, i32* @MSG_MSGDUMP, align 4
  %270 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %7, align 8
  %271 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %274 = call i32 @wpa_hexdump(i32 %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32* %272, i32 %273)
  %275 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %276 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %7, align 8
  %279 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %282 = call i32 @os_memcpy(i32* %277, i32* %280, i32 %281)
  %283 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %284 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %287 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = add i64 %285, %289
  %291 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %292 = mul nsw i32 2, %291
  %293 = sext i32 %292 to i64
  %294 = add i64 %290, %293
  store i64 %294, i64* %13, align 8
  %295 = load i64, i64* %13, align 8
  %296 = call i32* @os_malloc(i64 %295)
  store i32* %296, i32** %11, align 8
  %297 = load i32*, i32** %11, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %256
  %300 = load i8*, i8** @FAILURE, align 8
  %301 = ptrtoint i8* %300 to i64
  %302 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %303 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %302, i32 0, i32 0
  store i64 %301, i64* %303, align 8
  store i32 1, i32* %16, align 4
  br label %392

304:                                              ; preds = %256
  %305 = load i32*, i32** %11, align 8
  %306 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %307 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %306, i32 0, i32 5
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %310 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = call i32 @os_memcpy(i32* %305, i32* %308, i32 %312)
  %314 = load i32*, i32** %11, align 8
  %315 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %316 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32* %318, i32** %8, align 8
  %319 = load i32*, i32** %8, align 8
  %320 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %321 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %324 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @os_memcpy(i32* %319, i32* %322, i32 %325)
  %327 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %328 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32*, i32** %8, align 8
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  store i32* %332, i32** %8, align 8
  %333 = load i32*, i32** %8, align 8
  %334 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %335 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %338 = call i32 @os_memcpy(i32* %333, i32* %336, i32 %337)
  %339 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %340 = load i32*, i32** %8, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32* %342, i32** %8, align 8
  %343 = load i32*, i32** %8, align 8
  %344 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %345 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %344, i32 0, i32 3
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %348 = call i32 @os_memcpy(i32* %343, i32* %346, i32 %347)
  %349 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %350 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i32*, i32** %11, align 8
  %353 = load i64, i64* %13, align 8
  %354 = call i64 @omac1_aes_128(i32 %351, i32* %352, i64 %353, i32* %20)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %304
  %357 = load i32*, i32** %11, align 8
  %358 = call i32 @os_free(i32* %357)
  %359 = load i8*, i8** @FAILURE, align 8
  %360 = ptrtoint i8* %359 to i64
  %361 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %362 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %361, i32 0, i32 0
  store i64 %360, i64* %362, align 8
  store i32 1, i32* %16, align 4
  br label %392

363:                                              ; preds = %304
  %364 = load i32*, i32** %11, align 8
  %365 = call i32 @os_free(i32* %364)
  %366 = load i32, i32* @MSG_DEBUG, align 4
  %367 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %7, align 8
  %368 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* @EAP_PSK_MAC_LEN, align 4
  %371 = call i32 @wpa_hexdump(i32 %366, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %369, i32 %370)
  %372 = load %struct.eap_psk_hdr_2*, %struct.eap_psk_hdr_2** %7, align 8
  %373 = getelementptr inbounds %struct.eap_psk_hdr_2, %struct.eap_psk_hdr_2* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* @EAP_PSK_MAC_LEN, align 4
  %376 = call i64 @os_memcmp_const(i32* %20, i32* %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %363
  %379 = load i32, i32* @MSG_INFO, align 4
  %380 = call i32 @wpa_printf(i32 %379, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %381 = load i32, i32* @MSG_MSGDUMP, align 4
  %382 = load i32, i32* @EAP_PSK_MAC_LEN, align 4
  %383 = call i32 @wpa_hexdump(i32 %381, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %20, i32 %382)
  %384 = load i8*, i8** @FAILURE, align 8
  %385 = ptrtoint i8* %384 to i64
  %386 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %387 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %386, i32 0, i32 0
  store i64 %385, i64* %387, align 8
  store i32 1, i32* %16, align 4
  br label %392

388:                                              ; preds = %363
  %389 = load i64, i64* @PSK_3, align 8
  %390 = load %struct.eap_psk_data*, %struct.eap_psk_data** %5, align 8
  %391 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  store i32 0, i32* %16, align 4
  br label %392

392:                                              ; preds = %388, %378, %356, %299, %251, %224, %196, %87, %63, %39, %26
  %393 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %393)
  %394 = load i32, i32* %16, align 4
  switch i32 %394, label %396 [
    i32 0, label %395
    i32 1, label %395
  ]

395:                                              ; preds = %392, %392
  ret void

396:                                              ; preds = %392
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @eap_hdr_validate(i64, i64, %struct.wpabuf*, i64*) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @os_memdup(i32*, i64) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #2

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i64, i32) #2

declare dso_local i64 @eap_psk_key_setup(i32*, i32, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i64 @omac1_aes_128(i32, i32*, i64, i32*) #2

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
