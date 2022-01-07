; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_fils_hlp.c_fils_process_hlp_dhcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_fils_hlp.c_fils_process_hlp_dhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__, %struct.TYPE_11__, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sta_info = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.dhcp_data = type { i32, i64, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"FILS: HLP request DHCP: op=%u htype=%u hlen=%u hops=%u xid=0x%x\00", align 1
@DHCP_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"FILS: HLP - no DHCP magic\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"FILS: HLP - DHCP options\00", align 1
@DHCP_OPT_END = common dso_local global i64 0, align 8
@DHCP_OPT_PAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"FILS: HLP - DHCP message type %u\00", align 1
@DHCPDISCOVER = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"FILS: HLP - no DHCPv4 server configured - drop request\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"FILS: HLP - no IPv4 own_ip_addr configured - drop request\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"FILS: Failed to open DHCP socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"FILS: Failed to bind DHCP socket: %s\00", align 1
@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@fils_dhcp_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"FILS: DHCP sendto failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"FILS: HLP relayed DHCP request to server %s:%d (rapid_commit=%d)\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"FILS: Store DHCPDISCOVER for rapid commit proxy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i64*, i64)* @fils_process_hlp_dhcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fils_process_hlp_dhcp(%struct.hostapd_data* %0, %struct.sta_info* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dhcp_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.dhcp_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.sockaddr_in, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64*, i64** %8, align 8
  store i64* %22, i64** %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %365

26:                                               ; preds = %4
  %27 = load i64*, i64** %15, align 8
  %28 = bitcast i64* %27 to %struct.dhcp_data*
  store %struct.dhcp_data* %28, %struct.dhcp_data** %10, align 8
  %29 = load i64*, i64** %15, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %16, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %34 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %37 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %40 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %43 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %46 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ntohl(i32 %47)
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44, i32 %48)
  %50 = load i64*, i64** %15, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 32
  store i64* %51, i64** %15, align 8
  %52 = load %struct.dhcp_data*, %struct.dhcp_data** %10, align 8
  %53 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %365

57:                                               ; preds = %26
  %58 = load i64*, i64** %16, align 8
  %59 = load i64*, i64** %15, align 8
  %60 = ptrtoint i64* %58 to i64
  %61 = ptrtoint i64* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  %64 = icmp slt i64 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %365

66:                                               ; preds = %57
  %67 = load i64*, i64** %15, align 8
  %68 = call i64 @WPA_GET_BE32(i64* %67)
  %69 = load i64, i64* @DHCP_MAGIC, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %365

74:                                               ; preds = %66
  %75 = load i64*, i64** %15, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 4
  store i64* %76, i64** %15, align 8
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i64*, i64** %15, align 8
  %79 = load i64*, i64** %16, align 8
  %80 = load i64*, i64** %15, align 8
  %81 = ptrtoint i64* %79 to i64
  %82 = ptrtoint i64* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @wpa_hexdump(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64* %78, i32 %85)
  br label %87

87:                                               ; preds = %135, %105, %74
  %88 = load i64*, i64** %15, align 8
  %89 = load i64*, i64** %16, align 8
  %90 = icmp ult i64* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i64*, i64** %15, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DHCP_OPT_END, align 8
  %95 = icmp ne i64 %93, %94
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i1 [ false, %87 ], [ %95, %91 ]
  br i1 %97, label %98, label %139

98:                                               ; preds = %96
  %99 = load i64*, i64** %15, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %15, align 8
  %101 = load i64, i64* %99, align 8
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* @DHCP_OPT_PAD, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %87

106:                                              ; preds = %98
  %107 = load i64*, i64** %15, align 8
  %108 = load i64*, i64** %16, align 8
  %109 = icmp uge i64* %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %139

111:                                              ; preds = %106
  %112 = load i64*, i64** %15, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %15, align 8
  %114 = load i64, i64* %112, align 8
  store i64 %114, i64* %20, align 8
  %115 = load i64, i64* %20, align 8
  %116 = load i64*, i64** %16, align 8
  %117 = load i64*, i64** %15, align 8
  %118 = ptrtoint i64* %116 to i64
  %119 = ptrtoint i64* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 8
  %122 = icmp sgt i64 %115, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %139

