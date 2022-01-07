; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_run_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_run_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Add command target LocURI: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Do not allow Add outside ./Wi-Fi\00", align 1
@DM_RESP_PERMISSION_DENIED = common dso_local global i32 0, align 4
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Do not allow Add outside ./Wi-Fi/%s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PerProviderSubscription/\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Do not allow Add outside ./Wi-Fi/%s/PerProviderSubscription\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Add command for PPS node %s\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Specified PPS node exists already\00", align 1
@DM_RESP_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Node %s %s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"does not exist\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Parent URI: %s\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Nodes to add: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Adding interim node %s\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Adding node %s\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Item/Meta/Type\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"Could not find type text\00", align 1
@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"application/vnd.syncml.dmtnds+xml\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Item/Data\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"No Add/Item/Data found\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Could not get Add/Item/Data text\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"Add/Item/Data: %s\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Could not parse Add/Item/Data text\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Could not parse TNDS text\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Parsed TNDS\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i32*, i32*, i8*)* @oma_dm_run_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_run_add(%struct.hs20_osu_client* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hs20_osu_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %22, align 4
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @os_strncasecmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %34, i32* %6, align 4
  br label %330

35:                                               ; preds = %5
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  store i8* %37, i8** %12, align 8
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %39 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %43, i32* %6, align 4
  br label %330

44:                                               ; preds = %35
  %45 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %46 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @os_strlen(i8* %47)
  store i64 %48, i64* %13, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %51 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @os_strncasecmp(i8* %49, i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %44
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 47
  br i1 %63, label %64, label %71

64:                                               ; preds = %57, %44
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %70, i32* %6, align 4
  br label %330

71:                                               ; preds = %57
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @os_strncasecmp(i8* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 24)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %82 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %85, i32* %6, align 4
  br label %330

86:                                               ; preds = %71
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 24
  store i8* %88, i8** %12, align 8
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  %92 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %93 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32* @get_node(i32 %94, i32* %95, i8* %96)
  store i32* %97, i32** %17, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load i32, i32* @MSG_INFO, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @DM_RESP_ALREADY_EXISTS, align 4
  store i32 %103, i32* %6, align 4
  br label %330

104:                                              ; preds = %86
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @os_strdup(i8* %105)
  store i8* %106, i8** %19, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %110, i32* %6, align 4
  br label %330

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %122, %111
  %113 = load i32*, i32** %17, align 8
  %114 = icmp ne i32* %113, null
  %115 = xor i1 %114, true
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load i8*, i8** %19, align 8
  %118 = call i8* @os_strrchr(i8* %117, i8 signext 47)
  store i8* %118, i8** %20, align 8
  %119 = load i8*, i8** %20, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  br label %138

122:                                              ; preds = %116
  %123 = load i8*, i8** %20, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 0, i8* %124, align 1
  %125 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %126 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i8*, i8** %19, align 8
  %130 = call i32* @get_node(i32 %127, i32* %128, i8* %129)
  store i32* %130, i32** %17, align 8
  %131 = load i32, i32* @MSG_INFO, align 4
  %132 = load i8*, i8** %19, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = icmp ne i32* %133, null
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %132, i8* %136)
  br label %112

138:                                              ; preds = %121, %112
  %139 = load i32, i32* @MSG_INFO, align 4
  %140 = load i8*, i8** %19, align 8
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %140)
  %142 = load i32*, i32** %17, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = load i32*, i32** %10, align 8
  store i32* %145, i32** %17, align 8
  br label %146

146:                                              ; preds = %144, %138
  %147 = load i8*, i8** %19, align 8
  %148 = call i64 @os_strlen(i8* %147)
  store i64 %148, i64* %23, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i64, i64* %23, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8*, i8** %12, align 8
  %154 = call i64 @os_strlen(i8* %153)
  %155 = call i32 @os_strlcpy(i8* %149, i8* %152, i64 %154)
  %156 = load i8*, i8** %19, align 8
  store i8* %156, i8** %20, align 8
  br label %157

157:                                              ; preds = %162, %146
  %158 = load i8*, i8** %20, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 47
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** %20, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %20, align 8
  br label %157

165:                                              ; preds = %157
  %166 = load i32, i32* @MSG_INFO, align 4
  %167 = load i8*, i8** %20, align 8
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %192, %165
  %170 = load i8*, i8** %20, align 8
  %171 = call i8* @os_strchr(i8* %170, i8 signext 47)
  store i8* %171, i8** %21, align 8
  %172 = load i8*, i8** %21, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  br label %195

175:                                              ; preds = %169
  %176 = load i8*, i8** %21, align 8
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* @MSG_INFO, align 4
  %178 = load i8*, i8** %20, align 8
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %178)
  %180 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %181 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %17, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = call i32* @xml_node_create(i32 %182, i32* %183, i32* null, i8* %184)
  store i32* %185, i32** %17, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %175
  %189 = load i8*, i8** %19, align 8
  %190 = call i32 @os_free(i8* %189)
  %191 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %191, i32* %6, align 4
  br label %330

192:                                              ; preds = %175
  %193 = load i8*, i8** %21, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %20, align 8
  br label %169

