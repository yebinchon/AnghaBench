; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_das_data = type { i32 (i32, %struct.radius_das_attrs*)*, i32 }
%struct.radius_das_attrs = type opaque
%struct.radius_msg = type { i32 }
%struct.radius_hdr = type { i32 }
%struct.radius_das_attrs.0 = type { i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }

@RADIUS_ATTR_USER_NAME = common dso_local global i64 0, align 8
@RADIUS_ATTR_NAS_IP_ADDRESS = common dso_local global i64 0, align 8
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i64 0, align 8
@RADIUS_ATTR_NAS_IDENTIFIER = common dso_local global i64 0, align 8
@RADIUS_ATTR_ACCT_SESSION_ID = common dso_local global i64 0, align 8
@RADIUS_ATTR_ACCT_MULTI_SESSION_ID = common dso_local global i64 0, align 8
@RADIUS_ATTR_EVENT_TIMESTAMP = common dso_local global i64 0, align 8
@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i64 0, align 8
@RADIUS_ATTR_CHARGEABLE_USER_IDENTITY = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"DAS: Unsupported attribute %u in Disconnect-Request from %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DAS: Invalid NAS-IP-Address from %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"DAS: Invalid Calling-Station-Id '%s' from %s:%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DAS: NAS mismatch from %s:%d\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"DAS: Session not found for request from %s:%d\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"DAS: Multiple sessions match for request from %s:%d\00", align 1
@RADIUS_CODE_DISCONNECT_NAK = common dso_local global i32 0, align 4
@RADIUS_CODE_DISCONNECT_ACK = common dso_local global i32 0, align 4
@RADIUS_ATTR_ERROR_CAUSE = common dso_local global i32 0, align 4
@RADIUS_ATTR_NAS_IPV6_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_msg* (%struct.radius_das_data*, %struct.radius_msg*, i8*, i32)* @radius_das_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_msg* @radius_das_disconnect(%struct.radius_das_data* %0, %struct.radius_msg* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca %struct.radius_das_data*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radius_hdr*, align 8
  %11 = alloca %struct.radius_msg*, align 8
  %12 = alloca [10 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.radius_das_attrs.0, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [100 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.radius_das_data* %0, %struct.radius_das_data** %6, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %24 = load i64, i64* @RADIUS_ATTR_USER_NAME, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 1
  %26 = load i64, i64* @RADIUS_ATTR_NAS_IP_ADDRESS, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 1
  %28 = load i64, i64* @RADIUS_ATTR_CALLING_STATION_ID, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 1
  %30 = load i64, i64* @RADIUS_ATTR_NAS_IDENTIFIER, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 1
  %32 = load i64, i64* @RADIUS_ATTR_ACCT_SESSION_ID, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 1
  %34 = load i64, i64* @RADIUS_ATTR_ACCT_MULTI_SESSION_ID, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 1
  %36 = load i64, i64* @RADIUS_ATTR_EVENT_TIMESTAMP, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 1
  %38 = load i64, i64* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 1
  %40 = load i64, i64* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 0, i64* %41, align 8
  store i32 405, i32* %13, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %20, align 8
  %45 = alloca i64, i64 %43, align 16
  store i64 %43, i64* %21, align 8
  %46 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %47 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %46)
  store %struct.radius_hdr* %47, %struct.radius_hdr** %10, align 8
  %48 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %50 = call i64 @radius_msg_find_unlisted_attr(%struct.radius_msg* %48, i64* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %4
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = load i64, i64* %14, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57, i32 %58)
  store i32 401, i32* %13, align 4
  br label %182

60:                                               ; preds = %4
  %61 = call i32 @os_memset(%struct.radius_das_attrs.0* %16, i32 0, i32 104)
  %62 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %63 = load i64, i64* @RADIUS_ATTR_NAS_IP_ADDRESS, align 8
  %64 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %62, i64 %63, i64** %17, i64* %18, i32* null)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i64, i64* %18, align 8
  %68 = icmp ne i64 %67, 4
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %71, i32 %72)
  store i32 407, i32* %13, align 4
  br label %182

74:                                               ; preds = %66
  %75 = load i64*, i64** %17, align 8
  %76 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 12
  store i64* %75, i64** %76, align 8
  br label %77

77:                                               ; preds = %74, %60
  %78 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %79 = load i64, i64* @RADIUS_ATTR_NAS_IDENTIFIER, align 8
  %80 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %78, i64 %79, i64** %17, i64* %18, i32* null)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i64*, i64** %17, align 8
  %84 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 10
  store i64* %83, i64** %84, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %89 = load i64, i64* @RADIUS_ATTR_CALLING_STATION_ID, align 8
  %90 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %88, i64 %89, i64** %17, i64* %18, i32* null)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load i64, i64* %18, align 8
  %94 = icmp uge i64 %93, 100
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i64 99, i64* %18, align 8
  br label %96

