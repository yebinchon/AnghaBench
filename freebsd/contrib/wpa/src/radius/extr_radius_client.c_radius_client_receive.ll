; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i64, i64, i32, i32, %struct.radius_msg_list*, %struct.radius_rx_handler*, %struct.radius_rx_handler*, %struct.hostapd_radius_servers* }
%struct.radius_msg_list = type { i64, i32, i32, i32, %struct.radius_msg*, %struct.radius_msg_list*, %struct.TYPE_2__ }
%struct.radius_msg = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radius_rx_handler = type { i32 (%struct.radius_msg.0*, %struct.radius_msg.0*, i32, i32, i32)*, i32 }
%struct.radius_msg.0 = type opaque
%struct.hostapd_radius_servers = type { i64, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.hostapd_radius_server = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radius_hdr = type { i32, i64 }
%struct.os_reltime = type { i32, i32 }

@RADIUS_ACCT = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"recv[RADIUS]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Received %d bytes from RADIUS server\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"RADIUS: Possibly too long UDP frame for our buffer - dropping it\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RADIUS: Parsing incoming frame failed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Received RADIUS message\00", align 1
@RADIUS_ACCT_INTERIM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"No matching RADIUS request found (type=%d id=%d) - dropping packet\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"Received RADIUS packet matched with a pending request, round trip time %d.%02d sec\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"No RADIUS RX handler found (type=%d code=%d id=%d)%s - dropping packet\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c" [INVALID AUTHENTICATOR]\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @radius_client_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radius_client_data*, align 8
  %8 = alloca %struct.hostapd_radius_servers*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3000 x i8], align 16
  %13 = alloca %struct.radius_msg*, align 8
  %14 = alloca %struct.radius_hdr*, align 8
  %15 = alloca %struct.radius_rx_handler*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.radius_msg_list*, align 8
  %19 = alloca %struct.radius_msg_list*, align 8
  %20 = alloca %struct.os_reltime, align 4
  %21 = alloca %struct.hostapd_radius_server*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.radius_client_data*
  store %struct.radius_client_data* %25, %struct.radius_client_data** %7, align 8
  %26 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %27 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %26, i32 0, i32 7
  %28 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %27, align 8
  store %struct.hostapd_radius_servers* %28, %struct.hostapd_radius_servers** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %9, align 8
  store i32 0, i32* %22, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @RADIUS_ACCT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %36 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %35, i32 0, i32 6
  %37 = load %struct.radius_rx_handler*, %struct.radius_rx_handler** %36, align 8
  store %struct.radius_rx_handler* %37, %struct.radius_rx_handler** %15, align 8
  %38 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %39 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %42 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %41, i32 0, i32 2
  %43 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %42, align 8
  store %struct.hostapd_radius_server* %43, %struct.hostapd_radius_server** %21, align 8
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %46 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %45, i32 0, i32 5
  %47 = load %struct.radius_rx_handler*, %struct.radius_rx_handler** %46, align 8
  store %struct.radius_rx_handler* %47, %struct.radius_rx_handler** %15, align 8
  %48 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %49 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %16, align 8
  %51 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %52 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %51, i32 0, i32 1
  %53 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %52, align 8
  store %struct.hostapd_radius_server* %53, %struct.hostapd_radius_server** %21, align 8
  br label %54

