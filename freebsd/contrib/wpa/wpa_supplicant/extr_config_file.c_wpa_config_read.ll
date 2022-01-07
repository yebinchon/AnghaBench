; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_cred*, %struct.wpa_ssid* }
%struct.wpa_cred = type { %struct.wpa_cred* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate config file structure\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Reading configuration file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to open config file '%s', error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"network={\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Line %d: failed to parse network block.\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Line %d: failed to add network block to priority list.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cred={\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Line %d: failed to parse cred block.\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"blob-base64-\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Line %d: failed to process blob.\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Line %d: Invalid configuration line '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_config* @wpa_config_read(i8* %0, %struct.wpa_config* %1) #0 {
  %3 = alloca %struct.wpa_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_config*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpa_ssid*, align 8
  %12 = alloca %struct.wpa_ssid*, align 8
  %13 = alloca %struct.wpa_ssid*, align 8
  %14 = alloca %struct.wpa_cred*, align 8
  %15 = alloca %struct.wpa_cred*, align 8
  %16 = alloca %struct.wpa_cred*, align 8
  %17 = alloca %struct.wpa_config*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wpa_config* %1, %struct.wpa_config** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.wpa_config* null, %struct.wpa_config** %3, align 8
  br label %224

23:                                               ; preds = %2
  %24 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %25 = icmp ne %struct.wpa_config* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  store %struct.wpa_config* %27, %struct.wpa_config** %17, align 8
  br label %30

28:                                               ; preds = %23
  %29 = call %struct.wpa_config* @wpa_config_alloc_empty(i32* null, i32* null)
  store %struct.wpa_config* %29, %struct.wpa_config** %17, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %32 = icmp eq %struct.wpa_config* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.wpa_config* null, %struct.wpa_config** %3, align 8
  br label %224

36:                                               ; preds = %30
  %37 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %38 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %37, i32 0, i32 1
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %38, align 8
  store %struct.wpa_ssid* %39, %struct.wpa_ssid** %13, align 8
  store %struct.wpa_ssid* %39, %struct.wpa_ssid** %12, align 8
  br label %40

40:                                               ; preds = %50, %36
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %42 = icmp ne %struct.wpa_ssid* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 0
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %45, align 8
  %47 = icmp ne %struct.wpa_ssid* %46, null
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 0
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %52, align 8
  store %struct.wpa_ssid* %53, %struct.wpa_ssid** %12, align 8
  br label %40

54:                                               ; preds = %48
  %55 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %56 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %55, i32 0, i32 0
  %57 = load %struct.wpa_cred*, %struct.wpa_cred** %56, align 8
  store %struct.wpa_cred* %57, %struct.wpa_cred** %16, align 8
  store %struct.wpa_cred* %57, %struct.wpa_cred** %15, align 8
  br label %58

58:                                               ; preds = %68, %54
  %59 = load %struct.wpa_cred*, %struct.wpa_cred** %15, align 8
  %60 = icmp ne %struct.wpa_cred* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.wpa_cred*, %struct.wpa_cred** %15, align 8
  %63 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %62, i32 0, i32 0
  %64 = load %struct.wpa_cred*, %struct.wpa_cred** %63, align 8
  %65 = icmp ne %struct.wpa_cred* %64, null
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load %struct.wpa_cred*, %struct.wpa_cred** %15, align 8
  %70 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %69, i32 0, i32 0
  %71 = load %struct.wpa_cred*, %struct.wpa_cred** %70, align 8
  store %struct.wpa_cred* %71, %struct.wpa_cred** %15, align 8
  br label %58

72:                                               ; preds = %66
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i32* @fopen(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load i32, i32* @MSG_ERROR, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %84)
  %86 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %87 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %88 = icmp ne %struct.wpa_config* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %91 = call i32 @os_free(%struct.wpa_config* %90)
  br label %92

92:                                               ; preds = %89, %80
  store %struct.wpa_config* null, %struct.wpa_config** %3, align 8
  br label %224

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %200, %190, %177, %149, %131, %110, %93
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %96 = load i32*, i32** %6, align 8
  %97 = call i64 @wpa_config_get_line(i8* %95, i32 512, i32* %96, i32* %10, i8** %8)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %201

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @os_strcmp(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  %107 = call %struct.wpa_ssid* @wpa_config_read_network(i32* %104, i32* %10, i32 %105)
  store %struct.wpa_ssid* %107, %struct.wpa_ssid** %11, align 8
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  %109 = icmp eq %struct.wpa_ssid* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @MSG_ERROR, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %94

116:                                              ; preds = %103
  %117 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %118 = icmp eq %struct.wpa_ssid* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %120, %struct.wpa_ssid** %12, align 8
  store %struct.wpa_ssid* %120, %struct.wpa_ssid** %13, align 8
  br label %126

121:                                              ; preds = %116
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  %123 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %124 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %123, i32 0, i32 0
  store %struct.wpa_ssid* %122, %struct.wpa_ssid** %124, align 8
  %125 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %125, %struct.wpa_ssid** %12, align 8
  br label %126

126:                                              ; preds = %121, %119
  %127 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %128 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  %129 = call i64 @wpa_config_add_prio_network(%struct.wpa_config* %127, %struct.wpa_ssid* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @MSG_ERROR, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %94

137:                                              ; preds = %126
  br label %200

138:                                              ; preds = %99
  %139 = load i8*, i8** %8, align 8
  %140 = call i64 @os_strcmp(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  %146 = call %struct.wpa_cred* @wpa_config_read_cred(i32* %143, i32* %10, i32 %144)
  store %struct.wpa_cred* %146, %struct.wpa_cred** %14, align 8
  %147 = load %struct.wpa_cred*, %struct.wpa_cred** %14, align 8
  %148 = icmp eq %struct.wpa_cred* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @MSG_ERROR, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %94

155:                                              ; preds = %142
  %156 = load %struct.wpa_cred*, %struct.wpa_cred** %16, align 8
  %157 = icmp eq %struct.wpa_cred* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load %struct.wpa_cred*, %struct.wpa_cred** %14, align 8
  store %struct.wpa_cred* %159, %struct.wpa_cred** %15, align 8
  store %struct.wpa_cred* %159, %struct.wpa_cred** %16, align 8
  br label %165

160:                                              ; preds = %155
  %161 = load %struct.wpa_cred*, %struct.wpa_cred** %14, align 8
  %162 = load %struct.wpa_cred*, %struct.wpa_cred** %15, align 8
  %163 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %162, i32 0, i32 0
  store %struct.wpa_cred* %161, %struct.wpa_cred** %163, align 8
  %164 = load %struct.wpa_cred*, %struct.wpa_cred** %14, align 8
  store %struct.wpa_cred* %164, %struct.wpa_cred** %15, align 8
  br label %165

165:                                              ; preds = %160, %158
  br label %199

166:                                              ; preds = %138
  %167 = load i8*, i8** %8, align 8
  %168 = call i64 @os_strncmp(i8* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 12
  %175 = call i64 @wpa_config_process_blob(%struct.wpa_config* %171, i32* %172, i32* %10, i8* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load i32, i32* @MSG_ERROR, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %94

183:                                              ; preds = %170
  br label %198

184:                                              ; preds = %166
  %185 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @wpa_config_process_global(%struct.wpa_config* %185, i8* %186, i32 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i32, i32* @MSG_ERROR, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %192, i8* %193)
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %94

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %183
  br label %199

199:                                              ; preds = %198, %165
  br label %200

200:                                              ; preds = %199, %137
  br label %94

201:                                              ; preds = %94
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @fclose(i32* %202)
  %204 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %205 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %206 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %205, i32 0, i32 1
  store %struct.wpa_ssid* %204, %struct.wpa_ssid** %206, align 8
  %207 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %208 = call i32 @wpa_config_debug_dump_networks(%struct.wpa_config* %207)
  %209 = load %struct.wpa_cred*, %struct.wpa_cred** %16, align 8
  %210 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %211 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %210, i32 0, i32 0
  store %struct.wpa_cred* %209, %struct.wpa_cred** %211, align 8
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %201
  %215 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %216 = load %struct.wpa_config*, %struct.wpa_config** %5, align 8
  %217 = icmp ne %struct.wpa_config* %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  %220 = call i32 @wpa_config_free(%struct.wpa_config* %219)
  br label %221

221:                                              ; preds = %218, %214
  store %struct.wpa_config* null, %struct.wpa_config** %17, align 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %13, align 8
  br label %222

222:                                              ; preds = %221, %201
  %223 = load %struct.wpa_config*, %struct.wpa_config** %17, align 8
  store %struct.wpa_config* %223, %struct.wpa_config** %3, align 8
  br label %224

224:                                              ; preds = %222, %92, %33, %22
  %225 = load %struct.wpa_config*, %struct.wpa_config** %3, align 8
  ret %struct.wpa_config* %225
}

declare dso_local %struct.wpa_config* @wpa_config_alloc_empty(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_free(%struct.wpa_config*) #1

declare dso_local i64 @wpa_config_get_line(i8*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_read_network(i32*, i32*, i32) #1

declare dso_local i64 @wpa_config_add_prio_network(%struct.wpa_config*, %struct.wpa_ssid*) #1

declare dso_local %struct.wpa_cred* @wpa_config_read_cred(i32*, i32*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @wpa_config_process_blob(%struct.wpa_config*, i32*, i32*, i8*) #1

declare dso_local i64 @wpa_config_process_global(%struct.wpa_config*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @wpa_config_debug_dump_networks(%struct.wpa_config*) #1

declare dso_local i32 @wpa_config_free(%struct.wpa_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
