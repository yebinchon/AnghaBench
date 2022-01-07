; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_parseEapReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_parseEapReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8*, i32, %struct.TYPE_2__*, i8*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@EAP_TYPE_NONE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"EAP: Ignored truncated EAP-Packet (len=%lu plen=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP: Too short EAP-Request - no Type field\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_TYPE_EXPANDED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"EAP: Ignored truncated expanded EAP-Packet (plen=%lu)\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"EAP: Received EAP-Request id=%d method=%u vendor=%u vendorMethod=%u\00", align 1
@EAP_TYPE_LEAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP: Too short EAP-Response - no Type field\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"EAP: Received EAP-Response for LEAP method=%d id=%d\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"EAP: Ignored EAP-Response\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP: Received EAP-Success\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"EAP: Received EAP-Failure\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@NO_EAP_METHOD_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"EAP: Ignored EAP-Packet with unknown code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.wpabuf*)* @eap_sm_parseEapReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sm_parseEapReq(%struct.eap_sm* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [1 x i8**], align 8
  %9 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %10 = load i8*, i8** @FALSE, align 8
  %11 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %14 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %13, i32 0, i32 3
  store i8* %10, i8** %14, align 8
  %15 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 6
  store i8* %10, i8** %16, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 10
  store i8* %10, i8** %18, align 8
  %19 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = load i8*, i8** @EAP_TYPE_NONE, align 8
  %22 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %23 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %25 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @EAP_TYPE_NONE, align 8
  %28 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = icmp eq %struct.wpabuf* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %34 = call i64 @wpabuf_len(%struct.wpabuf* %33)
  %35 = icmp ult i64 %34, 12
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %2
  br label %231

37:                                               ; preds = %32
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = call i8* @wpabuf_head(%struct.wpabuf* %38)
  %40 = bitcast i8* %39 to %struct.eap_hdr*
  store %struct.eap_hdr* %40, %struct.eap_hdr** %5, align 8
  %41 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be_to_host16(i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = call i64 @wpabuf_len(%struct.wpabuf* %46)
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = call i64 @wpabuf_len(%struct.wpabuf* %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  br label %231

55:                                               ; preds = %37
  %56 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %62 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %61, i32 0, i32 12
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i8* @wpabuf_head(%struct.wpabuf* %66)
  %68 = bitcast i8* %67 to i8**
  %69 = getelementptr inbounds [1 x i8**], [1 x i8**]* %8, i64 0, i64 0
  store i8** %68, i8*** %69, align 8
  %70 = getelementptr inbounds [1 x i8**], [1 x i8**]* %8, i64 0, i64 0
  %71 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %72 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @sha1_vector(i32 1, i8*** %70, i64* %6, i32 %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %225 [
    i32 130, label %79
    i32 129, label %135
    i32 128, label %169
    i32 133, label %177
    i32 131, label %215
    i32 132, label %220
  ]

79:                                               ; preds = %75
  %80 = load i64, i64* %6, align 8
  %81 = icmp ult i64 %80, 13
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %231

85:                                               ; preds = %79
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %88 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %90 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %89, i64 1
  %91 = bitcast %struct.eap_hdr* %90 to i8**
  store i8** %91, i8*** %7, align 8
  %92 = load i8**, i8*** %7, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %7, align 8
  %94 = load i8*, i8** %92, align 8
  %95 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %96 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** @EAP_TYPE_EXPANDED, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %85
  %103 = load i64, i64* %6, align 8
  %104 = icmp ult i64 %103, 20
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i64, i64* %6, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  br label %231

109:                                              ; preds = %102
  %110 = load i8**, i8*** %7, align 8
  %111 = call i32 @WPA_GET_BE24(i8** %110)
  %112 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %113 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  %114 = load i8**, i8*** %7, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 3
  store i8** %115, i8*** %7, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = call i8* @WPA_GET_BE32(i8** %116)
  %118 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %119 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %109, %85
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %126 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %129 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %132 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %124, i8* %127, i32 %130, i8* %133)
  br label %231

135:                                              ; preds = %75
  %136 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %137 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @EAP_TYPE_LEAP, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135
  %142 = load i64, i64* %6, align 8
  %143 = icmp ult i64 %142, 13
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %231

147:                                              ; preds = %141
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %150 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %152 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %151, i64 1
  %153 = bitcast %struct.eap_hdr* %152 to i8**
  store i8** %153, i8*** %7, align 8
  %154 = load i8**, i8*** %7, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %157 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %160 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %163 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %161, i32 %164)
  br label %231

166:                                              ; preds = %135
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %231

169:                                              ; preds = %75
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %172 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %173 = call i32 @eap_notify_status(%struct.eap_sm* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %174 = load i8*, i8** @TRUE, align 8
  %175 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %176 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  br label %231

177:                                              ; preds = %75
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %180 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %181 = call i32 @eap_notify_status(%struct.eap_sm* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %182 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %183 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = icmp ne %struct.TYPE_2__* %184, null
  br i1 %185, label %186, label %211

186:                                              ; preds = %177
  %187 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %188 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32 (i32)*, i32 (i32)** %190, align 8
  %192 = icmp ne i32 (i32)* %191, null
  br i1 %192, label %193, label %211

193:                                              ; preds = %186
  %194 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %195 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %194, i32 0, i32 2
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32 (i32)*, i32 (i32)** %197, align 8
  %199 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %200 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %198(i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @NO_EAP_METHOD_ERROR, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %193
  %207 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @eap_report_error(%struct.eap_sm* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %193
  br label %211

211:                                              ; preds = %210, %186, %177
  %212 = load i8*, i8** @TRUE, align 8
  %213 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %214 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  br label %231

215:                                              ; preds = %75
  %216 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %217 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %218 = load i64, i64* %6, align 8
  %219 = call i32 @eap_peer_initiate(%struct.eap_sm* %216, %struct.eap_hdr* %217, i64 %218)
  br label %231

220:                                              ; preds = %75
  %221 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %222 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = call i32 @eap_peer_finish(%struct.eap_sm* %221, %struct.eap_hdr* %222, i64 %223)
  br label %231

225:                                              ; preds = %75
  %226 = load i32, i32* @MSG_DEBUG, align 4
  %227 = load %struct.eap_hdr*, %struct.eap_hdr** %5, align 8
  %228 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i32, i8*, ...) @wpa_printf(i32 %226, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %36, %49, %82, %105, %144, %225, %220, %215, %211, %169, %166, %147, %120
  ret void
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i8* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @sha1_vector(i32, i8***, i64*, i32) #1

declare dso_local i32 @WPA_GET_BE24(i8**) #1

declare dso_local i8* @WPA_GET_BE32(i8**) #1

declare dso_local i32 @eap_notify_status(%struct.eap_sm*, i8*, i8*) #1

declare dso_local i32 @eap_report_error(%struct.eap_sm*, i32) #1

declare dso_local i32 @eap_peer_initiate(%struct.eap_sm*, %struct.eap_hdr*, i64) #1

declare dso_local i32 @eap_peer_finish(%struct.eap_sm*, %struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