195:                                              ; preds = %174
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = load i8*, i8** %20, align 8
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %197)
  %199 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %200 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = call i32* @get_node(i32 %201, i32* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32* %203, i32** %14, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %230

206:                                              ; preds = %195
  %207 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %208 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %14, align 8
  %211 = call i8* @xml_node_get_text(i32 %209, i32* %210)
  store i8* %211, i8** %24, align 8
  %212 = load i8*, i8** %24, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %206
  %215 = load i32, i32* @MSG_ERROR, align 4
  %216 = call i32 (i32, i8*, ...) @wpa_printf(i32 %215, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %217 = load i8*, i8** %19, align 8
  %218 = call i32 @os_free(i8* %217)
  %219 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %219, i32* %6, align 4
  br label %330

220:                                              ; preds = %206
  %221 = load i32*, i32** %14, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i8*, i8** %24, align 8
  %225 = call i64 @os_strstr(i8* %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i1 [ false, %220 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %22, align 4
  br label %230

230:                                              ; preds = %227, %195
  %231 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %232 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %9, align 8
  %235 = call i32* @get_node(i32 %233, i32* %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  store i32* %235, i32** %14, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = icmp eq i32* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load i32, i32* @MSG_INFO, align 4
  %240 = call i32 (i32, i8*, ...) @wpa_printf(i32 %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %241 = load i8*, i8** %19, align 8
  %242 = call i32 @os_free(i8* %241)
  %243 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %243, i32* %6, align 4
  br label %330

244:                                              ; preds = %230
  %245 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %246 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = call i8* @xml_node_get_text(i32 %247, i32* %248)
  store i8* %249, i8** %18, align 8
  %250 = load i8*, i8** %18, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load i32, i32* @MSG_INFO, align 4
  %254 = call i32 (i32, i8*, ...) @wpa_printf(i32 %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %255 = load i8*, i8** %19, align 8
  %256 = call i32 @os_free(i8* %255)
  %257 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %257, i32* %6, align 4
  br label %330

258:                                              ; preds = %244
  %259 = load i32, i32* @MSG_DEBUG, align 4
  %260 = load i8*, i8** %18, align 8
  %261 = call i32 (i32, i8*, ...) @wpa_printf(i32 %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %260)
  %262 = load i32, i32* %22, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %312

264:                                              ; preds = %258
  %265 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %266 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i8*, i8** %18, align 8
  %269 = call i32* @xml_node_from_buf(i32 %267, i8* %268)
  store i32* %269, i32** %15, align 8
  %270 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %271 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i8*, i8** %18, align 8
  %274 = call i32 @xml_node_get_text_free(i32 %272, i8* %273)
  %275 = load i32*, i32** %15, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %283

277:                                              ; preds = %264
  %278 = load i32, i32* @MSG_INFO, align 4
  %279 = call i32 (i32, i8*, ...) @wpa_printf(i32 %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %280 = load i8*, i8** %19, align 8
  %281 = call i32 @os_free(i8* %280)
  %282 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %282, i32* %6, align 4
  br label %330

283:                                              ; preds = %264
  %284 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %285 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %15, align 8
  %288 = call i32* @tnds_to_mo(i32 %286, i32* %287)
  store i32* %288, i32** %16, align 8
  %289 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %290 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %15, align 8
  %293 = call i32 @xml_node_free(i32 %291, i32* %292)
  %294 = load i32*, i32** %16, align 8
  %295 = icmp eq i32* %294, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %283
  %297 = load i32, i32* @MSG_INFO, align 4
  %298 = call i32 (i32, i8*, ...) @wpa_printf(i32 %297, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %299 = load i8*, i8** %19, align 8
  %300 = call i32 @os_free(i8* %299)
  %301 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %301, i32* %6, align 4
  br label %330

302:                                              ; preds = %283
  %303 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %304 = load i32*, i32** %16, align 8
  %305 = call i32 @debug_dump_node(%struct.hs20_osu_client* %303, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32* %304)
  %306 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %307 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %17, align 8
  %310 = load i32*, i32** %16, align 8
  %311 = call i32 @xml_node_add_child(i32 %308, i32* %309, i32* %310)
  br label %316

312:                                              ; preds = %258
  %313 = load i8*, i8** %19, align 8
  %314 = call i32 @os_free(i8* %313)
  %315 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %315, i32* %6, align 4
  br label %330

316:                                              ; preds = %302
  %317 = load i8*, i8** %19, align 8
  %318 = call i32 @os_free(i8* %317)
  %319 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %320 = load i8*, i8** %11, align 8
  %321 = load i32*, i32** %10, align 8
  %322 = call i64 @update_pps_file(%struct.hs20_osu_client* %319, i8* %320, i32* %321)
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %316
  %325 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %325, i32* %6, align 4
  br label %330

326:                                              ; preds = %316
  %327 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %328 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %327, i32 0, i32 1
  store i32 1, i32* %328, align 8
  %329 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %329, i32* %6, align 4
  br label %330

330:                                              ; preds = %326, %324, %312, %296, %277, %252, %238, %214, %188, %109, %100, %79, %64, %42, %31
  %331 = load i32, i32* %6, align 4
  ret i32 %331
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32* @tnds_to_mo(i32, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i32 @xml_node_add_child(i32, i32*, i32*) #1

declare dso_local i64 @update_pps_file(%struct.hs20_osu_client*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
