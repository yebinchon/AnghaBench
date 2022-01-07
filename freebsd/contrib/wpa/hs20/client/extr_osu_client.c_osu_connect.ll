; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_osu_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_osu_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32, i64 }
%struct.wpa_ctrl = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Enforced OSU SSID matches ANQP info\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Enforced OSU SSID matches RSN[OSEN] info\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Enforced OSU SSID did not match\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s/osu-ca.pem\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"OSEN\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"key_mgmt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pairwise\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"GTK_NOT_USED CCMP\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"eap\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"WFA-UNAUTH-TLS\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ocsp\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ca_cert\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"No OSU_NAI set for RSN[OSEN]\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Associate with OSU SSID\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"SELECT_NETWORK %d\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"CTRL-EVENT-CONNECTED\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Could not connect\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Could not connect to OSU network\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Remove OSU network connection\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"REMOVE_NETWORK %d\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"Waiting for IP address for subscription registration\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"Could not get IP address for WLAN - try connection anyway\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"No production connection used for testing purposes\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Calling cmd_prov from osu_connect\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Calling cmd_oma_dm_prov from osu_connect\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Requesting reconnection with updated configuration\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"INTERWORKING_SELECT auto\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Failed to request wpa_supplicant to reconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*)* @osu_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osu_connect(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.hs20_osu_client*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [200 x i8], align 16
  %23 = alloca %struct.wpa_ctrl*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [255 x i8], align 16
  %26 = alloca [300 x i8], align 16
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %21, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %9
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  br label %39