124:                                              ; preds = %111
  %125 = load i64, i64* %19, align 8
  switch i64 %125, label %135 [
    i64 129, label %126
    i64 128, label %134
  ]

126:                                              ; preds = %124
  %127 = load i64, i64* %20, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i64*, i64** %15, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %129, %126
  br label %135

134:                                              ; preds = %124
  store i32 1, i32* %14, align 4
  br label %135

135:                                              ; preds = %124, %134, %133
  %136 = load i64, i64* %20, align 8
  %137 = load i64*, i64** %15, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 %136
  store i64* %138, i64** %15, align 8
  br label %87

139:                                              ; preds = %123, %110, %96
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load i64, i64* %13, align 8
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @DHCPDISCOVER, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %365

147:                                              ; preds = %139
  %148 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %149 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AF_INET, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %147
  %157 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %158 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %156, %147
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %365

169:                                              ; preds = %156
  %170 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %171 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AF_INET, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %188, label %178

178:                                              ; preds = %169
  %179 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %180 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %179, i32 0, i32 1
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %178, %169
  %189 = load i32, i32* @MSG_DEBUG, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %365

191:                                              ; preds = %178
  %192 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %193 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %261

196:                                              ; preds = %191
  %197 = load i64, i64* @AF_INET, align 8
  %198 = load i32, i32* @SOCK_DGRAM, align 4
  %199 = call i32 @socket(i64 %197, i32 %198, i32 0)
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %21, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load i32, i32* @MSG_ERROR, align 4
  %204 = load i32, i32* @errno, align 4
  %205 = call i32 @strerror(i32 %204)
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  store i32 0, i32* %5, align 4
  br label %365

207:                                              ; preds = %196
  %208 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %209 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %208, i32 0, i32 1
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %247

