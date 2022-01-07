; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.radius_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.radius_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.radius_session = type { i8*, i32, i64, i32, i32*, %struct.radius_msg*, %struct.TYPE_6__*, i32, i32, %struct.radius_msg*, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.wpabuf*, i64, i32, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.radius_hdr = type { i64, i32, %struct.sockaddr* }

@RADIUS_ATTR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Request for session 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"State attribute included but no session found\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not create a new session\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Duplicate message from %s\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"sendto[RADIUS SRV]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"No previous reply available for duplicate message\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"No EAP-Message in RADIUS packet from %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Received EAP data\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"EAP data from the state machine\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"No EAP data from the state machine, but eapFail set\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"No EAP data from the state machine - ignore this Access-Request silently (assuming it was a duplicate)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"EAP authentication failed\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"EAP authentication succeeded\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Reply to %s:%d\00", align 1
@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"Sending Access-Accept\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Sending Access-Reject\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Removing completed session 0x%x after timeout\00", align 1
@radius_server_session_remove_timeout = common dso_local global i32 0, align 4
@RADIUS_SESSION_MAINTAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_server_data*, %struct.radius_msg*, %struct.sockaddr*, i32, %struct.radius_client*, i8*, i32, %struct.radius_session*)* @radius_server_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_server_request(%struct.radius_server_data* %0, %struct.radius_msg* %1, %struct.sockaddr* %2, i32 %3, %struct.radius_client* %4, i8* %5, i32 %6, %struct.radius_session* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.radius_server_data*, align 8
  %11 = alloca %struct.radius_msg*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.radius_client*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.radius_session*, align 8
  %18 = alloca %struct.wpabuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.radius_session*, align 8
  %24 = alloca %struct.radius_msg*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.wpabuf*, align 8
  %27 = alloca %struct.wpabuf*, align 8
  %28 = alloca %struct.radius_hdr*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %10, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %11, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.radius_client* %4, %struct.radius_client** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.radius_session* %7, %struct.radius_session** %17, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %25, align 4
  %29 = load %struct.radius_session*, %struct.radius_session** %17, align 8
  %30 = icmp ne %struct.radius_session* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load %struct.radius_session*, %struct.radius_session** %17, align 8
  store %struct.radius_session* %32, %struct.radius_session** %23, align 8
  br label %52

33:                                               ; preds = %8
  %34 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %35 = load i32, i32* @RADIUS_ATTR_STATE, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %37 = call i32 @radius_msg_get_attr(%struct.radius_msg* %34, i32 %35, i32* %36, i32 16)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %46 = call i32 @WPA_GET_BE32(i32* %45)
  store i32 %46, i32* %22, align 4
  %47 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %48 = load i32, i32* %22, align 4
  %49 = call %struct.radius_session* @radius_server_get_session(%struct.radius_client* %47, i32 %48)
  store %struct.radius_session* %49, %struct.radius_session** %23, align 8
  br label %51

50:                                               ; preds = %33
  store %struct.radius_session* null, %struct.radius_session** %23, align 8
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %54 = icmp ne %struct.radius_session* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %57 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %93

60:                                               ; preds = %52
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %66 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %67 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @radius_server_reject(%struct.radius_server_data* %65, %struct.radius_client* %66, %struct.radius_msg* %67, %struct.sockaddr* %68, i32 %69, i8* %70, i32 %71)
  store i32 -1, i32* %9, align 4
  br label %502

73:                                               ; preds = %60
  %74 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %75 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %76 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call %struct.radius_session* @radius_server_get_new_session(%struct.radius_server_data* %74, %struct.radius_client* %75, %struct.radius_msg* %76, i8* %77)
  store %struct.radius_session* %78, %struct.radius_session** %23, align 8
  %79 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %80 = icmp eq %struct.radius_session* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %84 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %85 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @radius_server_reject(%struct.radius_server_data* %83, %struct.radius_client* %84, %struct.radius_msg* %85, %struct.sockaddr* %86, i32 %87, i8* %88, i32 %89)
  store i32 -1, i32* %9, align 4
  br label %502

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %95 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %160

99:                                               ; preds = %93
  %100 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %101 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %104 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %103)
  %105 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %102, %106
  br i1 %107, label %108, label %160

