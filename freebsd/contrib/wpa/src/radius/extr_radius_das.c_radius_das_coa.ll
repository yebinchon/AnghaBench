; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_coa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_coa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_das_data = type { i32 (i32, %struct.radius_das_attrs*)*, i32 }
%struct.radius_das_attrs = type opaque
%struct.radius_msg = type { i32 }
%struct.radius_hdr = type { i32 }
%struct.radius_das_attrs.0 = type { i32*, i32*, i32*, i64, i32*, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32* }

@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@RADIUS_ATTR_NAS_IP_ADDRESS = common dso_local global i32 0, align 4
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTR_NAS_IDENTIFIER = common dso_local global i32 0, align 4
@RADIUS_ATTR_ACCT_SESSION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTR_ACCT_MULTI_SESSION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTR_EVENT_TIMESTAMP = common dso_local global i32 0, align 4
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i32 0, align 4
@RADIUS_ATTR_CHARGEABLE_USER_IDENTITY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DAS: CoA not supported\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"DAS: Unsupported attribute %u in CoA-Request from %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"DAS: Invalid NAS-IP-Address from %s:%d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"DAS: Invalid Calling-Station-Id '%s' from %s:%d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"DAS: NAS mismatch from %s:%d\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"DAS: Session not found for request from %s:%d\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"DAS: Multiple sessions match for request from %s:%d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"DAS: CoA failed for request from %s:%d\00", align 1
@RADIUS_CODE_COA_NAK = common dso_local global i32 0, align 4
@RADIUS_CODE_COA_ACK = common dso_local global i32 0, align 4
@RADIUS_ATTR_ERROR_CAUSE = common dso_local global i32 0, align 4
@RADIUS_ATTR_NAS_IPV6_ADDRESS = common dso_local global i32 0, align 4
@RADIUS_ATTR_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_T_C_FILTERING = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ID_WFA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_msg* (%struct.radius_das_data*, %struct.radius_msg*, i8*, i32)* @radius_das_coa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_msg* @radius_das_coa(%struct.radius_das_data* %0, %struct.radius_msg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca %struct.radius_das_data*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radius_hdr*, align 8
  %11 = alloca %struct.radius_msg*, align 8
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.radius_das_attrs.0, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [100 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.radius_das_data* %0, %struct.radius_das_data** %6, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %24 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @RADIUS_ATTR_NAS_IP_ADDRESS, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @RADIUS_ATTR_NAS_IDENTIFIER, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @RADIUS_ATTR_ACCT_SESSION_ID, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @RADIUS_ATTR_ACCT_MULTI_SESSION_ID, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @RADIUS_ATTR_EVENT_TIMESTAMP, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %41, align 4
  store i32 405, i32* %13, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %20, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %21, align 8
  %46 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %47 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %46)
  store %struct.radius_hdr* %47, %struct.radius_hdr** %10, align 8
  %48 = load %struct.radius_das_data*, %struct.radius_das_data** %6, align 8
  %49 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %48, i32 0, i32 0
  %50 = load i32 (i32, %struct.radius_das_attrs*)*, i32 (i32, %struct.radius_das_attrs*)** %49, align 8
  %51 = icmp ne i32 (i32, %struct.radius_das_attrs*)* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %4
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %193

55:                                               ; preds = %4
  %56 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %58 = call i32 @radius_msg_find_unlisted_attr(%struct.radius_msg* %56, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i32 %65)
  store i32 401, i32* %13, align 4
  br label %193

67:                                               ; preds = %55
  %68 = call i32 @os_memset(%struct.radius_das_attrs.0* %16, i32 0, i32 112)
  %69 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %70 = load i32, i32* @RADIUS_ATTR_NAS_IP_ADDRESS, align 4
  %71 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %69, i32 %70, i32** %17, i64* %18, i32* null)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load i64, i64* %18, align 8
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32 %79)
  store i32 407, i32* %13, align 4
  br label %193

81:                                               ; preds = %73
  %82 = load i32*, i32** %17, align 8
  %83 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 0
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %81, %67
  %85 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %86 = load i32, i32* @RADIUS_ATTR_NAS_IDENTIFIER, align 4
  %87 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %85, i32 %86, i32** %17, i64* %18, i32* null)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 2
  store i32* %90, i32** %91, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 3
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %96 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  %97 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %95, i32 %96, i32** %17, i64* %18, i32* null)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %94
  %100 = load i64, i64* %18, align 8
  %101 = icmp uge i64 %100, 100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i64 99, i64* %18, align 8
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %105 = load i32*, i32** %17, align 8
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @os_memcpy(i8* %104, i32* %105, i64 %106)
  %108 = load i64, i64* %18, align 8
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %111 = call i64 @hwaddr_aton2(i8* %110, i32* %45)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %116, i32 %117)
  store i32 407, i32* %13, align 4
  br label %193

