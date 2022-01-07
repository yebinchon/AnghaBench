; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_receive_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_receive_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.radius_client = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.radius_msg = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { i8* }

@RADIUS_MAX_MSG_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"recvfrom[radius_server]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Received %d bytes from %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Received data\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unknown client %s - packet ignored\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Parsing incoming RADIUS frame failed\00", align 1
@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i64 0, align 8
@RADIUS_CODE_DISCONNECT_ACK = common dso_local global i8* null, align 8
@RADIUS_CODE_DISCONNECT_NAK = common dso_local global i8* null, align 8
@RADIUS_CODE_COA_ACK = common dso_local global i8* null, align 8
@RADIUS_CODE_COA_NAK = common dso_local global i8* null, align 8
@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Unexpected RADIUS code %d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Invalid Message-Authenticator from %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @radius_server_receive_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_receive_auth(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radius_server_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.anon, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radius_client*, align 8
  %13 = alloca %struct.radius_msg*, align 8
  %14 = alloca [50 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.radius_server_data*
  store %struct.radius_server_data* %17, %struct.radius_server_data** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.radius_client* null, %struct.radius_client** %12, align 8
  store %struct.radius_msg* null, %struct.radius_msg** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @RADIUS_MAX_MSG_LEN, align 4
  %19 = call i32* @os_malloc(i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %220

23:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @RADIUS_MAX_MSG_LEN, align 4
  %27 = bitcast %union.anon* %9 to %struct.sockaddr_storage*
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  %29 = call i32 @recvfrom(i32 %24, i32* %25, i32 %26, i32 0, %struct.sockaddr* %28, i32* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %220

37:                                               ; preds = %23
  %38 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %39 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %44 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inet_ntoa(i32 %47)
  %49 = call i32 @os_strlcpy(i8* %43, i32 %48, i32 50)
  %50 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55, i32 %56)
  %58 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %59 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 0
  %61 = call %struct.radius_client* @radius_server_get_client(%struct.radius_server_data* %58, %struct.in_addr* %60, i32 0)
  store %struct.radius_client* %61, %struct.radius_client** %12, align 8
  br label %62

62:                                               ; preds = %42, %37
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @RADIUS_DUMP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %63, i32 %64)
  %66 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %67 = icmp eq %struct.radius_client* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %70 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %72 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %220

76:                                               ; preds = %62
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.radius_msg* @radius_msg_parse(i32* %77, i32 %78)
  store %struct.radius_msg* %79, %struct.radius_msg** %13, align 8
  %80 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %81 = icmp eq %struct.radius_msg* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %85 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %90 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %220

94:                                               ; preds = %76
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @os_free(i32* %95)
  store i32* null, i32** %8, align 8
  %97 = load i64, i64* @wpa_debug_level, align 8
  %98 = load i64, i64* @MSG_MSGDUMP, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %102 = call i32 @radius_msg_dump(%struct.radius_msg* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %105 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** @RADIUS_CODE_DISCONNECT_ACK, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %112 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %113 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %114 = call i32 @radius_server_receive_disconnect_resp(%struct.radius_server_data* %111, %struct.radius_client* %112, %struct.radius_msg* %113, i32 1)
  br label %225

115:                                              ; preds = %103
  %116 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %117 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** @RADIUS_CODE_DISCONNECT_NAK, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %124 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %125 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %126 = call i32 @radius_server_receive_disconnect_resp(%struct.radius_server_data* %123, %struct.radius_client* %124, %struct.radius_msg* %125, i32 0)
  br label %225

127:                                              ; preds = %115
  %128 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %129 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** @RADIUS_CODE_COA_ACK, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %136 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %137 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %138 = call i32 @radius_server_receive_coa_resp(%struct.radius_server_data* %135, %struct.radius_client* %136, %struct.radius_msg* %137, i32 1)
  br label %225

139:                                              ; preds = %127
  %140 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %141 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** @RADIUS_CODE_COA_NAK, align 8
  %145 = icmp eq i8* %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %148 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %149 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %150 = call i32 @radius_server_receive_coa_resp(%struct.radius_server_data* %147, %struct.radius_client* %148, %struct.radius_msg* %149, i32 0)
  br label %225

151:                                              ; preds = %139
  %152 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %153 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %152)
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** @RADIUS_CODE_ACCESS_REQUEST, align 8
  %157 = icmp ne i8* %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %151
  %159 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %160 = call %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg* %159)
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  %164 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %165 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %170 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  br label %220

174:                                              ; preds = %151
  %175 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %176 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %181 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %186 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %187 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %191 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @radius_msg_verify_msg_auth(%struct.radius_msg* %185, i32* %189, i32 %192, i32* null)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %174
  %196 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %197 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %196)
  %198 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %199 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %204 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %220

208:                                              ; preds = %174
  %209 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %210 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %211 = bitcast %union.anon* %9 to %struct.sockaddr*
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.radius_client*, %struct.radius_client** %12, align 8
  %214 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @radius_server_request(%struct.radius_server_data* %209, %struct.radius_msg* %210, %struct.sockaddr* %211, i32 %212, %struct.radius_client* %213, i8* %214, i32 %215, i32* null)
  %217 = icmp eq i32 %216, -2
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %225

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %195, %158, %82, %68, %32, %22
  %221 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %222 = call i32 @radius_msg_free(%struct.radius_msg* %221)
  %223 = load i32*, i32** %8, align 8
  %224 = call i32 @os_free(i32* %223)
  br label %225

225:                                              ; preds = %220, %218, %146, %134, %122, %110
  ret void
}

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @RADIUS_DEBUG(i8*, ...) #1

declare dso_local %struct.radius_client* @radius_server_get_client(%struct.radius_server_data*, %struct.in_addr*, i32) #1

declare dso_local i32 @RADIUS_DUMP(i8*, i32*, i32) #1

declare dso_local %struct.radius_msg* @radius_msg_parse(i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local %struct.TYPE_6__* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i32 @radius_server_receive_disconnect_resp(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_msg*, i32) #1

declare dso_local i32 @radius_server_receive_coa_resp(%struct.radius_server_data*, %struct.radius_client*, %struct.radius_msg*, i32) #1

declare dso_local i64 @radius_msg_verify_msg_auth(%struct.radius_msg*, i32*, i32, i32*) #1

declare dso_local i32 @radius_server_request(%struct.radius_server_data*, %struct.radius_msg*, %struct.sockaddr*, i32, %struct.radius_client*, i8*, i32, i32*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