96:                                               ; preds = %95, %92
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %98 = load i64*, i64** %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = call i32 @os_memcpy(i8* %97, i64* %98, i64 %99)
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %104 = call i64 @hwaddr_aton2(i8* %103, i64* %45)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* %109, i32 %110)
  store i32 407, i32* %13, align 4
  br label %182

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 9
  store i64* %45, i64** %113, align 8
  br label %114

114:                                              ; preds = %112, %87
  %115 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %116 = load i64, i64* @RADIUS_ATTR_USER_NAME, align 8
  %117 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %115, i64 %116, i64** %17, i64* %18, i32* null)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i64*, i64** %17, align 8
  %121 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 8
  store i64* %120, i64** %121, align 8
  %122 = load i64, i64* %18, align 8
  %123 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %126 = load i64, i64* @RADIUS_ATTR_ACCT_SESSION_ID, align 8
  %127 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %125, i64 %126, i64** %17, i64* %18, i32* null)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i64*, i64** %17, align 8
  %131 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 7
  store i64* %130, i64** %131, align 8
  %132 = load i64, i64* %18, align 8
  %133 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %136 = load i64, i64* @RADIUS_ATTR_ACCT_MULTI_SESSION_ID, align 8
  %137 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %135, i64 %136, i64** %17, i64* %18, i32* null)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i64*, i64** %17, align 8
  %141 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 6
  store i64* %140, i64** %141, align 8
  %142 = load i64, i64* %18, align 8
  %143 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 3
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %146 = load i64, i64* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 8
  %147 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %145, i64 %146, i64** %17, i64* %18, i32* null)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i64*, i64** %17, align 8
  %151 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 5
  store i64* %150, i64** %151, align 8
  %152 = load i64, i64* %18, align 8
  %153 = getelementptr inbounds %struct.radius_das_attrs.0, %struct.radius_das_attrs.0* %16, i32 0, i32 4
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.radius_das_data*, %struct.radius_das_data** %6, align 8
  %156 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %155, i32 0, i32 0
  %157 = load i32 (i32, %struct.radius_das_attrs*)*, i32 (i32, %struct.radius_das_attrs*)** %156, align 8
  %158 = load %struct.radius_das_data*, %struct.radius_das_data** %6, align 8
  %159 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = bitcast %struct.radius_das_attrs.0* %16 to %struct.radius_das_attrs*
  %162 = call i32 %157(i32 %160, %struct.radius_das_attrs* %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  switch i32 %163, label %181 [
    i32 130, label %164
    i32 129, label %169
    i32 131, label %174
    i32 132, label %179
    i32 128, label %180
  ]

164:                                              ; preds = %154
  %165 = load i32, i32* @MSG_INFO, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %166, i32 %167)
  store i32 403, i32* %13, align 4
  br label %181

169:                                              ; preds = %154
  %170 = load i32, i32* @MSG_INFO, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %171, i32 %172)
  store i32 503, i32* %13, align 4
  br label %181

174:                                              ; preds = %154
  %175 = load i32, i32* @MSG_INFO, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %176, i32 %177)
  store i32 508, i32* %13, align 4
  br label %181

179:                                              ; preds = %154
  store i32 405, i32* %13, align 4
  br label %181

180:                                              ; preds = %154
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %154, %180, %179, %174, %169, %164
  br label %182

182:                                              ; preds = %181, %106, %69, %53
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* @RADIUS_CODE_DISCONNECT_NAK, align 4
  br label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @RADIUS_CODE_DISCONNECT_ACK, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = load %struct.radius_hdr*, %struct.radius_hdr** %10, align 8
  %192 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call %struct.radius_msg* @radius_msg_new(i32 %190, i32 %193)
  store %struct.radius_msg* %194, %struct.radius_msg** %11, align 8
  %195 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %196 = icmp eq %struct.radius_msg* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %213

198:                                              ; preds = %189
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %203 = load i32, i32* @RADIUS_ATTR_ERROR_CAUSE, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %202, i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %209 = call i32 @radius_msg_free(%struct.radius_msg* %208)
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %213

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %198
  %212 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  store %struct.radius_msg* %212, %struct.radius_msg** %5, align 8
  store i32 1, i32* %22, align 4
  br label %213

213:                                              ; preds = %211, %207, %197
  %214 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  ret %struct.radius_msg* %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #2

declare dso_local i64 @radius_msg_find_unlisted_attr(%struct.radius_msg*, i64*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #2

declare dso_local i32 @os_memset(%struct.radius_das_attrs.0*, i32, i32) #2

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i64, i64**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i8*, i64*, i64) #2

declare dso_local i64 @hwaddr_aton2(i8*, i64*) #2

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
