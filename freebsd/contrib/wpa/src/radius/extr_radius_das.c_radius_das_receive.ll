; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_das_data = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.radius_msg = type { i32 }
%struct.radius_hdr = type { i32 }
%struct.wpabuf = type { i32 }
%struct.os_time = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DAS: recvfrom: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"DAS: Received %d bytes from %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DAS: Drop message from unknown client\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"DAS: Parsing incoming RADIUS packet from %s:%d failed\00", align 1
@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [80 x i8] c"DAS: Invalid authenticator or Message-Authenticator in packet from %s:%d - drop\00", align 1
@RADIUS_ATTR_EVENT_TIMESTAMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [82 x i8] c"DAS: Unacceptable Event-Timestamp (%u; local time %u) in packet from %s:%d - drop\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"DAS: Missing Event-Timestamp in packet from %s:%d - drop\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"DAS: Unexpected RADIUS code %u in packet from %s:%d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"DAS: Reply to %s:%d\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"DAS: Failed to add Event-Timestamp attribute\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"DAS: Failed to add Message-Authenticator attribute\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"DAS: sendto(to %s:%d): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @radius_das_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_das_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radius_das_data*, align 8
  %8 = alloca [1500 x i32], align 16
  %9 = alloca %union.anon, align 8
  %10 = alloca [50 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.radius_msg*, align 8
  %15 = alloca %struct.radius_msg*, align 8
  %16 = alloca %struct.radius_hdr*, align 8
  %17 = alloca %struct.wpabuf*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.os_time, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.radius_das_data*
  store %struct.radius_das_data* %23, %struct.radius_das_data** %7, align 8
  store i32 0, i32* %11, align 4
  store %struct.radius_msg* null, %struct.radius_msg** %15, align 8
  store i32 16, i32* %12, align 4
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds [1500 x i32], [1500 x i32]* %8, i64 0, i64 0
  %26 = bitcast %union.anon* %9 to %struct.sockaddr_storage*
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr*
  %28 = call i32 @recvfrom(i32 %24, i32* %25, i32 6000, i32 0, %struct.sockaddr* %27, i32* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %248

36:                                               ; preds = %3
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %38 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @inet_ntoa(i64 %41)
  %43 = call i32 @os_strlcpy(i8* %37, i32 %42, i32 50)
  %44 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %50, i32 %51)
  %53 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %54 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %36
  %61 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %62 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %248

75:                                               ; preds = %60, %36
  %76 = getelementptr inbounds [1500 x i32], [1500 x i32]* %8, i64 0, i64 0
  %77 = load i32, i32* %13, align 4
  %78 = call %struct.radius_msg* @radius_msg_parse(i32* %76, i32 %77)
  store %struct.radius_msg* %78, %struct.radius_msg** %14, align 8
  %79 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %80 = icmp eq %struct.radius_msg* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %84)
  br label %248

86:                                               ; preds = %75
  %87 = load i64, i64* @wpa_debug_level, align 8
  %88 = load i64, i64* @MSG_MSGDUMP, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %92 = call i32 @radius_msg_dump(%struct.radius_msg* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %95 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %96 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %99 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %102 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @radius_msg_verify_das_req(%struct.radius_msg* %94, i32 %97, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i8* %108, i32 %109)
  br label %243

111:                                              ; preds = %93
  %112 = call i32 @os_get_time(%struct.os_time* %20)
  %113 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %114 = load i32, i32* @RADIUS_ATTR_EVENT_TIMESTAMP, align 4
  %115 = call i32 @radius_msg_get_attr(%struct.radius_msg* %113, i32 %114, i32* %18, i32 4)
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %143

118:                                              ; preds = %111
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @ntohl(i32 %119)
  store i32 %120, i32* %21, align 4
  %121 = getelementptr inbounds %struct.os_time, %struct.os_time* %20, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %122, %124
  %126 = trunc i64 %125 to i32
  %127 = call i64 @abs(i32 %126)
  %128 = trunc i64 %127 to i32
  %129 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %130 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ugt i32 %128, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %118
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = load i32, i32* %21, align 4
  %136 = getelementptr inbounds %struct.os_time, %struct.os_time* %20, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %138, i8* %139, i32 %140)
  br label %243

142:                                              ; preds = %118
  br label %154

143:                                              ; preds = %111
  %144 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %145 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* %150, i32 %151)
  br label %243

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %142
  %155 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %156 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %155)
  store %struct.radius_hdr* %156, %struct.radius_hdr** %16, align 8
  %157 = load %struct.radius_hdr*, %struct.radius_hdr** %16, align 8
  %158 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %172 [
    i32 128, label %160
    i32 129, label %166
  ]