119:                                              ; preds = %103
  %120 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 4
  store i32* %45, i32** %120, align 8
  br label %121

121:                                              ; preds = %119, %94
  %122 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %123 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %124 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %122, i32 %123, i32** %17, i64* %18, i32* null)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32*, i32** %17, align 8
  %128 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 5
  store i32* %127, i32** %128, align 8
  %129 = load i64, i64* %18, align 8
  %130 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 6
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %133 = load i32, i32* @RADIUS_ATTR_ACCT_SESSION_ID, align 4
  %134 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %132, i32 %133, i32** %17, i64* %18, i32* null)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 7
  store i32* %137, i32** %138, align 8
  %139 = load i64, i64* %18, align 8
  %140 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 8
  store i64 %139, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %143 = load i32, i32* @RADIUS_ATTR_ACCT_MULTI_SESSION_ID, align 4
  %144 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %142, i32 %143, i32** %17, i64* %18, i32* null)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32*, i32** %17, align 8
  %148 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 9
  store i32* %147, i32** %148, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 10
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %153 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  %154 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %152, i32 %153, i32** %17, i64* %18, i32* null)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 11
  store i32* %157, i32** %158, align 8
  %159 = load i64, i64* %18, align 8
  %160 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 12
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.radius_das_data*, %struct.radius_das_data** %6, align 8
  %163 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %162, i32 0, i32 0
  %164 = load i32 (i32, %struct.radius_das_attrs*)*, i32 (i32, %struct.radius_das_attrs*)** %163, align 8
  %165 = load %struct.radius_das_data*, %struct.radius_das_data** %6, align 8
  %166 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = bitcast %struct.radius_das_attrs.0* %16 to %struct.radius_das_attrs*
  %169 = call i32 %164(i32 %167, %struct.radius_das_attrs* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  switch i32 %170, label %192 [
    i32 130, label %171
    i32 129, label %176
    i32 131, label %181
    i32 132, label %186
    i32 128, label %191
  ]

171:                                              ; preds = %161
  %172 = load i32, i32* @MSG_INFO, align 4
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %173, i32 %174)
  store i32 403, i32* %13, align 4
  br label %192

176:                                              ; preds = %161
  %177 = load i32, i32* @MSG_INFO, align 4
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %178, i32 %179)
  store i32 503, i32* %13, align 4
  br label %192

181:                                              ; preds = %161
  %182 = load i32, i32* @MSG_INFO, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %183, i32 %184)
  store i32 508, i32* %13, align 4
  br label %192

186:                                              ; preds = %161
  %187 = load i32, i32* @MSG_INFO, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %187, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %188, i32 %189)
  store i32 407, i32* %13, align 4
  br label %192

191:                                              ; preds = %161
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %161, %191, %186, %181, %176, %171
  br label %193

193:                                              ; preds = %192, %113, %76, %61, %52
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @RADIUS_CODE_COA_NAK, align 4
  br label %200

198:                                              ; preds = %193
  %199 = load i32, i32* @RADIUS_CODE_COA_ACK, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = load %struct.radius_hdr*, %struct.radius_hdr** %10, align 8
  %203 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call %struct.radius_msg* @radius_msg_new(i32 %201, i32 %204)
  store %struct.radius_msg* %205, %struct.radius_msg** %11, align 8
  %206 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %207 = icmp ne %struct.radius_msg* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %223

209:                                              ; preds = %200
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %214 = load i32, i32* @RADIUS_ATTR_ERROR_CAUSE, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %213, i32 %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %220 = call i32 @radius_msg_free(%struct.radius_msg* %219)
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %223

221:                                              ; preds = %212, %209
  %222 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  store %struct.radius_msg* %222, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %223

223:                                              ; preds = %221, %218, %208
  %224 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  ret %struct.radius_msg* %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @radius_msg_find_unlisted_attr(%struct.radius_msg*, i32*) #2

declare dso_local i32 @os_memset(%struct.radius_das_attrs.0*, i32, i32) #2

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #2

declare dso_local i64 @hwaddr_aton2(i8*, i32*) #2

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #2

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #2

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
