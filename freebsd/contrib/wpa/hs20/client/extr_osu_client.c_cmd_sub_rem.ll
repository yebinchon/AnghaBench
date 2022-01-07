; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_sub_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_sub_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i8*, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Subscription remediation requested with Server URL: %s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Determining PPS file based on Home SP information\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fqdn=\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Use requested FQDN from command line\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"provisioning_sp\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Could not get provisioning Home SP FQDN from wpa_supplicant\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Home SP FQDN for current credential: %s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"SP/%s/pps.xml\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SP/%s/ca.pem\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"PPS file '%s' does not exist or is not accessible\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Using PPS file: %s\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"CA file '%s' does not exist or is not accessible\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Using server trust root: %s\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Could not read PPS MO\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"HomeSP/FQDN\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"No HomeSP/FQDN found from PPS\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"No HomeSP/FQDN text found from PPS\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"No FQDN known\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"SubscriptionUpdate/UpdateMethod\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"OMA-DM-ClientInitiated\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"No UpdateMethod specified - assume SPP\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"SubscriptionUpdate/UsernamePassword\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Using username: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"Using password: %s\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Credential/DigitalCertificate\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Using client certificate\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SP/%s/client-cert.pem\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"SP/%s/client-key.pem\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SubscriptionUpdate/URI\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Override sub rem URI based on PPS: %s\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Server URL not known\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Wait for IP address for subscriptiom remediation\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"Wait for IP address before starting subscription remediation\00", align 1
@.str.34 = private unnamed_addr constant [58 x i8] c"Could not get IP address for WLAN - try connection anyway\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i8*, i8*)* @cmd_sub_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_sub_rem(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [300 x i8], align 16
  %13 = alloca [200 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [200 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca [200 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %20, align 8
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %84, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @os_strncmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = call i32 @os_snprintf(i8* %39, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  store i8* null, i8** %7, align 8
  br label %54

43:                                               ; preds = %30
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %45 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %48 = call i64 @get_wpa_status(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %47, i32 256)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @os_free(i8* %57)
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %60 = call i8* @os_strdup(i8* %59)
  %61 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %62 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %64 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %331

68:                                               ; preds = %54
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %73 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %74 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @os_snprintf(i8* %72, i32 300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  store i8* %77, i8** %8, align 8
  %78 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %79 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %80 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @os_snprintf(i8* %78, i32 200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %81)
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %68, %4
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @os_file_exists(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %5, align 4
  br label %331

92:                                               ; preds = %84
  %93 = load i32, i32* @MSG_INFO, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @os_file_exists(i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %104)
  store i32 -1, i32* %5, align 4
  br label %331

106:                                              ; preds = %98, %92
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %112 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %114 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = call i32* @node_from_file(i32 %115, i8* %116)
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load i32, i32* @MSG_INFO, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

123:                                              ; preds = %106
  %124 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %125 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %168, label %128

128:                                              ; preds = %123
  %129 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %130 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = call i32* @get_child_node(i32 %131, i32* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i32* %133, i32** %11, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @MSG_INFO, align 4
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

139:                                              ; preds = %128
  %140 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %141 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %11, align 8
  %144 = call i8* @xml_node_get_text(i32 %142, i32* %143)
  store i8* %144, i8** %23, align 8
  %145 = load i8*, i8** %23, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* @MSG_INFO, align 4
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

150:                                              ; preds = %139
  %151 = load i8*, i8** %23, align 8
  %152 = call i8* @os_strdup(i8* %151)
  %153 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %154 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %156 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %23, align 8
  %159 = call i32 @xml_node_get_text_free(i32 %157, i8* %158)
  %160 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %161 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %150
  %165 = load i32, i32* @MSG_INFO, align 4
  %166 = call i32 (i32, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %123
  %169 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %170 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = call i32* @get_child_node(i32 %171, i32* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  store i32* %173, i32** %11, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %168
  %177 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %178 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %11, align 8
  %181 = call i8* @xml_node_get_text(i32 %179, i32* %180)
  store i8* %181, i8** %24, align 8
  %182 = load i8*, i8** %24, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load i8*, i8** %24, align 8
  %186 = call i64 @os_strcasecmp(i8* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 0, i32* %21, align 4
  br label %190

189:                                              ; preds = %184, %176
  store i32 1, i32* %21, align 4
  br label %190

190:                                              ; preds = %189, %188
  br label %194

191:                                              ; preds = %168
  %192 = load i32, i32* @MSG_INFO, align 4
  %193 = call i32 (i32, i8*, ...) @wpa_printf(i32 %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %194

194:                                              ; preds = %191, %190
  %195 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @get_user_pw(%struct.hs20_osu_client* %195, i32* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8** %14, i8** %15)
  %198 = load i8*, i8** %14, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @MSG_INFO, align 4
  %202 = load i8*, i8** %14, align 8
  %203 = call i32 (i32, i8*, ...) @wpa_printf(i32 %201, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i8*, i8** %15, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = load i8*, i8** %14, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %241

214:                                              ; preds = %211
  %215 = load i8*, i8** %15, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %241

217:                                              ; preds = %214
  %218 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %219 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32* @get_child_node(i32 %220, i32* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %241

224:                                              ; preds = %217
  %225 = load i32, i32* @MSG_INFO, align 4
  %226 = call i32 (i32, i8*, ...) @wpa_printf(i32 %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %227 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %228 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %229 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @os_snprintf(i8* %227, i32 200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %230)
  %232 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  store i8* %232, i8** %18, align 8
  %233 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  %234 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %235 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @os_snprintf(i8* %233, i32 200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %236)
  %238 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  store i8* %238, i8** %20, align 8
  %239 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %240 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %239, i32 0, i32 2
  store i32 1, i32* %240, align 8
  br label %241

241:                                              ; preds = %224, %217, %214, %211
  %242 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %243 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %10, align 8
  %246 = call i32* @get_child_node(i32 %244, i32* %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  store i32* %246, i32** %11, align 8
  %247 = load i32*, i32** %11, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %271

249:                                              ; preds = %241
  %250 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %251 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %11, align 8
  %254 = call i8* @xml_node_get_text(i32 %252, i32* %253)
  store i8* %254, i8** %16, align 8
  %255 = load i8*, i8** %16, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %270

257:                                              ; preds = %249
  %258 = load i8*, i8** %7, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load i8*, i8** %7, align 8
  %262 = load i8*, i8** %16, align 8
  %263 = call i64 @os_strcmp(i8* %261, i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260, %257
  %266 = load i32, i32* @MSG_INFO, align 4
  %267 = load i8*, i8** %16, align 8
  %268 = call i32 (i32, i8*, ...) @wpa_printf(i32 %266, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* %267)
  %269 = load i8*, i8** %16, align 8
  store i8* %269, i8** %7, align 8
  br label %270

270:                                              ; preds = %265, %260, %249
  br label %271

271:                                              ; preds = %270, %241
  %272 = load i8*, i8** %7, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* @MSG_INFO, align 4
  %276 = call i32 (i32, i8*, ...) @wpa_printf(i32 %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %331

277:                                              ; preds = %271
  %278 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %279 = call i32 @write_summary(%struct.hs20_osu_client* %278, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0))
  %280 = load i32, i32* @MSG_INFO, align 4
  %281 = call i32 (i32, i8*, ...) @wpa_printf(i32 %280, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i64 0, i64 0))
  %282 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %283 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @wait_ip_addr(i32 %284, i32 15)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %277
  %288 = load i32, i32* @MSG_INFO, align 4
  %289 = call i32 (i32, i8*, ...) @wpa_printf(i32 %288, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i64 0, i64 0))
  br label %290

290:                                              ; preds = %287, %277
  %291 = load i32, i32* %21, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %290
  %294 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %295 = load i8*, i8** %7, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = load i8*, i8** %18, align 8
  %298 = load i8*, i8** %20, align 8
  %299 = load i8*, i8** %14, align 8
  %300 = load i8*, i8** %15, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = call i32 @spp_sub_rem(%struct.hs20_osu_client* %294, i8* %295, i8* %296, i8* %297, i8* %298, i8* %299, i8* %300, i32* %301)
  br label %313

303:                                              ; preds = %290
  %304 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %305 = load i8*, i8** %7, align 8
  %306 = load i8*, i8** %8, align 8
  %307 = load i8*, i8** %18, align 8
  %308 = load i8*, i8** %20, align 8
  %309 = load i8*, i8** %14, align 8
  %310 = load i8*, i8** %15, align 8
  %311 = load i32*, i32** %10, align 8
  %312 = call i32 @oma_dm_sub_rem(%struct.hs20_osu_client* %304, i8* %305, i8* %306, i8* %307, i8* %308, i8* %309, i8* %310, i32* %311)
  br label %313

313:                                              ; preds = %303, %293
  %314 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %315 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i8*, i8** %16, align 8
  %318 = call i32 @xml_node_get_text_free(i32 %316, i8* %317)
  %319 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %320 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i8*, i8** %14, align 8
  %323 = call i32 @xml_node_get_text_free(i32 %321, i8* %322)
  %324 = load i8*, i8** %15, align 8
  %325 = call i32 @str_clear_free(i8* %324)
  %326 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %327 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %10, align 8
  %330 = call i32 @xml_node_free(i32 %328, i32* %329)
  store i32 0, i32* %5, align 4
  br label %331

331:                                              ; preds = %313, %274, %164, %147, %136, %120, %102, %88, %67, %50
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @get_wpa_status(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_file_exists(i8*) #1

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @get_user_pw(%struct.hs20_osu_client*, i32*, i8*, i8**, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @wait_ip_addr(i32, i32) #1

declare dso_local i32 @spp_sub_rem(%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @oma_dm_sub_rem(%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
