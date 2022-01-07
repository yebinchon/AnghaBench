; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_change_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_change_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, i32, %struct.radius_msg_list*, i32, %struct.hostapd_radius_servers* }
%struct.radius_msg_list = type { i64, i32, i32, i64, i64, %struct.radius_msg_list* }
%struct.hostapd_radius_servers = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.hostapd_radius_server = type { i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i8*, i32, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i8*, i32, i8*, %struct.TYPE_13__ }

@AF_UNSPEC = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s server %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Authentication\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Accounting\00", align 1
@RADIUS_AUTH = common dso_local global i64 0, align 8
@RADIUS_ACCT = common dso_local global i64 0, align 8
@RADIUS_CLIENT_FIRST_WAIT = common dso_local global i32 0, align 4
@radius_client_timer = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"RADIUS: No server socket available (af=%d sock=%d sock6=%d auth=%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bind[radius]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"disconnect[radius]: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"connect[radius]: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"RADIUS local address: %s:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_client_data*, %struct.hostapd_radius_server*, %struct.hostapd_radius_server*, i32, i32, i32)* @radius_change_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_change_server(%struct.radius_client_data* %0, %struct.hostapd_radius_server* %1, %struct.hostapd_radius_server* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radius_client_data*, align 8
  %9 = alloca %struct.hostapd_radius_server*, align 8
  %10 = alloca %struct.hostapd_radius_server*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 8
  %15 = alloca %struct.sockaddr_in, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [50 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.radius_msg_list*, align 8
  %23 = alloca %struct.hostapd_radius_servers*, align 8
  %24 = alloca %struct.sockaddr_in, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %8, align 8
  store %struct.hostapd_radius_server* %1, %struct.hostapd_radius_server** %9, align 8
  store %struct.hostapd_radius_server* %2, %struct.hostapd_radius_server** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %26 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %25, i32 0, i32 4
  %27 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %26, align 8
  store %struct.hostapd_radius_servers* %27, %struct.hostapd_radius_servers** %23, align 8
  %28 = bitcast %struct.sockaddr_in* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %30 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %30, i32* %29, align 8
  %31 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %32 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %35 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %41 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %40, i32 0, i32 1
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %43 = call i32 @hostapd_ip_txt(%struct.TYPE_14__* %41, i8* %42, i32 50)
  %44 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %45 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hostapd_logger(i32 %33, i32* null, i32 %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %43, i32 %46)
  %48 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %49 = icmp ne %struct.hostapd_radius_server* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %6
  %51 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %52 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %53 = icmp eq %struct.hostapd_radius_server* %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %59 = call i32 @radius_client_flush(%struct.radius_client_data* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %50, %6
  %62 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %63 = icmp ne %struct.hostapd_radius_server* %62, null
  br i1 %63, label %64, label %104

64:                                               ; preds = %61
  %65 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %66 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %67 = icmp ne %struct.hostapd_radius_server* %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %70 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %73 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %68
  %77 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %78 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %81 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %84 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @os_memcmp(i32 %79, i32 %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %76, %68
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %93 = call i32 @radius_client_flush(%struct.radius_client_data* %92, i32 1)
  br label %103

94:                                               ; preds = %88
  %95 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %96 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %97 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %100 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @radius_client_update_acct_msgs(%struct.radius_client_data* %95, i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %94, %91
  br label %104

104:                                              ; preds = %103, %76, %64, %61
  %105 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %106 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %105, i32 0, i32 2
  %107 = load %struct.radius_msg_list*, %struct.radius_msg_list** %106, align 8
  store %struct.radius_msg_list* %107, %struct.radius_msg_list** %22, align 8
  br label %108

108:                                              ; preds = %150, %104
  %109 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %10, align 8
  %110 = icmp ne %struct.hostapd_radius_server* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %113 = icmp ne %struct.radius_msg_list* %112, null
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ false, %108 ], [ %113, %111 ]
  br i1 %115, label %116, label %154

116:                                              ; preds = %114
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %121 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RADIUS_AUTH, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %134, label %125

125:                                              ; preds = %119, %116
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %130 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RADIUS_ACCT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %119
  br label %150

135:                                              ; preds = %128, %125
  %136 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %137 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @RADIUS_CLIENT_FIRST_WAIT, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %143 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %145 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @RADIUS_CLIENT_FIRST_WAIT, align 4
  %147 = mul nsw i32 %146, 2
  %148 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %149 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %135, %134
  %151 = load %struct.radius_msg_list*, %struct.radius_msg_list** %22, align 8
  %152 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %151, i32 0, i32 5
  %153 = load %struct.radius_msg_list*, %struct.radius_msg_list** %152, align 8
  store %struct.radius_msg_list* %153, %struct.radius_msg_list** %22, align 8
  br label %108

154:                                              ; preds = %114
  %155 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %156 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %155, i32 0, i32 2
  %157 = load %struct.radius_msg_list*, %struct.radius_msg_list** %156, align 8
  %158 = icmp ne %struct.radius_msg_list* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i32, i32* @radius_client_timer, align 4
  %161 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %162 = call i32 @eloop_cancel_timeout(i32 %160, %struct.radius_client_data* %161, i32* null)
  %163 = load i32, i32* @RADIUS_CLIENT_FIRST_WAIT, align 4
  %164 = load i32, i32* @radius_client_timer, align 4
  %165 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %166 = call i32 @eloop_register_timeout(i32 %163, i32 0, i32 %164, %struct.radius_client_data* %165, i32* null)
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %169 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %191 [
    i32 129, label %172
  ]

172:                                              ; preds = %167
  %173 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr_in6*
  %174 = call i32 @os_memset(%struct.sockaddr_in6* %173, i32 0, i32 40)
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i32 129, i32* %175, align 8
  %176 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %177 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %185 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @htons(i32 %186)
  %188 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 4
  store i8* %187, i8** %188, align 8
  %189 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %189, %struct.sockaddr** %16, align 8
  store i32 40, i32* %18, align 4
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %21, align 4
  br label %192

191:                                              ; preds = %167
  store i32 -1, i32* %7, align 4
  br label %297

192:                                              ; preds = %172
  %193 = load i32, i32* %21, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %198 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 -1, i32* %7, align 4
  br label %297

205:                                              ; preds = %192
  %206 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %23, align 8
  %207 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %243

210:                                              ; preds = %205
  %211 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %23, align 8
  %212 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  switch i32 %214, label %230 [
    i32 129, label %215
  ]

215:                                              ; preds = %210
  %216 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr_in6*
  %217 = call i32 @os_memset(%struct.sockaddr_in6* %216, i32 0, i32 40)
  %218 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i32 129, i32* %218, align 8
  %219 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %23, align 8
  %220 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = call i8* @htons(i32 0)
  %228 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 4
  store i8* %227, i8** %228, align 8
  %229 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  store %struct.sockaddr* %229, %struct.sockaddr** %17, align 8
  store i32 40, i32* %19, align 4
  br label %231

230:                                              ; preds = %210
  store i32 -1, i32* %7, align 4
  br label %297

231:                                              ; preds = %215
  %232 = load i32, i32* %21, align 4
  %233 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %234 = load i32, i32* %19, align 4
  %235 = call i64 @bind(i32 %232, %struct.sockaddr* %233, i32 %234)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load i32, i32* @MSG_INFO, align 4
  %239 = load i32, i32* @errno, align 4
  %240 = call i32 @strerror(i32 %239)
  %241 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %240)
  store i32 -1, i32* %7, align 4
  br label %297

242:                                              ; preds = %231
  br label %243

243:                                              ; preds = %242, %205
  %244 = load i32, i32* %21, align 4
  %245 = bitcast %struct.sockaddr_in* %24 to %struct.sockaddr*
  %246 = call i64 @connect(i32 %244, %struct.sockaddr* %245, i32 40)
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* @MSG_INFO, align 4
  %250 = load i32, i32* @errno, align 4
  %251 = call i32 @strerror(i32 %250)
  %252 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %248, %243
  %254 = load i32, i32* %21, align 4
  %255 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call i64 @connect(i32 %254, %struct.sockaddr* %255, i32 %256)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load i32, i32* @MSG_INFO, align 4
  %261 = load i32, i32* @errno, align 4
  %262 = call i32 @strerror(i32 %261)
  %263 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %260, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %262)
  store i32 -1, i32* %7, align 4
  br label %297

264:                                              ; preds = %253
  %265 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %9, align 8
  %266 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  switch i32 %268, label %285 [
    i32 129, label %269
  ]

269:                                              ; preds = %264
  store i32 40, i32* %19, align 4
  %270 = load i32, i32* %21, align 4
  %271 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  %272 = call i32 @getsockname(i32 %270, %struct.sockaddr* %271, i32* %19)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %269
  %275 = load i32, i32* @MSG_DEBUG, align 4
  %276 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @inet_ntoa(i32 %278)
  %280 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 4
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @ntohs(i8* %281)
  %283 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %275, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %279, i32 %282)
  br label %284

284:                                              ; preds = %274, %269
  br label %285

285:                                              ; preds = %264, %284
  %286 = load i32, i32* %13, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* %21, align 4
  %290 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %291 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  br label %296

292:                                              ; preds = %285
  %293 = load i32, i32* %21, align 4
  %294 = load %struct.radius_client_data*, %struct.radius_client_data** %8, align 8
  %295 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  br label %296

296:                                              ; preds = %292, %288
  store i32 0, i32* %7, align 4
  br label %297

297:                                              ; preds = %296, %259, %237, %230, %195, %191
  %298 = load i32, i32* %7, align 4
  ret i32 %298
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @hostapd_ip_txt(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @radius_client_flush(%struct.radius_client_data*, i32) #2

declare dso_local i64 @os_memcmp(i32, i32, i64) #2

declare dso_local i32 @radius_client_update_acct_msgs(%struct.radius_client_data*, i32, i64) #2

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_client_data*, i32*) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.radius_client_data*, i32*) #2

declare dso_local i32 @os_memset(%struct.sockaddr_in6*, i32, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @inet_ntoa(i32) #2

declare dso_local i32 @ntohs(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