108:                                              ; preds = %99
  %109 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %110 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %113 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %112)
  %114 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %113, i32 0, i32 2
  %115 = load %struct.sockaddr*, %struct.sockaddr** %114, align 8
  %116 = call i64 @os_memcmp(i32* %111, %struct.sockaddr* %115, i32 16)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %108
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  %121 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %122 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %127 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %132 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %131, i32 0, i32 5
  %133 = load %struct.radius_msg*, %struct.radius_msg** %132, align 8
  %134 = icmp ne %struct.radius_msg* %133, null
  br i1 %134, label %135, label %158

135:                                              ; preds = %118
  %136 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %137 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %136, i32 0, i32 5
  %138 = load %struct.radius_msg*, %struct.radius_msg** %137, align 8
  %139 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %138)
  store %struct.wpabuf* %139, %struct.wpabuf** %26, align 8
  %140 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %141 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %144 = call i32 @wpabuf_head(%struct.wpabuf* %143)
  %145 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %146 = call i32 @wpabuf_len(%struct.wpabuf* %145)
  %147 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @sendto(i32 %142, i32 %144, i32 %146, i32 0, %struct.sockaddr* %147, i32 %148)
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %135
  %153 = load i32, i32* @MSG_INFO, align 4
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 @wpa_printf(i32 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %135
  store i32 0, i32* %9, align 4
  br label %502

158:                                              ; preds = %118
  %159 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %502

160:                                              ; preds = %108, %99, %93
  %161 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %162 = call %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg* %161)
  store %struct.wpabuf* %162, %struct.wpabuf** %18, align 8
  %163 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %164 = icmp eq %struct.wpabuf* %163, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %167 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %166, i32 0, i32 11
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %172 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %173 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %174 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %175 = call %struct.radius_msg* @radius_server_macacl(%struct.radius_server_data* %171, %struct.radius_client* %172, %struct.radius_session* %173, %struct.radius_msg* %174)
  store %struct.radius_msg* %175, %struct.radius_msg** %24, align 8
  %176 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %177 = icmp eq %struct.radius_msg* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store i32 -1, i32* %9, align 4
  br label %502

179:                                              ; preds = %170
  br label %373

180:                                              ; preds = %165, %160
  %181 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %182 = icmp eq %struct.wpabuf* %181, null
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load i8*, i8** %15, align 8
  %185 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %184)
  %186 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %187 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %192 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  store i32 -1, i32* %9, align 4
  br label %502

196:                                              ; preds = %180
  %197 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %198 = call i32 @wpabuf_head(%struct.wpabuf* %197)
  %199 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %200 = call i32 @wpabuf_len(%struct.wpabuf* %199)
  %201 = call i32 @RADIUS_DUMP(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %200)
  %202 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %203 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %202, i32 0, i32 6
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = load %struct.wpabuf*, %struct.wpabuf** %205, align 8
  %207 = call i32 @wpabuf_free(%struct.wpabuf* %206)
  %208 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %209 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %210 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %209, i32 0, i32 6
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 5
  store %struct.wpabuf* %208, %struct.wpabuf** %212, align 8
  %213 = load i32, i32* @TRUE, align 4
  %214 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %215 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %214, i32 0, i32 6
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 4
  store i32 %213, i32* %217, align 8
  %218 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %219 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @eap_server_sm_step(i32 %220)
  %222 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %223 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %222, i32 0, i32 6
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %196
  %229 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %230 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %229, i32 0, i32 6
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %228
  %236 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %237 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %236, i32 0, i32 6
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %235, %228, %196
  %243 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %244 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %243, i32 0, i32 6
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load %struct.wpabuf*, %struct.wpabuf** %246, align 8
  %248 = icmp ne %struct.wpabuf* %247, null
  br i1 %248, label %249, label %263

249:                                              ; preds = %242
  %250 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %251 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %250, i32 0, i32 6
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 2
  %254 = load %struct.wpabuf*, %struct.wpabuf** %253, align 8
  %255 = call i32 @wpabuf_head(%struct.wpabuf* %254)
  %256 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %257 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %256, i32 0, i32 6
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load %struct.wpabuf*, %struct.wpabuf** %259, align 8
  %261 = call i32 @wpabuf_len(%struct.wpabuf* %260)
  %262 = call i32 @RADIUS_DUMP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %255, i32 %261)
  br label %318

263:                                              ; preds = %242, %235
  %264 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %265 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %264, i32 0, i32 6
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %317