54:                                               ; preds = %44, %34
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [3000 x i8], [3000 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* @MSG_DONTWAIT, align 4
  %58 = call i32 @recv(i32 %55, i8* %56, i32 3000, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %323

66:                                               ; preds = %54
  %67 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %68 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %71 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %69, i32 0, i32 %70, i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 3000
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %323

80:                                               ; preds = %66
  %81 = getelementptr inbounds [3000 x i8], [3000 x i8]* %12, i64 0, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = call %struct.radius_msg* @radius_msg_parse(i8* %81, i32 %82)
  store %struct.radius_msg* %83, %struct.radius_msg** %13, align 8
  %84 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %85 = icmp eq %struct.radius_msg* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %90 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %323

93:                                               ; preds = %80
  %94 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %95 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %94)
  store %struct.radius_hdr* %95, %struct.radius_hdr** %14, align 8
  %96 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %97 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %100 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %101 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %98, i32 0, i32 %99, i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %8, align 8
  %103 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %108 = call i32 @radius_msg_dump(%struct.radius_msg* %107)
  br label %109

109:                                              ; preds = %106, %93
  %110 = load %struct.radius_hdr*, %struct.radius_hdr** %14, align 8
  %111 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %133 [
    i32 135, label %113
    i32 133, label %118
    i32 134, label %123
    i32 132, label %128
  ]

113:                                              ; preds = %109
  %114 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %115 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %133

118:                                              ; preds = %109
  %119 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %120 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %133

123:                                              ; preds = %109
  %124 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %125 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %133

128:                                              ; preds = %109
  %129 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %130 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %109, %128, %123, %118, %113
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %19, align 8
  %134 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %135 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %134, i32 0, i32 4
  %136 = load %struct.radius_msg_list*, %struct.radius_msg_list** %135, align 8
  store %struct.radius_msg_list* %136, %struct.radius_msg_list** %18, align 8
  br label %137

137:                                              ; preds = %168, %133
  %138 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %139 = icmp ne %struct.radius_msg_list* %138, null
  br i1 %139, label %140, label %173

140:                                              ; preds = %137
  %141 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %142 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %156, label %146

146:                                              ; preds = %140
  %147 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %148 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @RADIUS_ACCT_INTERIM, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @RADIUS_ACCT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152, %140
  %157 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %158 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %157, i32 0, i32 4
  %159 = load %struct.radius_msg*, %struct.radius_msg** %158, align 8
  %160 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %159)
  %161 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.radius_hdr*, %struct.radius_hdr** %14, align 8
  %164 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %173

168:                                              ; preds = %156, %152, %146
  %169 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  store %struct.radius_msg_list* %169, %struct.radius_msg_list** %19, align 8
  %170 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %171 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %170, i32 0, i32 5
  %172 = load %struct.radius_msg_list*, %struct.radius_msg_list** %171, align 8
  store %struct.radius_msg_list* %172, %struct.radius_msg_list** %18, align 8
  br label %137

173:                                              ; preds = %167, %137
  %174 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %175 = icmp eq %struct.radius_msg_list* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %178 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %181 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %182 = load i64, i64* %9, align 8
  %183 = load %struct.radius_hdr*, %struct.radius_hdr** %14, align 8
  %184 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %179, i32 0, i32 %180, i32 %181, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %182, i64 %185)
  br label %320

187:                                              ; preds = %173
  %188 = call i32 @os_get_reltime(%struct.os_reltime* %20)
  %189 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %20, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %192 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %190, %194
  %196 = mul nsw i32 %195, 100
  %197 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %20, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %200 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %198, %202
  %204 = sdiv i32 %203, 10000
  %205 = add nsw i32 %196, %204
  store i32 %205, i32* %11, align 4
  %206 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %207 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %210 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %213 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %214 = load i32, i32* %11, align 4
  %215 = sdiv i32 %214, 100
  %216 = load i32, i32* %11, align 4
  %217 = srem i32 %216, 100
  %218 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %208, i32 %211, i32 %212, i32 %213, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i32 %215, i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %221 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load %struct.radius_msg_list*, %struct.radius_msg_list** %19, align 8
  %223 = icmp ne %struct.radius_msg_list* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %187
  %225 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %226 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %225, i32 0, i32 5
  %227 = load %struct.radius_msg_list*, %struct.radius_msg_list** %226, align 8
  %228 = load %struct.radius_msg_list*, %struct.radius_msg_list** %19, align 8
  %229 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %228, i32 0, i32 5
  store %struct.radius_msg_list* %227, %struct.radius_msg_list** %229, align 8
  br label %236

230:                                              ; preds = %187
  %231 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %232 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %231, i32 0, i32 5
  %233 = load %struct.radius_msg_list*, %struct.radius_msg_list** %232, align 8
  %234 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %235 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %234, i32 0, i32 4
  store %struct.radius_msg_list* %233, %struct.radius_msg_list** %235, align 8
  br label %236

