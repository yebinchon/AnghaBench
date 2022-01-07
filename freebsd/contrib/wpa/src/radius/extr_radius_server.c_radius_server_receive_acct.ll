; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_receive_acct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_receive_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.in_addr, i32 }
%struct.in_addr = type { i32 }
%struct.radius_client = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.radius_msg = type { i32 }
%struct.radius_hdr = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

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
@RADIUS_CODE_ACCOUNTING_REQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unexpected RADIUS code %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid Authenticator from %s\00", align 1
@RADIUS_CODE_ACCOUNTING_RESPONSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Reply to %s:%d\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"sendto[RADIUS SRV]: %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @radius_server_receive_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_receive_acct(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radius_server_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.anon, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radius_client*, align 8
  %14 = alloca %struct.radius_msg*, align 8
  %15 = alloca %struct.radius_msg*, align 8
  %16 = alloca [50 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.radius_hdr*, align 8
  %19 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.radius_server_data*
  store %struct.radius_server_data* %21, %struct.radius_server_data** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.radius_client* null, %struct.radius_client** %13, align 8
  store %struct.radius_msg* null, %struct.radius_msg** %14, align 8
  store %struct.radius_msg* null, %struct.radius_msg** %15, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* @RADIUS_MAX_MSG_LEN, align 4
  %23 = call i32* @os_malloc(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %229

27:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @RADIUS_MAX_MSG_LEN, align 4
  %31 = bitcast %union.anon* %9 to %struct.sockaddr_storage*
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*
  %33 = call i32 @recvfrom(i32 %28, i32* %29, i32 %30, i32 0, %struct.sockaddr* %32, i32* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %229

41:                                               ; preds = %27
  %42 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %43 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %48 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @inet_ntoa(i32 %51)
  %53 = call i32 @os_strlcpy(i8* %47, i32 %52, i32 50)
  %54 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %60 = load i32, i32* %17, align 4
  %61 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %59, i32 %60)
  %62 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %63 = bitcast %union.anon* %9 to %struct.sockaddr_in*
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %63, i32 0, i32 0
  %65 = call %struct.radius_client* @radius_server_get_client(%struct.radius_server_data* %62, %struct.in_addr* %64, i32 0)
  store %struct.radius_client* %65, %struct.radius_client** %13, align 8
  br label %66

66:                                               ; preds = %46, %41
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @RADIUS_DUMP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %67, i32 %68)
  %70 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %71 = icmp eq %struct.radius_client* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %74 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %76 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %229

80:                                               ; preds = %66
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.radius_msg* @radius_msg_parse(i32* %81, i32 %82)
  store %struct.radius_msg* %83, %struct.radius_msg** %14, align 8
  %84 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %85 = icmp eq %struct.radius_msg* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %89 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %94 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %229

98:                                               ; preds = %80
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @os_free(i32* %99)
  store i32* null, i32** %8, align 8
  %101 = load i64, i64* @wpa_debug_level, align 8
  %102 = load i64, i64* @MSG_MSGDUMP, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %106 = call i32 @radius_msg_dump(%struct.radius_msg* %105)
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %109 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %108)
  %110 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RADIUS_CODE_ACCOUNTING_REQUEST, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %116 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %115)
  %117 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %121 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %126 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %229

130:                                              ; preds = %107
  %131 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %132 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %137 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %142 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %143 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %147 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @radius_msg_verify_acct_req(%struct.radius_msg* %141, i32* %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %130
  %152 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %153 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %152)
  %154 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %155 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %160 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %229

164:                                              ; preds = %130
  %165 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %166 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %165)
  store %struct.radius_hdr* %166, %struct.radius_hdr** %18, align 8
  %167 = load i32, i32* @RADIUS_CODE_ACCOUNTING_RESPONSE, align 4
  %168 = load %struct.radius_hdr*, %struct.radius_hdr** %18, align 8
  %169 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.radius_msg* @radius_msg_new(i32 %167, i32 %170)
  store %struct.radius_msg* %171, %struct.radius_msg** %15, align 8
  %172 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %173 = icmp eq %struct.radius_msg* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %229

175:                                              ; preds = %164
  %176 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %177 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %178 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  %181 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %182 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.radius_hdr*, %struct.radius_hdr** %18, align 8
  %185 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @radius_msg_finish_acct_resp(%struct.radius_msg* %176, i32* %180, i32 %183, i32 %186)
  %188 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %189 = load i32, i32* %17, align 4
  %190 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %188, i32 %189)
  %191 = load i64, i64* @wpa_debug_level, align 8
  %192 = load i64, i64* @MSG_MSGDUMP, align 8
  %193 = icmp sle i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %175
  %195 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %196 = call i32 @radius_msg_dump(%struct.radius_msg* %195)
  br label %197

197:                                              ; preds = %194, %175
  %198 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %199 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %198)
  store %struct.wpabuf* %199, %struct.wpabuf** %19, align 8
  %200 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %201 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load %struct.radius_client*, %struct.radius_client** %13, align 8
  %206 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.radius_server_data*, %struct.radius_server_data** %7, align 8
  %211 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %214 = call i32 @wpabuf_head(%struct.wpabuf* %213)
  %215 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %216 = call i32 @wpabuf_len(%struct.wpabuf* %215)
  %217 = bitcast %union.anon* %9 to %struct.sockaddr_storage*
  %218 = bitcast %struct.sockaddr_storage* %217 to %struct.sockaddr*
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @sendto(i32 %212, i32 %214, i32 %216, i32 0, %struct.sockaddr* %218, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %197
  %224 = load i32, i32* @MSG_INFO, align 4
  %225 = load i32, i32* @errno, align 4
  %226 = call i32 @strerror(i32 %225)
  %227 = call i32 @wpa_printf(i32 %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %223, %197
  br label %229

229:                                              ; preds = %228, %174, %151, %114, %86, %72, %36, %26
  %230 = load %struct.radius_msg*, %struct.radius_msg** %15, align 8
  %231 = call i32 @radius_msg_free(%struct.radius_msg* %230)
  %232 = load %struct.radius_msg*, %struct.radius_msg** %14, align 8
  %233 = call i32 @radius_msg_free(%struct.radius_msg* %232)
  %234 = load i32*, i32** %8, align 8
  %235 = call i32 @os_free(i32* %234)
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

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i64 @radius_msg_verify_acct_req(%struct.radius_msg*, i32*, i32) #1

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i32 @radius_msg_finish_acct_resp(%struct.radius_msg*, i32*, i32, i32) #1

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