272:                                              ; preds = %263
  %273 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %274 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @eap_sm_method_pending(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %305

278:                                              ; preds = %272
  %279 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %280 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %279, i32 0, i32 9
  %281 = load %struct.radius_msg*, %struct.radius_msg** %280, align 8
  %282 = call i32 @radius_msg_free(%struct.radius_msg* %281)
  %283 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %284 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %285 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %284, i32 0, i32 9
  store %struct.radius_msg* %283, %struct.radius_msg** %285, align 8
  %286 = load i32, i32* %16, align 4
  %287 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %288 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 8
  %289 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %290 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @os_free(i32 %291)
  %293 = load i8*, i8** %15, align 8
  %294 = call i32 @os_strdup(i8* %293)
  %295 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %296 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %299 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 8
  %300 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %301 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %300, i32 0, i32 7
  %302 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @os_memcpy(i32* %301, %struct.sockaddr* %302, i32 %303)
  store i32 -2, i32* %9, align 4
  br label %502

305:                                              ; preds = %272
  %306 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i64 0, i64 0))
  %307 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %308 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  %312 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %313 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 4
  store i32 -1, i32* %9, align 4
  br label %502

317:                                              ; preds = %270
  br label %318

318:                                              ; preds = %317, %249
  %319 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %320 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %319, i32 0, i32 6
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %318
  %326 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %327 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %326, i32 0, i32 6
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %325, %318
  store i32 1, i32* %25, align 4
  br label %333