236:                                              ; preds = %230, %224
  %237 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %238 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 4
  store i64 0, i64* %17, align 8
  br label %241

241:                                              ; preds = %281, %236
  %242 = load i64, i64* %17, align 8
  %243 = load i64, i64* %16, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %284

245:                                              ; preds = %241
  %246 = load %struct.radius_rx_handler*, %struct.radius_rx_handler** %15, align 8
  %247 = load i64, i64* %17, align 8
  %248 = getelementptr inbounds %struct.radius_rx_handler, %struct.radius_rx_handler* %246, i64 %247
  %249 = getelementptr inbounds %struct.radius_rx_handler, %struct.radius_rx_handler* %248, i32 0, i32 0
  %250 = load i32 (%struct.radius_msg.0*, %struct.radius_msg.0*, i32, i32, i32)*, i32 (%struct.radius_msg.0*, %struct.radius_msg.0*, i32, i32, i32)** %249, align 8
  %251 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %252 = bitcast %struct.radius_msg* %251 to %struct.radius_msg.0*
  %253 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %254 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %253, i32 0, i32 4
  %255 = load %struct.radius_msg*, %struct.radius_msg** %254, align 8
  %256 = bitcast %struct.radius_msg* %255 to %struct.radius_msg.0*
  %257 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %258 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %261 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.radius_rx_handler*, %struct.radius_rx_handler** %15, align 8
  %264 = load i64, i64* %17, align 8
  %265 = getelementptr inbounds %struct.radius_rx_handler, %struct.radius_rx_handler* %263, i64 %264
  %266 = getelementptr inbounds %struct.radius_rx_handler, %struct.radius_rx_handler* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 %250(%struct.radius_msg.0* %252, %struct.radius_msg.0* %256, i32 %259, i32 %262, i32 %267)
  store i32 %268, i32* %23, align 4
  %269 = load i32, i32* %23, align 4
  switch i32 %269, label %280 [
    i32 130, label %270
    i32 129, label %273
    i32 131, label %276
    i32 128, label %279
  ]

270:                                              ; preds = %245
  %271 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %272 = call i32 @radius_msg_free(%struct.radius_msg* %271)
  br label %273

273:                                              ; preds = %245, %270
  %274 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %275 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %274)
  br label %323

276:                                              ; preds = %245
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %22, align 4
  br label %279

279:                                              ; preds = %245, %276
  br label %280

280:                                              ; preds = %245, %279
  br label %281

281:                                              ; preds = %280
  %282 = load i64, i64* %17, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %17, align 8
  br label %241

284:                                              ; preds = %241
  %285 = load i32, i32* %22, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %289 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  br label %297

292:                                              ; preds = %284
  %293 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %21, align 8
  %294 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %292, %287
  %298 = load %struct.radius_client_data*, %struct.radius_client_data** %7, align 8
  %299 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %302 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %305 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %306 = load i64, i64* %9, align 8
  %307 = load %struct.radius_hdr*, %struct.radius_hdr** %14, align 8
  %308 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.radius_hdr*, %struct.radius_hdr** %14, align 8
  %311 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* %22, align 4
  %314 = icmp ne i32 %313, 0
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %317 = call i32 (i32, i32, i32, i32, i8*, ...) @hostapd_logger(i32 %300, i32 %303, i32 %304, i32 %305, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i64 %306, i32 %309, i64 %312, i8* %316)
  %318 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  %319 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %318)
  br label %320

320:                                              ; preds = %297, %176
  %321 = load %struct.radius_msg*, %struct.radius_msg** %13, align 8
  %322 = call i32 @radius_msg_free(%struct.radius_msg* %321)
  br label %323

323:                                              ; preds = %320, %273, %86, %77, %61
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hostapd_logger(i32, i32, i32, i32, i8*, ...) #1

declare dso_local %struct.radius_msg* @radius_msg_parse(i8*, i32) #1

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
