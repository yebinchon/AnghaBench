; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32, i32 }

@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Replace command target LocURI: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Do not allow Replace outside ./Wi-Fi\00", align 1
@DM_RESP_PERMISSION_DENIED = common dso_local global i32 0, align 4
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Do not allow Replace outside ./Wi-Fi/%s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PerProviderSubscription/\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Do not allow Replace outside ./Wi-Fi/%s/PerProviderSubscription\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Replace command for PPS node %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Specified PPS node not found\00", align 1
@DM_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Item/Meta/Type\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Could not find type text\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"application/vnd.syncml.dmtnds+xml\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Item/Data\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"No Replace/Item/Data found\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Could not get Replace/Item/Data text\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Replace/Item/Data: %s\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Could not parse Replace/Item/Data text\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Could not parse TNDS text\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Parsed TNDS\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i32*, i8*)* @oma_dm_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_replace(%struct.hs20_osu_client* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client* %21, i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %27, i32* %5, align 4
  br label %268

28:                                               ; preds = %4
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @os_strncasecmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @os_free(i8* %38)
  %40 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %40, i32* %5, align 4
  br label %268

41:                                               ; preds = %28
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %45 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @os_free(i8* %49)
  %51 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %51, i32* %5, align 4
  br label %268

52:                                               ; preds = %41
  %53 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %54 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @os_strlen(i8* %55)
  store i64 %56, i64* %12, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %59 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @os_strncasecmp(i8* %57, i8* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %52
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 47
  br i1 %71, label %72, label %81

72:                                               ; preds = %65, %52
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %75 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %80, i32* %5, align 4
  br label %268

81:                                               ; preds = %65
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @os_strncasecmp(i8* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 24)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %92 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @os_free(i8* %95)
  %97 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %97, i32* %5, align 4
  br label %268

98:                                               ; preds = %81
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 24
  store i8* %100, i8** %11, align 8
  %101 = load i32, i32* @MSG_INFO, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %104 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %105 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32* @get_node(i32 %106, i32* %107, i8* %108)
  store i32* %109, i32** %16, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load i32, i32* @MSG_INFO, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @os_free(i8* %115)
  %117 = load i32, i32* @DM_RESP_NOT_FOUND, align 4
  store i32 %117, i32* %5, align 4
  br label %268

118:                                              ; preds = %98
  %119 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %120 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = call i32* @get_node(i32 %121, i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %150

126:                                              ; preds = %118
  %127 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %128 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = call i8* @xml_node_get_text(i32 %129, i32* %130)
  store i8* %131, i8** %20, align 8
  %132 = load i8*, i8** %20, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @os_free(i8* %137)
  %139 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %139, i32* %5, align 4
  br label %268

140:                                              ; preds = %126
  %141 = load i32*, i32** %13, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** %20, align 8
  %145 = call i64 @os_strstr(i8* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %147, %118
  %151 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %152 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = call i32* @get_node(i32 %153, i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i32* %155, i32** %13, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load i32, i32* @MSG_INFO, align 4
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @os_free(i8* %161)
  %163 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %163, i32* %5, align 4
  br label %268

164:                                              ; preds = %150
  %165 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %166 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = call i8* @xml_node_get_text(i32 %167, i32* %168)
  store i8* %169, i8** %18, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = load i32, i32* @MSG_INFO, align 4
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @os_free(i8* %175)
  %177 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %177, i32* %5, align 4
  br label %268

178:                                              ; preds = %164
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = load i8*, i8** %18, align 8
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %242

184:                                              ; preds = %178
  %185 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %186 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %18, align 8
  %189 = call i32* @xml_node_from_buf(i32 %187, i8* %188)
  store i32* %189, i32** %14, align 8
  %190 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %191 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %18, align 8
  %194 = call i32 @xml_node_get_text_free(i32 %192, i8* %193)
  %195 = load i32*, i32** %14, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %184
  %198 = load i32, i32* @MSG_INFO, align 4
  %199 = call i32 (i32, i8*, ...) @wpa_printf(i32 %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @os_free(i8* %200)
  %202 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %202, i32* %5, align 4
  br label %268

203:                                              ; preds = %184
  %204 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %205 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %14, align 8
  %208 = call i32* @tnds_to_mo(i32 %206, i32* %207)
  store i32* %208, i32** %15, align 8
  %209 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %210 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 @xml_node_free(i32 %211, i32* %212)
  %214 = load i32*, i32** %15, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %203
  %217 = load i32, i32* @MSG_INFO, align 4
  %218 = call i32 (i32, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @os_free(i8* %219)
  %221 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %221, i32* %5, align 4
  br label %268

222:                                              ; preds = %203
  %223 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @debug_dump_node(%struct.hs20_osu_client* %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %224)
  %226 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %227 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %16, align 8
  %230 = call i32* @xml_node_get_parent(i32 %228, i32* %229)
  store i32* %230, i32** %17, align 8
  %231 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %232 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %16, align 8
  %235 = call i32 @xml_node_detach(i32 %233, i32* %234)
  %236 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %237 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %17, align 8
  %240 = load i32*, i32** %15, align 8
  %241 = call i32 @xml_node_add_child(i32 %238, i32* %239, i32* %240)
  br label %254

242:                                              ; preds = %178
  %243 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %244 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %16, align 8
  %247 = load i8*, i8** %18, align 8
  %248 = call i32 @xml_node_set_text(i32 %245, i32* %246, i8* %247)
  %249 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %250 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i8*, i8** %18, align 8
  %253 = call i32 @xml_node_get_text_free(i32 %251, i8* %252)
  br label %254

254:                                              ; preds = %242, %222
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 @os_free(i8* %255)
  %257 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = load i32*, i32** %8, align 8
  %260 = call i64 @update_pps_file(%struct.hs20_osu_client* %257, i8* %258, i32* %259)
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %263, i32* %5, align 4
  br label %268

264:                                              ; preds = %254
  %265 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %266 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %265, i32 0, i32 1
  store i32 1, i32* %266, align 8
  %267 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %267, i32* %5, align 4
  br label %268

268:                                              ; preds = %264, %262, %216, %197, %172, %158, %134, %112, %89, %72, %48, %35, %26
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32* @tnds_to_mo(i32, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i32* @xml_node_get_parent(i32, i32*) #1

declare dso_local i32 @xml_node_detach(i32, i32*) #1

declare dso_local i32 @xml_node_add_child(i32, i32*, i32*) #1

declare dso_local i32 @xml_node_set_text(i32, i32*, i8*) #1

declare dso_local i64 @update_pps_file(%struct.hs20_osu_client*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