333:                                              ; preds = %332, %325
  %334 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %335 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %334, i32 0, i32 6
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %342 = call i32 @srv_log(%struct.radius_session* %341, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %343 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %344 = call i32 @db_update_last_msk(%struct.radius_session* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %356

345:                                              ; preds = %333
  %346 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %347 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %346, i32 0, i32 6
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %345
  %353 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %354 = call i32 @srv_log(%struct.radius_session* %353, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %355

355:                                              ; preds = %352, %345
  br label %356

356:                                              ; preds = %355, %340
  %357 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %358 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %357, i32 0, i32 6
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %356
  %364 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %365 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %366 = call i32 @radius_server_hs20_t_c_check(%struct.radius_session* %364, %struct.radius_msg* %365)
  br label %367

367:                                              ; preds = %363, %356
  %368 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %369 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %370 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %371 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %372 = call %struct.radius_msg* @radius_server_encapsulate_eap(%struct.radius_server_data* %368, %struct.radius_client* %369, %struct.radius_session* %370, %struct.radius_msg* %371)
  store %struct.radius_msg* %372, %struct.radius_msg** %24, align 8
  br label %373

373:                                              ; preds = %367, %179
  %374 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %375 = icmp ne %struct.radius_msg* %374, null
  br i1 %375, label %376, label %473

376:                                              ; preds = %373
  %377 = load i8*, i8** %15, align 8
  %378 = load i32, i32* %16, align 4
  %379 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %377, i32 %378)
  %380 = load i64, i64* @wpa_debug_level, align 8
  %381 = load i64, i64* @MSG_MSGDUMP, align 8
  %382 = icmp sle i64 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %376
  %384 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %385 = call i32 @radius_msg_dump(%struct.radius_msg* %384)
  br label %386

386:                                              ; preds = %383, %376
  %387 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %388 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %387)
  %389 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  switch i32 %390, label %428 [
    i32 130, label %391
    i32 128, label %404
    i32 129, label %417
  ]

391:                                              ; preds = %386
  %392 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %393 = call i32 @srv_log(%struct.radius_session* %392, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %394 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %395 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  %399 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %400 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 4
  br label %428

404:                                              ; preds = %386
  %405 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %406 = call i32 @srv_log(%struct.radius_session* %405, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %407 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %408 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4
  %412 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %413 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %414, align 4
  br label %428

417:                                              ; preds = %386
  %418 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %419 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %420, align 4
  %423 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %424 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %425, align 4
  br label %428

428:                                              ; preds = %386, %417, %404, %391
  %429 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %430 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %429)
  store %struct.wpabuf* %430, %struct.wpabuf** %27, align 8
  %431 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %432 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %435 = call i32 @wpabuf_head(%struct.wpabuf* %434)
  %436 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %437 = call i32 @wpabuf_len(%struct.wpabuf* %436)
  %438 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %439 = load i32, i32* %13, align 4
  %440 = call i32 @sendto(i32 %433, i32 %435, i32 %437, i32 0, %struct.sockaddr* %438, i32 %439)
  store i32 %440, i32* %19, align 4
  %441 = load i32, i32* %19, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %428
  %444 = load i32, i32* @MSG_INFO, align 4
  %445 = load i32, i32* @errno, align 4
  %446 = call i32 @strerror(i32 %445)
  %447 = call i32 @wpa_printf(i32 %444, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %443, %428
  %449 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %450 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %449, i32 0, i32 5
  %451 = load %struct.radius_msg*, %struct.radius_msg** %450, align 8
  %452 = call i32 @radius_msg_free(%struct.radius_msg* %451)
  %453 = load %struct.radius_msg*, %struct.radius_msg** %24, align 8
  %454 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %455 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %454, i32 0, i32 5
  store %struct.radius_msg* %453, %struct.radius_msg** %455, align 8
  %456 = load i32, i32* %16, align 4
  %457 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %458 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %457, i32 0, i32 1
  store i32 %456, i32* %458, align 8
  %459 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %460 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %459)
  store %struct.radius_hdr* %460, %struct.radius_hdr** %28, align 8
  %461 = load %struct.radius_hdr*, %struct.radius_hdr** %28, align 8
  %462 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %465 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %464, i32 0, i32 2
  store i64 %463, i64* %465, align 8
  %466 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %467 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %466, i32 0, i32 4
  %468 = load i32*, i32** %467, align 8
  %469 = load %struct.radius_hdr*, %struct.radius_hdr** %28, align 8
  %470 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %469, i32 0, i32 2
  %471 = load %struct.sockaddr*, %struct.sockaddr** %470, align 8
  %472 = call i32 @os_memcpy(i32* %468, %struct.sockaddr* %471, i32 16)
  br label %484

473:                                              ; preds = %373
  %474 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %475 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %476, align 4
  %479 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %480 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %481, align 4
  br label %484

484:                                              ; preds = %473, %448
  %485 = load i32, i32* %25, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %501

487:                                              ; preds = %484
  %488 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %489 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %488, i32 0, i32 0
  %490 = load i8*, i8** %489, align 8
  %491 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i8* %490)
  %492 = load i32, i32* @radius_server_session_remove_timeout, align 4
  %493 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %494 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %495 = call i32 @eloop_cancel_timeout(i32 %492, %struct.radius_server_data* %493, %struct.radius_session* %494)
  %496 = load i32, i32* @RADIUS_SESSION_MAINTAIN, align 4
  %497 = load i32, i32* @radius_server_session_remove_timeout, align 4
  %498 = load %struct.radius_server_data*, %struct.radius_server_data** %10, align 8
  %499 = load %struct.radius_session*, %struct.radius_session** %23, align 8
  %500 = call i32 @eloop_register_timeout(i32 %496, i32 0, i32 %497, %struct.radius_server_data* %498, %struct.radius_session* %499)
  br label %501

501:                                              ; preds = %487, %484
  store i32 0, i32* %9, align 4
  br label %502

502:                                              ; preds = %501, %305, %278, %183, %178, %158, %157, %81, %63
  %503 = load i32, i32* %9, align 4
  ret i32 %503
}

declare dso_local i32 @radius_msg_get_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local %struct.radius_session* @radius_server_get_session(%struct.radius_client*, i32) #1

declare dso_local i32 @RADIUS_DEBUG(i8*, ...) #1

declare dso_local i32 @radius_server_reject(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_msg*, %struct.sockaddr*, i32, i8*, i32) #1

declare dso_local %struct.radius_session* @radius_server_get_new_session(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_msg*, i8*) #1

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i64 @os_memcmp(i32*, %struct.sockaddr*, i32) #1

declare dso_local %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg*) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg*) #1

declare dso_local %struct.radius_msg* @radius_server_macacl(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_session*, %struct.radius_msg*) #1

declare dso_local i32 @RADIUS_DUMP(i8*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_server_sm_step(i32) #1

declare dso_local i64 @eap_sm_method_pending(i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i32 @os_memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @srv_log(%struct.radius_session*, i8*) #1

declare dso_local i32 @db_update_last_msk(%struct.radius_session*, i8*) #1

declare dso_local i32 @radius_server_hs20_t_c_check(%struct.radius_session*, %struct.radius_msg*) #1

declare dso_local %struct.radius_msg* @radius_server_encapsulate_eap(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_session*, %struct.radius_msg*) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_server_data*, %struct.radius_session*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.radius_server_data*, %struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
