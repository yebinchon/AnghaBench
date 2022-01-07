; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_pol_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_pol_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i8*, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Policy update requested\00", align 1
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
@.str.19 = private unnamed_addr constant [33 x i8] c"Policy/PolicyUpdate/UpdateMethod\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"OMA-DM-ClientInitiated\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"No UpdateMethod specified - assume SPP\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Policy/PolicyUpdate/UsernamePassword\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Using username: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"Using password: %s\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Credential/DigitalCertificate\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Using client certificate\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SP/%s/client-cert.pem\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"SP/%s/client-key.pem\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Policy/PolicyUpdate/URI\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"URI based on PPS: %s\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Server URL not known\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i8*, i8*)* @cmd_pol_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_pol_upd(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %20, align 8
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %96, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @os_strncmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = call i32 @os_snprintf(i8* %42, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  store i8* null, i8** %7, align 8
  br label %57

46:                                               ; preds = %35, %30
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %51 = call i64 @get_wpa_status(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %50, i32 256)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %59 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @os_free(i8* %60)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %63 = call i8* @os_strdup(i8* %62)
  %64 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %65 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %320

71:                                               ; preds = %57
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %76 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %77 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @os_snprintf(i8* %75, i32 300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %78)
  %80 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  store i8* %80, i8** %8, align 8
  %81 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %83 = call i32 @os_snprintf(i8* %81, i32 200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = call i64 @os_snprintf_error(i32 200, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %89 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @os_free(i8* %90)
  %92 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %93 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %92, i32 0, i32 0
  store i8* null, i8** %93, align 8
  store i32 -1, i32* %5, align 4
  br label %320

94:                                               ; preds = %71
  %95 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %94, %4
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @os_file_exists(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @MSG_INFO, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  store i32 -1, i32* %5, align 4
  br label %320

104:                                              ; preds = %96
  %105 = load i32, i32* @MSG_INFO, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %9, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @os_file_exists(i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @MSG_INFO, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %116)
  store i32 -1, i32* %5, align 4
  br label %320

118:                                              ; preds = %110, %104
  %119 = load i32, i32* @MSG_INFO, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %9, align 8
  %123 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %124 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %126 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32* @node_from_file(i32 %127, i8* %128)
  store i32* %129, i32** %10, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load i32, i32* @MSG_INFO, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

135:                                              ; preds = %118
  %136 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %137 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %180, label %140

140:                                              ; preds = %135
  %141 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %142 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = call i32* @get_child_node(i32 %143, i32* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i32* %145, i32** %11, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i32, i32* @MSG_INFO, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

151:                                              ; preds = %140
  %152 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %153 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i8* @xml_node_get_text(i32 %154, i32* %155)
  store i8* %156, i8** %24, align 8
  %157 = load i8*, i8** %24, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32, i32* @MSG_INFO, align 4
  %161 = call i32 (i32, i8*, ...) @wpa_printf(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

162:                                              ; preds = %151
  %163 = load i8*, i8** %24, align 8
  %164 = call i8* @os_strdup(i8* %163)
  %165 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %166 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %168 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %24, align 8
  %171 = call i32 @xml_node_get_text_free(i32 %169, i8* %170)
  %172 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %173 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %162
  %177 = load i32, i32* @MSG_INFO, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %135
  %181 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %182 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = call i32* @get_child_node(i32 %183, i32* %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  store i32* %185, i32** %11, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %203

188:                                              ; preds = %180
  %189 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %190 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = call i8* @xml_node_get_text(i32 %191, i32* %192)
  store i8* %193, i8** %25, align 8
  %194 = load i8*, i8** %25, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i8*, i8** %25, align 8
  %198 = call i64 @os_strcasecmp(i8* %197, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 0, i32* %21, align 4
  br label %202

201:                                              ; preds = %196, %188
  store i32 1, i32* %21, align 4
  br label %202

202:                                              ; preds = %201, %200
  br label %206

203:                                              ; preds = %180
  %204 = load i32, i32* @MSG_INFO, align 4
  %205 = call i32 (i32, i8*, ...) @wpa_printf(i32 %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %206

206:                                              ; preds = %203, %202
  %207 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = call i32 @get_user_pw(%struct.hs20_osu_client* %207, i32* %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8** %15, i8** %16)
  %210 = load i8*, i8** %15, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i32, i32* @MSG_INFO, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %212, %206
  %217 = load i8*, i8** %16, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = load i8*, i8** %16, align 8
  %222 = call i32 (i32, i8*, ...) @wpa_printf(i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = load i8*, i8** %15, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %251

226:                                              ; preds = %223
  %227 = load i8*, i8** %16, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %251

229:                                              ; preds = %226
  %230 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %231 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = call i32* @get_child_node(i32 %232, i32* %233, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %251

236:                                              ; preds = %229
  %237 = load i32, i32* @MSG_INFO, align 4
  %238 = call i32 (i32, i8*, ...) @wpa_printf(i32 %237, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %239 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %240 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %241 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @os_snprintf(i8* %239, i32 200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %242)
  %244 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  store i8* %244, i8** %18, align 8
  %245 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  %246 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %247 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @os_snprintf(i8* %245, i32 200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %248)
  %250 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  store i8* %250, i8** %20, align 8
  br label %251

251:                                              ; preds = %236, %229, %226, %223
  %252 = load i8*, i8** %7, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %273, label %254

254:                                              ; preds = %251
  %255 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %256 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = call i32* @get_child_node(i32 %257, i32* %258, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  store i32* %259, i32** %11, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %272

262:                                              ; preds = %254
  %263 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %264 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %11, align 8
  %267 = call i8* @xml_node_get_text(i32 %265, i32* %266)
  store i8* %267, i8** %14, align 8
  %268 = load i32, i32* @MSG_INFO, align 4
  %269 = load i8*, i8** %14, align 8
  %270 = call i32 (i32, i8*, ...) @wpa_printf(i32 %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* %269)
  %271 = load i8*, i8** %14, align 8
  store i8* %271, i8** %7, align 8
  br label %272

272:                                              ; preds = %262, %254
  br label %273

273:                                              ; preds = %272, %251
  %274 = load i8*, i8** %7, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* @MSG_INFO, align 4
  %278 = call i32 (i32, i8*, ...) @wpa_printf(i32 %277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %320

279:                                              ; preds = %273
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %284 = load i8*, i8** %7, align 8
  %285 = load i8*, i8** %8, align 8
  %286 = load i8*, i8** %18, align 8
  %287 = load i8*, i8** %20, align 8
  %288 = load i8*, i8** %15, align 8
  %289 = load i8*, i8** %16, align 8
  %290 = load i32*, i32** %10, align 8
  %291 = call i32 @spp_pol_upd(%struct.hs20_osu_client* %283, i8* %284, i8* %285, i8* %286, i8* %287, i8* %288, i8* %289, i32* %290)
  br label %302

292:                                              ; preds = %279
  %293 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = load i8*, i8** %8, align 8
  %296 = load i8*, i8** %18, align 8
  %297 = load i8*, i8** %20, align 8
  %298 = load i8*, i8** %15, align 8
  %299 = load i8*, i8** %16, align 8
  %300 = load i32*, i32** %10, align 8
  %301 = call i32 @oma_dm_pol_upd(%struct.hs20_osu_client* %293, i8* %294, i8* %295, i8* %296, i8* %297, i8* %298, i8* %299, i32* %300)
  br label %302

302:                                              ; preds = %292, %282
  %303 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %304 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i8*, i8** %14, align 8
  %307 = call i32 @xml_node_get_text_free(i32 %305, i8* %306)
  %308 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %309 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = call i32 @xml_node_get_text_free(i32 %310, i8* %311)
  %313 = load i8*, i8** %16, align 8
  %314 = call i32 @str_clear_free(i8* %313)
  %315 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %316 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i32*, i32** %10, align 8
  %319 = call i32 @xml_node_free(i32 %317, i32* %318)
  store i32 0, i32* %5, align 4
  br label %320

320:                                              ; preds = %302, %276, %176, %159, %148, %132, %114, %100, %87, %70, %53
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @get_wpa_status(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_file_exists(i8*) #1

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @get_user_pw(%struct.hs20_osu_client*, i32*, i8*, i8**, i8**) #1

declare dso_local i32 @spp_pol_upd(%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @oma_dm_pol_upd(%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