160:                                              ; preds = %154
  %161 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %162 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %163 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %164 = load i32, i32* %11, align 4
  %165 = call %struct.radius_msg* @radius_das_disconnect(%struct.radius_das_data* %161, %struct.radius_msg* %162, i8* %163, i32 %164)
  store %struct.radius_msg* %165, %struct.radius_msg** %15, align 8
  br label %180

166:                                              ; preds = %154
  %167 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %168 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %169 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %170 = load i32, i32* %11, align 4
  %171 = call %struct.radius_msg* @radius_das_coa(%struct.radius_das_data* %167, %struct.radius_msg* %168, i8* %169, i32 %170)
  store %struct.radius_msg* %171, %struct.radius_msg** %15, align 8
  br label %180

172:                                              ; preds = %154
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = load %struct.radius_hdr*, %struct.radius_hdr** %16, align 8
  %175 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %178 = load i32, i32* %11, align 4
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %176, i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %166, %160
  %181 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %182 = icmp ne %struct.radius_msg* %181, null
  br i1 %182, label %183, label %242

183:                                              ; preds = %180
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %186 = load i32, i32* %11, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %185, i32 %186)
  %188 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %189 = load i32, i32* @RADIUS_ATTR_EVENT_TIMESTAMP, align 4
  %190 = getelementptr inbounds %struct.os_time, %struct.os_time* %20, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %188, i32 %189, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %183
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = call i32 (i32, i8*, ...) @wpa_printf(i32 %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %183
  %198 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %199 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %200 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %203 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.radius_hdr*, %struct.radius_hdr** %16, align 8
  %206 = call i64 @radius_msg_finish_das_resp(%struct.radius_msg* %198, i32 %201, i32 %204, %struct.radius_hdr* %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %197
  %209 = load i32, i32* @MSG_DEBUG, align 4
  %210 = call i32 (i32, i8*, ...) @wpa_printf(i32 %209, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %197
  %212 = load i64, i64* @wpa_debug_level, align 8
  %213 = load i64, i64* @MSG_MSGDUMP, align 8
  %214 = icmp sle i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %217 = call i32 @radius_msg_dump(%struct.radius_msg* %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %220 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %219)
  store %struct.wpabuf* %220, %struct.wpabuf** %17, align 8
  %221 = load %struct.radius_das_data*, %struct.radius_das_data** %7, align 8
  %222 = getelementptr inbounds %struct.radius_das_data, %struct.radius_das_data* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %225 = call i32 @wpabuf_head(%struct.wpabuf* %224)
  %226 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %227 = call i32 @wpabuf_len(%struct.wpabuf* %226)
  %228 = bitcast %union.anon* %9 to %struct.sockaddr_storage*
  %229 = bitcast %struct.sockaddr_storage* %228 to %struct.sockaddr*
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @sendto(i32 %223, i32 %225, i32 %227, i32 0, %struct.sockaddr* %229, i32 %230)
  store i32 %231, i32* %19, align 4
  %232 = load i32, i32* %19, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %218
  %235 = load i32, i32* @MSG_ERROR, align 4
  %236 = getelementptr inbounds [50 x i8], [50 x i8]* %10, i64 0, i64 0
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @errno, align 4
  %239 = call i32 @strerror(i32 %238)
  %240 = call i32 (i32, i8*, ...) @wpa_printf(i32 %235, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %236, i32 %237, i32 %239)
  br label %241

241:                                              ; preds = %234, %218
  br label %242

242:                                              ; preds = %241, %180
  br label %243

243:                                              ; preds = %242, %148, %133, %106
  %244 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %245 = call i32 @radius_msg_free(%struct.radius_msg* %244)
  %246 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %247 = call i32 @radius_msg_free(%struct.radius_msg* %246)
  br label %248

248:                                              ; preds = %243, %81, %72, %31
  ret void
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.radius_msg* @radius_msg_parse(i32*, i32) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local i64 @radius_msg_verify_das_req(%struct.radius_msg*, i32, i32, i32) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @radius_msg_get_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local %struct.radius_msg* @radius_das_disconnect(%struct.radius_das_data*, %struct.radius_msg*, i8*, i32) #1

declare dso_local %struct.radius_msg* @radius_das_coa(%struct.radius_das_data*, %struct.radius_msg*, i8*, i32) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i64) #1

declare dso_local i64 @radius_msg_finish_das_resp(%struct.radius_msg*, i32, i32, %struct.radius_hdr*) #1

declare dso_local %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg*) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