39:                                               ; preds = %38, %32, %9
  %40 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %41 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %47 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @os_strcmp(i8* %45, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %14, align 8
  br label %74

54:                                               ; preds = %44
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %60 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @os_strcmp(i8* %58, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i8*, i8** %14, align 8
  store i8* %67, i8** %13, align 8
  br label %73

68:                                               ; preds = %57, %54
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %72 = call i32 @write_summary(%struct.hs20_osu_client* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %294

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i8*, i8** %21, align 8
  %77 = call i32 @add_network(i8* %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 -1, i32* %10, align 4
  br label %294

81:                                               ; preds = %75
  %82 = load i8*, i8** %21, align 8
  %83 = load i32, i32* %20, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i64 @set_network_quoted(i8* %82, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 -1, i32* %10, align 4
  br label %294

88:                                               ; preds = %81
  %89 = load i8*, i8** %14, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i8*, i8** %19, align 8
  store i8* %92, i8** %18, align 8
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i8*, i8** %18, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %162

96:                                               ; preds = %93
  %97 = load i8*, i8** %18, align 8
  %98 = call i64 @os_strlen(i8* %97)
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %162

100:                                              ; preds = %96
  %101 = getelementptr inbounds [255 x i8], [255 x i8]* %25, i64 0, i64 0
  %102 = call i32* @getcwd(i8* %101, i32 255)
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %10, align 4
  br label %294

105:                                              ; preds = %100
  %106 = getelementptr inbounds [300 x i8], [300 x i8]* %26, i64 0, i64 0
  %107 = getelementptr inbounds [255 x i8], [255 x i8]* %25, i64 0, i64 0
  %108 = call i32 @os_snprintf(i8* %106, i32 300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %14, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i8*, i8** %21, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = call i64 @set_network_quoted(i8* %112, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 -1, i32* %10, align 4
  br label %294

118:                                              ; preds = %111, %105
  %119 = load i8*, i8** %21, align 8
  %120 = load i32, i32* %20, align 4
  %121 = call i64 @set_network(i8* %119, i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %160, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %21, align 8
  %125 = load i32, i32* %20, align 4
  %126 = call i64 @set_network(i8* %124, i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %21, align 8
  %130 = load i32, i32* %20, align 4
  %131 = call i64 @set_network(i8* %129, i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %21, align 8
  %135 = load i32, i32* %20, align 4
  %136 = call i64 @set_network(i8* %134, i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %160, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %21, align 8
  %140 = load i32, i32* %20, align 4
  %141 = call i64 @set_network(i8* %139, i32 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %21, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i64 @set_network(i8* %144, i32 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %21, align 8
  %150 = load i32, i32* %20, align 4
  %151 = load i8*, i8** %18, align 8
  %152 = call i64 @set_network_quoted(i8* %149, i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load i8*, i8** %21, align 8
  %156 = load i32, i32* %20, align 4
  %157 = getelementptr inbounds [300 x i8], [300 x i8]* %26, i64 0, i64 0
  %158 = call i64 @set_network_quoted(i8* %155, i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154, %148, %143, %138, %133, %128, %123, %118
  store i32 -1, i32* %10, align 4
  br label %294

161:                                              ; preds = %154
  br label %178

162:                                              ; preds = %96, %93
  %163 = load i8*, i8** %14, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* @MSG_INFO, align 4
  %167 = call i32 @wpa_printf(i32 %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %168 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %169 = call i32 @write_summary(%struct.hs20_osu_client* %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %294

170:                                              ; preds = %162
  %171 = load i8*, i8** %21, align 8
  %172 = load i32, i32* %20, align 4
  %173 = call i64 @set_network(i8* %171, i32 %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 -1, i32* %10, align 4
  br label %294

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i8*, i8** %21, align 8
  %180 = call %struct.wpa_ctrl* @open_wpa_mon(i8* %179)
  store %struct.wpa_ctrl* %180, %struct.wpa_ctrl** %23, align 8
  %181 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %23, align 8
  %182 = icmp eq %struct.wpa_ctrl* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 -1, i32* %10, align 4
  br label %294

184:                                              ; preds = %178
  %185 = load i32, i32* @MSG_INFO, align 4
  %186 = call i32 @wpa_printf(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %187 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %188 = call i32 @write_summary(%struct.hs20_osu_client* %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %189 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %190 = load i32, i32* %20, align 4
  %191 = call i32 @snprintf(i8* %189, i32 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %190)
  %192 = load i8*, i8** %21, align 8
  %193 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %194 = call i64 @wpa_command(i8* %192, i8* %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  store i32 -1, i32* %10, align 4
  br label %294

197:                                              ; preds = %184
  %198 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %23, align 8
  %199 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %200 = call i32 @get_wpa_cli_event(%struct.wpa_ctrl* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %199, i32 200)
  store i32 %200, i32* %24, align 4
  %201 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %23, align 8
  %202 = call i32 @wpa_ctrl_detach(%struct.wpa_ctrl* %201)
  %203 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %23, align 8
  %204 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %203)
  %205 = load i32, i32* %24, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %197
  %208 = load i32, i32* @MSG_INFO, align 4
  %209 = call i32 @wpa_printf(i32 %208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %210 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %211 = call i32 @write_summary(%struct.hs20_osu_client* %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  %212 = load i32, i32* @MSG_INFO, align 4
  %213 = call i32 @wpa_printf(i32 %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %214 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @snprintf(i8* %214, i32 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %215)
  %217 = load i8*, i8** %21, align 8
  %218 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %219 = call i64 @wpa_command(i8* %217, i8* %218)
  store i32 -1, i32* %10, align 4
  br label %294

220:                                              ; preds = %197
  %221 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %222 = call i32 @write_summary(%struct.hs20_osu_client* %221, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0))
  %223 = load i8*, i8** %21, align 8
  %224 = call i64 @wait_ip_addr(i8* %223, i32 15)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* @MSG_INFO, align 4
  %228 = call i32 @wpa_printf(i32 %227, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %220
  %230 = load i32, i32* %17, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = load i32, i32* %24, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  store i32 -1, i32* %10, align 4
  br label %294

236:                                              ; preds = %232
  %237 = load i32, i32* @MSG_INFO, align 4
  %238 = call i32 @wpa_printf(i32 %237, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0))
  %239 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %240 = call i32 @write_summary(%struct.hs20_osu_client* %239, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %294

241:                                              ; preds = %229
  %242 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %243 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %242, i32 0, i32 1
  store i32 1, i32* %243, align 8
  %244 = load i32, i32* %16, align 4
  %245 = and i32 %244, 2
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %241
  %248 = load i32, i32* @MSG_DEBUG, align 4
  %249 = call i32 @wpa_printf(i32 %248, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  %250 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @cmd_prov(%struct.hs20_osu_client* %250, i8* %251)
  store i32 %252, i32* %24, align 4
  br label %264

253:                                              ; preds = %241
  %254 = load i32, i32* %16, align 4
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = call i32 @wpa_printf(i32 %258, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %260 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %261 = load i8*, i8** %15, align 8
  %262 = call i32 @cmd_oma_dm_prov(%struct.hs20_osu_client* %260, i8* %261)
  store i32 %262, i32* %24, align 4
  br label %263

263:                                              ; preds = %257, %253
  br label %264

264:                                              ; preds = %263, %247
  %265 = load i32, i32* @MSG_INFO, align 4
  %266 = call i32 @wpa_printf(i32 %265, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %267 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %268 = call i32 @write_summary(%struct.hs20_osu_client* %267, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %269 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %270 = load i32, i32* %20, align 4
  %271 = call i32 @snprintf(i8* %269, i32 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %270)
  %272 = load i8*, i8** %21, align 8
  %273 = getelementptr inbounds [200 x i8], [200 x i8]* %22, i64 0, i64 0
  %274 = call i64 @wpa_command(i8* %272, i8* %273)
  %275 = load i32, i32* %24, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %264
  store i32 -1, i32* %10, align 4
  br label %294

278:                                              ; preds = %264
  %279 = load i32, i32* @MSG_INFO, align 4
  %280 = call i32 @wpa_printf(i32 %279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0))
  %281 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %282 = call i32 @write_summary(%struct.hs20_osu_client* %281, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0))
  %283 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %284 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = call i64 @wpa_command(i8* %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %278
  %289 = load i32, i32* @MSG_INFO, align 4
  %290 = call i32 @wpa_printf(i32 %289, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0))
  %291 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %11, align 8
  %292 = call i32 @write_summary(%struct.hs20_osu_client* %291, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %294

293:                                              ; preds = %278
  store i32 0, i32* %10, align 4
  br label %294

294:                                              ; preds = %293, %288, %277, %236, %235, %207, %196, %183, %175, %165, %160, %117, %104, %87, %80, %68
  %295 = load i32, i32* %10, align 4
  ret i32 %295
}

declare dso_local i64 @os_strcmp(i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @add_network(i8*) #1

declare dso_local i64 @set_network_quoted(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @set_network(i8*, i32, i8*, i8*) #1

declare dso_local %struct.wpa_ctrl* @open_wpa_mon(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @wpa_command(i8*, i8*) #1

declare dso_local i32 @get_wpa_cli_event(%struct.wpa_ctrl*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_ctrl_detach(%struct.wpa_ctrl*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

declare dso_local i64 @wait_ip_addr(i8*, i32) #1

declare dso_local i32 @cmd_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_oma_dm_prov(%struct.hs20_osu_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