214:                                              ; preds = %207
  %215 = call i32 @os_memset(%struct.sockaddr_in* %17, i32 0, i32 24)
  %216 = load i64, i64* @AF_INET, align 8
  %217 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  store i64 %216, i64* %217, align 8
  %218 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %219 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %218, i32 0, i32 1
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %229 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %228, i32 0, i32 1
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @htons(i64 %232)
  %234 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i8* %233, i8** %234, align 8
  %235 = load i32, i32* %21, align 4
  %236 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %237 = call i64 @bind(i32 %235, %struct.sockaddr* %236, i32 24)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %214
  %240 = load i32, i32* @MSG_ERROR, align 4
  %241 = load i32, i32* @errno, align 4
  %242 = call i32 @strerror(i32 %241)
  %243 = call i32 (i32, i8*, ...) @wpa_printf(i32 %240, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %21, align 4
  %245 = call i32 @close(i32 %244)
  store i32 0, i32* %5, align 4
  br label %365

246:                                              ; preds = %214
  br label %247

247:                                              ; preds = %246, %207
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* @EVENT_TYPE_READ, align 4
  %250 = load i32, i32* @fils_dhcp_handler, align 4
  %251 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %252 = call i64 @eloop_register_sock(i32 %248, i32 %249, i32 %250, i32* null, %struct.hostapd_data* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load i32, i32* %21, align 4
  %256 = call i32 @close(i32 %255)
  store i32 0, i32* %5, align 4
  br label %365

257:                                              ; preds = %247
  %258 = load i32, i32* %21, align 4
  %259 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %260 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %257, %191
  %262 = load i64, i64* %9, align 8
  %263 = call %struct.wpabuf* @wpabuf_alloc(i64 %262)
  store %struct.wpabuf* %263, %struct.wpabuf** %11, align 8
  %264 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %265 = icmp ne %struct.wpabuf* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %365

267:                                              ; preds = %261
  %268 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %269 = load i64, i64* %9, align 8
  %270 = call %struct.dhcp_data* @wpabuf_put(%struct.wpabuf* %268, i64 %269)
  store %struct.dhcp_data* %270, %struct.dhcp_data** %12, align 8
  %271 = load %struct.dhcp_data*, %struct.dhcp_data** %12, align 8
  %272 = load i64*, i64** %8, align 8
  %273 = load i64, i64* %9, align 8
  %274 = call i32 @os_memcpy(%struct.dhcp_data* %271, i64* %272, i64 %273)
  %275 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %276 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %275, i32 0, i32 1
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.dhcp_data*, %struct.dhcp_data** %12, align 8
  %284 = getelementptr inbounds %struct.dhcp_data, %struct.dhcp_data* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = call i32 @os_memset(%struct.sockaddr_in* %17, i32 0, i32 24)
  %286 = load i64, i64* @AF_INET, align 8
  %287 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  store i64 %286, i64* %287, align 8
  %288 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %289 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %288, i32 0, i32 1
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  store i64 %295, i64* %297, align 8
  %298 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %299 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %298, i32 0, i32 1
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i8* @htons(i64 %302)
  %304 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i8* %303, i8** %304, align 8
  %305 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %306 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.dhcp_data*, %struct.dhcp_data** %12, align 8
  %309 = load i64, i64* %9, align 8
  %310 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %311 = call i64 @sendto(i32 %307, %struct.dhcp_data* %308, i64 %309, i32 0, %struct.sockaddr* %310, i32 24)
  store i64 %311, i64* %18, align 8
  %312 = load i64, i64* %18, align 8
  %313 = icmp slt i64 %312, 0
  br i1 %313, label %314, label %331

314:                                              ; preds = %267
  %315 = load i32, i32* @MSG_ERROR, align 4
  %316 = load i32, i32* @errno, align 4
  %317 = call i32 @strerror(i32 %316)
  %318 = call i32 (i32, i8*, ...) @wpa_printf(i32 %315, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %317)
  %319 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %320 = call i32 @wpabuf_free(%struct.wpabuf* %319)
  %321 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %322 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @eloop_unregister_read_sock(i32 %323)
  %325 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %326 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @close(i32 %327)
  %329 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %330 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %329, i32 0, i32 0
  store i32 -1, i32* %330, align 8
  store i32 0, i32* %5, align 4
  br label %365

331:                                              ; preds = %267
  %332 = load i32, i32* @MSG_DEBUG, align 4
  %333 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @inet_ntoa(i64 %335)
  %337 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @ntohs(i8* %338)
  %340 = load i32, i32* %14, align 4
  %341 = call i32 (i32, i8*, ...) @wpa_printf(i32 %332, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 %336, i32 %339, i32 %340)
  %342 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %343 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %342, i32 0, i32 1
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %331
  %349 = load i32, i32* %14, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load i32, i32* @MSG_DEBUG, align 4
  %353 = call i32 (i32, i8*, ...) @wpa_printf(i32 %352, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %354 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %355 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %354, i32 0, i32 0
  %356 = load %struct.wpabuf*, %struct.wpabuf** %355, align 8
  %357 = call i32 @wpabuf_free(%struct.wpabuf* %356)
  %358 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %359 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %360 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %359, i32 0, i32 0
  store %struct.wpabuf* %358, %struct.wpabuf** %360, align 8
  br label %364

361:                                              ; preds = %348, %331
  %362 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %363 = call i32 @wpabuf_free(%struct.wpabuf* %362)
  br label %364

364:                                              ; preds = %361, %351
  store i32 1, i32* %5, align 4
  br label %365

365:                                              ; preds = %364, %314, %266, %254, %239, %202, %188, %166, %146, %71, %65, %56, %25
  %366 = load i32, i32* %5, align 4
  ret i32 %366
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @WPA_GET_BE32(i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @eloop_register_sock(i32, i32, i32, i32*, %struct.hostapd_data*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local %struct.dhcp_data* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @os_memcpy(%struct.dhcp_data*, i64*, i64) #1

declare dso_local i64 @sendto(i32, %struct.dhcp_data*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @inet_ntoa(i64) #1

declare dso_local i32 @ntohs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
