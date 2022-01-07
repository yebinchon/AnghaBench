; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_sanitize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.scsi_sense_data }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_sanitize_parameter_list = type { i32, i32 }
%struct.stat = type { i64 }
%struct.ata_params = type opaque
%struct.TYPE_4__ = type { i32, i32 }

@CC_DT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sanitize: can't get device type\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sanitize: error allocating ccb\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@SSZ_SERVICE_ACTION_OVERWRITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@SSZ_SERVICE_ACTION_BLOCK_ERASE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@SSZ_SERVICE_ACTION_CRYPTO_ERASE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"exitfailure\00", align 1
@SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid service operation \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid passes value %d\00", align 1
@CC_DT_SCSI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"an action is required\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"overwrite action requires -P argument\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"cannot open pattern file %s\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"cannot stat pattern file %s\00", align 1
@SSZPL_MAX_PATTERN_LENGTH = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [43 x i8] c"pattern file size exceeds maximum value %d\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"cannot allocate parameter list buffer\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"cannot read pattern file\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"short pattern file read\00", align 1
@SSZPL_INVERT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"%s argument only valid with overwrite operation\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [61 x i8] c"You are about to REMOVE ALL DATA from the following device:\0A\00", align 1
@CC_DT_ATA = common dso_local global i64 0, align 8
@CC_DT_SATL = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"sanitize: error sending inquiry\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Current sanitize timeout is %d seconds\0A\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"Enter new timeout in seconds or press\0Areturn to keep the current timeout [%d] \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"Using new timeout value %d\0A\00", align 1
@SSZ_UNRESTRICTED_EXIT = common dso_local global i64 0, align 8
@SSZ_IMMED = common dso_local global i64 0, align 8
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"error sending sanitize command\00", align 1
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_SANITIZE = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"sanitize is not supported by this device\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"error sanitizing this device\00", align 1
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"Sanitize Complete\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Sanitize Complete                      \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i8**, i8*, i32, i32, i32)* @sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.ccb*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca %struct.scsi_sanitize_parameter_list*, align 8
  %38 = alloca %struct.stat, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i8*, align 8
  %42 = alloca %struct.ata_params*, align 8
  %43 = alloca [1024 x i8], align 16
  %44 = alloca i32, align 4
  %45 = alloca %struct.scsi_sense_data*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  store i8* null, i8** %28, align 8
  store i64* null, i64** %29, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %35, align 4
  %50 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %51 = call i32 @get_device_type(%struct.cam_device* %50, i32 -1, i32 0, i32 0, i64* %36)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %7
  %55 = load i64, i64* %36, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @CC_DT_UNKNOWN, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %7
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %660

61:                                               ; preds = %54
  %62 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %63 = call %union.ccb* @cam_getccb(%struct.cam_device* %62)
  store %union.ccb* %63, %union.ccb** %16, align 8
  %64 = load %union.ccb*, %union.ccb** %16, align 8
  %65 = icmp eq %union.ccb* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %660

68:                                               ; preds = %61
  %69 = load %union.ccb*, %union.ccb** %16, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_5__*
  %71 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %140, %68
  %73 = load i32, i32* %10, align 4
  %74 = load i8**, i8*** %11, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @getopt(i32 %73, i8** %74, i8* %75)
  store i32 %76, i32* %18, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %141

78:                                               ; preds = %72
  %79 = load i32, i32* %18, align 4
  switch i32 %79, label %140 [
    i32 97, label %80
    i32 99, label %111
    i32 73, label %123
    i32 80, label %124
    i32 113, label %126
    i32 85, label %129
    i32 114, label %130
    i32 119, label %131
    i32 121, label %137
  ]

80:                                               ; preds = %78
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @SSZ_SERVICE_ACTION_OVERWRITE, align 8
  store i64 %85, i64* %17, align 8
  br label %110

86:                                               ; preds = %80
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i64, i64* @SSZ_SERVICE_ACTION_BLOCK_ERASE, align 8
  store i64 %91, i64* %17, align 8
  br label %109

92:                                               ; preds = %86
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @SSZ_SERVICE_ACTION_CRYPTO_ERASE, align 8
  store i64 %97, i64* %17, align 8
  br label %108

98:                                               ; preds = %92
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @strcasecmp(i8* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* @SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE, align 8
  store i64 %103, i64* %17, align 8
  br label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  store i32 1, i32* %21, align 4
  br label %644

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %84
  br label %140

111:                                              ; preds = %78
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i32 @strtol(i8* %112, i32* null, i32 0)
  store i32 %113, i32* %25, align 4
  %114 = load i32, i32* %25, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %25, align 4
  %118 = icmp sgt i32 %117, 31
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %25, align 4
  %121 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  store i32 1, i32* %21, align 4
  br label %644

122:                                              ; preds = %116
  br label %140

123:                                              ; preds = %78
  store i32 1, i32* %24, align 4
  br label %140

124:                                              ; preds = %78
  %125 = load i8*, i8** @optarg, align 8
  store i8* %125, i8** %28, align 8
  br label %140

126:                                              ; preds = %78
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %140

129:                                              ; preds = %78
  store i32 1, i32* %26, align 4
  br label %140

130:                                              ; preds = %78
  store i32 1, i32* %35, align 4
  br label %140

131:                                              ; preds = %78
  %132 = load i64, i64* %36, align 8
  %133 = load i64, i64* @CC_DT_SCSI, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %23, align 4
  br label %136

136:                                              ; preds = %135, %131
  br label %140

137:                                              ; preds = %78
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %140

140:                                              ; preds = %78, %137, %136, %130, %129, %126, %124, %123, %122, %110
  br label %72

141:                                              ; preds = %72
  %142 = load i32, i32* %35, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %608

145:                                              ; preds = %141
  %146 = load i64, i64* %17, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

150:                                              ; preds = %145
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* @SSZ_SERVICE_ACTION_OVERWRITE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %237

154:                                              ; preds = %150
  %155 = load i8*, i8** %28, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

159:                                              ; preds = %154
  %160 = load i8*, i8** %28, align 8
  %161 = load i32, i32* @O_RDONLY, align 4
  %162 = call i32 @open(i8* %160, i32 %161)
  store i32 %162, i32* %27, align 4
  %163 = load i32, i32* %27, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i8*, i8** %28, align 8
  %167 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %166)
  store i32 1, i32* %21, align 4
  br label %644

168:                                              ; preds = %159
  %169 = load i32, i32* %27, align 4
  %170 = call i64 @fstat(i32 %169, %struct.stat* %38)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i8*, i8** %28, align 8
  %174 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %173)
  store i32 1, i32* %21, align 4
  br label %644

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %39, align 8
  %178 = load i64, i64* %39, align 8
  %179 = load i64, i64* @SSZPL_MAX_PATTERN_LENGTH, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i64, i64* @SSZPL_MAX_PATTERN_LENGTH, align 8
  %183 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %182)
  store i32 1, i32* %21, align 4
  br label %644

184:                                              ; preds = %175
  %185 = load i64, i64* %39, align 8
  %186 = add i64 8, %185
  store i64 %186, i64* %30, align 8
  %187 = load i64, i64* %30, align 8
  %188 = call i64* @calloc(i32 1, i64 %187)
  store i64* %188, i64** %29, align 8
  %189 = load i64*, i64** %29, align 8
  %190 = icmp eq i64* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

193:                                              ; preds = %184
  %194 = load i32, i32* %27, align 4
  %195 = load i64*, i64** %29, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 8
  %197 = load i64, i64* %39, align 8
  %198 = call i64 @read(i32 %194, i64* %196, i64 %197)
  store i64 %198, i64* %40, align 8
  %199 = load i64, i64* %40, align 8
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

203:                                              ; preds = %193
  %204 = load i64, i64* %40, align 8
  %205 = load i64, i64* %39, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209
  %211 = load i64*, i64** %29, align 8
  %212 = bitcast i64* %211 to %struct.scsi_sanitize_parameter_list*
  store %struct.scsi_sanitize_parameter_list* %212, %struct.scsi_sanitize_parameter_list** %37, align 8
  %213 = load i32, i32* %25, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.scsi_sanitize_parameter_list*, %struct.scsi_sanitize_parameter_list** %37, align 8
  %217 = getelementptr inbounds %struct.scsi_sanitize_parameter_list, %struct.scsi_sanitize_parameter_list* %216, i32 0, i32 0
  store i32 1, i32* %217, align 4
  br label %222

218:                                              ; preds = %210
  %219 = load i32, i32* %25, align 4
  %220 = load %struct.scsi_sanitize_parameter_list*, %struct.scsi_sanitize_parameter_list** %37, align 8
  %221 = getelementptr inbounds %struct.scsi_sanitize_parameter_list, %struct.scsi_sanitize_parameter_list* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %215
  %223 = load i32, i32* %24, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* @SSZPL_INVERT, align 4
  %227 = load %struct.scsi_sanitize_parameter_list*, %struct.scsi_sanitize_parameter_list** %37, align 8
  %228 = getelementptr inbounds %struct.scsi_sanitize_parameter_list, %struct.scsi_sanitize_parameter_list* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %222
  %232 = load i64, i64* %39, align 8
  %233 = load %struct.scsi_sanitize_parameter_list*, %struct.scsi_sanitize_parameter_list** %37, align 8
  %234 = getelementptr inbounds %struct.scsi_sanitize_parameter_list, %struct.scsi_sanitize_parameter_list* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @scsi_ulto2b(i64 %232, i32 %235)
  br label %259

237:                                              ; preds = %150
  %238 = load i32, i32* %25, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %41, align 8
  br label %252

241:                                              ; preds = %237
  %242 = load i32, i32* %24, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %41, align 8
  br label %251

245:                                              ; preds = %241
  %246 = load i8*, i8** %28, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8** %41, align 8
  br label %250

249:                                              ; preds = %245
  store i8* null, i8** %41, align 8
  br label %250

250:                                              ; preds = %249, %248
  br label %251

251:                                              ; preds = %250, %244
  br label %252

252:                                              ; preds = %251, %240
  %253 = load i8*, i8** %41, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i8*, i8** %41, align 8
  %257 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* %256)
  store i32 1, i32* %21, align 4
  br label %644

258:                                              ; preds = %252
  br label %259

259:                                              ; preds = %258, %231
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %20, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %321

263:                                              ; preds = %260
  %264 = load i32, i32* %19, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %321

266:                                              ; preds = %263
  %267 = load i32, i32* @stdout, align 4
  %268 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0))
  %269 = load i64, i64* %36, align 8
  %270 = load i64, i64* @CC_DT_SCSI, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %266
  %273 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %274 = load i32, i32* %10, align 4
  %275 = load i8**, i8*** %11, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* %15, align 4
  %280 = call i32 @scsidoinquiry(%struct.cam_device* %273, i32 %274, i8** %275, i8* %276, i32 %277, i32 %278, i32 %279)
  store i32 %280, i32* %21, align 4
  br label %315

281:                                              ; preds = %266
  %282 = load i64, i64* %36, align 8
  %283 = load i64, i64* @CC_DT_ATA, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %36, align 8
  %287 = load i64, i64* @CC_DT_SATL, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %313

289:                                              ; preds = %285, %281
  %290 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %15, align 4
  %293 = load %union.ccb*, %union.ccb** %16, align 8
  %294 = bitcast %struct.ata_params** %42 to i64**
  %295 = call i32 @ata_do_identify(%struct.cam_device* %290, i32 %291, i32 %292, %union.ccb* %293, i64** %294)
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %21, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %289
  %299 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %300 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %303 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %301, i32 %304)
  %306 = load %struct.ata_params*, %struct.ata_params** %42, align 8
  %307 = bitcast %struct.ata_params* %306 to i64*
  %308 = call i32 @ata_print_ident(i64* %307)
  %309 = load %struct.ata_params*, %struct.ata_params** %42, align 8
  %310 = bitcast %struct.ata_params* %309 to i64*
  %311 = call i32 @free(i64* %310)
  br label %312

312:                                              ; preds = %298, %289
  br label %314

313:                                              ; preds = %285
  store i32 1, i32* %21, align 4
  br label %314

314:                                              ; preds = %313, %312
  br label %315

315:                                              ; preds = %314, %272
  %316 = load i32, i32* %21, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  br label %644

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320, %263, %260
  %322 = load i32, i32* %19, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = call i32 (...) @get_confirmation()
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %324
  store i32 1, i32* %21, align 4
  br label %644

328:                                              ; preds = %324
  br label %329

329:                                              ; preds = %328, %321
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = load i32, i32* %15, align 4
  store i32 %333, i32* %22, align 4
  br label %340

334:                                              ; preds = %329
  %335 = load i32, i32* %23, align 4
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i32 10, i32 10800
  %339 = mul nsw i32 %338, 1000
  store i32 %339, i32* %22, align 4
  br label %340

340:                                              ; preds = %334, %332
  %341 = load i32, i32* %23, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %340
  %344 = load i32, i32* %20, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i32, i32* @stdout, align 4
  %348 = load i32, i32* %22, align 4
  %349 = sdiv i32 %348, 1000
  %350 = call i32 (i32, i8*, ...) @fprintf(i32 %347, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %346, %343, %340
  %352 = load i32, i32* %23, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %389

354:                                              ; preds = %351
  %355 = load i32, i32* %19, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %389

357:                                              ; preds = %354
  %358 = load i32, i32* %15, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %389

360:                                              ; preds = %357
  store i32 0, i32* %44, align 4
  %361 = load i32, i32* @stdout, align 4
  %362 = load i32, i32* %22, align 4
  %363 = sdiv i32 %362, 1000
  %364 = call i32 (i32, i8*, ...) @fprintf(i32 %361, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i64 0, i64 0), i32 %363)
  %365 = getelementptr inbounds [1024 x i8], [1024 x i8]* %43, i64 0, i64 0
  %366 = load i32, i32* @stdin, align 4
  %367 = call i32* @fgets(i8* %365, i32 1024, i32 %366)
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %378

369:                                              ; preds = %360
  %370 = getelementptr inbounds [1024 x i8], [1024 x i8]* %43, i64 0, i64 0
  %371 = load i8, i8* %370, align 16
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = getelementptr inbounds [1024 x i8], [1024 x i8]* %43, i64 0, i64 0
  %376 = call i32 @atoi(i8* %375)
  store i32 %376, i32* %44, align 4
  br label %377

377:                                              ; preds = %374, %369
  br label %378

378:                                              ; preds = %377, %360
  %379 = load i32, i32* %44, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %378
  %382 = load i32, i32* %44, align 4
  %383 = mul nsw i32 %382, 1000
  store i32 %383, i32* %22, align 4
  %384 = load i32, i32* @stdout, align 4
  %385 = load i32, i32* %22, align 4
  %386 = sdiv i32 %385, 1000
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %386)
  br label %388

388:                                              ; preds = %381, %378
  br label %389

389:                                              ; preds = %388, %357, %354, %351
  %390 = load i64, i64* %36, align 8
  %391 = load i64, i64* @CC_DT_SCSI, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %444

393:                                              ; preds = %389
  %394 = load i64, i64* %17, align 8
  store i64 %394, i64* %31, align 8
  %395 = load i32, i32* %26, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load i64, i64* @SSZ_UNRESTRICTED_EXIT, align 8
  %399 = load i64, i64* %31, align 8
  %400 = or i64 %399, %398
  store i64 %400, i64* %31, align 8
  br label %401

401:                                              ; preds = %397, %393
  %402 = load i32, i32* %23, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %401
  %405 = load i64, i64* @SSZ_IMMED, align 8
  %406 = load i64, i64* %31, align 8
  %407 = or i64 %406, %405
  store i64 %407, i64* %31, align 8
  br label %408

408:                                              ; preds = %404, %401
  %409 = load %union.ccb*, %union.ccb** %16, align 8
  %410 = bitcast %union.ccb* %409 to %struct.TYPE_5__*
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %13, align 4
  %413 = load i64, i64* %31, align 8
  %414 = load i64*, i64** %29, align 8
  %415 = load i64, i64* %30, align 8
  %416 = load i32, i32* @SSD_FULL_SIZE, align 4
  %417 = load i32, i32* %22, align 4
  %418 = call i32 @scsi_sanitize(%struct.TYPE_5__* %410, i32 %411, i32* null, i32 %412, i64 %413, i32 0, i64* %414, i64 %415, i32 %416, i32 %417)
  %419 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %420 = load %union.ccb*, %union.ccb** %16, align 8
  %421 = bitcast %union.ccb* %420 to %struct.TYPE_4__*
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, %419
  store i32 %424, i32* %422, align 4
  %425 = load i32, i32* @arglist, align 4
  %426 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %408
  %430 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %431 = load %union.ccb*, %union.ccb** %16, align 8
  %432 = bitcast %union.ccb* %431 to %struct.TYPE_4__*
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = or i32 %434, %430
  store i32 %435, i32* %433, align 4
  br label %436

436:                                              ; preds = %429, %408
  %437 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %438 = load %union.ccb*, %union.ccb** %16, align 8
  %439 = call i64 @cam_send_ccb(%struct.cam_device* %437, %union.ccb* %438)
  %440 = icmp slt i64 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %436
  %442 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %644

443:                                              ; preds = %436
  br label %535

444:                                              ; preds = %389
  %445 = load i64, i64* %36, align 8
  %446 = load i64, i64* @CC_DT_ATA, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %452, label %448

448:                                              ; preds = %444
  %449 = load i64, i64* %36, align 8
  %450 = load i64, i64* @CC_DT_SATL, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %534

452:                                              ; preds = %448, %444
  %453 = load i64, i64* %17, align 8
  %454 = load i64, i64* @SSZ_SERVICE_ACTION_OVERWRITE, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %488

456:                                              ; preds = %452
  store i32 20, i32* %32, align 4
  %457 = load i64*, i64** %29, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 4
  %459 = call i32 @scsi_4btoul(i64* %458)
  %460 = sext i32 %459 to i64
  %461 = or i64 87235080749056, %460
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %34, align 4
  %463 = load i32, i32* %25, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %456
  br label %474

466:                                              ; preds = %456
  %467 = load i32, i32* %25, align 4
  %468 = icmp sge i32 %467, 16
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  br label %472

470:                                              ; preds = %466
  %471 = load i32, i32* %25, align 4
  br label %472

472:                                              ; preds = %470, %469
  %473 = phi i32 [ 0, %469 ], [ %471, %470 ]
  br label %474

474:                                              ; preds = %472, %465
  %475 = phi i32 [ 1, %465 ], [ %473, %472 ]
  store i32 %475, i32* %33, align 4
  %476 = load i32, i32* %24, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %474
  %479 = load i32, i32* %33, align 4
  %480 = or i32 %479, 128
  store i32 %480, i32* %33, align 4
  br label %481

481:                                              ; preds = %478, %474
  %482 = load i32, i32* %26, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %481
  %485 = load i32, i32* %33, align 4
  %486 = or i32 %485, 16
  store i32 %486, i32* %33, align 4
  br label %487

487:                                              ; preds = %484, %481
  br label %519

488:                                              ; preds = %452
  %489 = load i64, i64* %17, align 8
  %490 = load i64, i64* @SSZ_SERVICE_ACTION_BLOCK_ERASE, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %499

492:                                              ; preds = %488
  store i32 18, i32* %32, align 4
  store i32 1114326386, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %493 = load i32, i32* %26, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %492
  %496 = load i32, i32* %33, align 4
  %497 = or i32 %496, 16
  store i32 %497, i32* %33, align 4
  br label %498

498:                                              ; preds = %495, %492
  br label %518

499:                                              ; preds = %488
  %500 = load i64, i64* %17, align 8
  %501 = load i64, i64* @SSZ_SERVICE_ACTION_CRYPTO_ERASE, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %510

503:                                              ; preds = %499
  store i32 17, i32* %32, align 4
  store i32 1131575664, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %504 = load i32, i32* %26, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %503
  %507 = load i32, i32* %33, align 4
  %508 = or i32 %507, 16
  store i32 %508, i32* %33, align 4
  br label %509

509:                                              ; preds = %506, %503
  br label %517

510:                                              ; preds = %499
  %511 = load i64, i64* %17, align 8
  %512 = load i64, i64* @SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE, align 8
  %513 = icmp eq i64 %511, %512
  br i1 %513, label %514, label %515

514:                                              ; preds = %510
  store i32 0, i32* %32, align 4
  store i32 0, i32* %34, align 4
  store i32 1, i32* %33, align 4
  br label %516

515:                                              ; preds = %510
  store i32 1, i32* %21, align 4
  br label %644

516:                                              ; preds = %514
  br label %517

517:                                              ; preds = %516, %509
  br label %518

518:                                              ; preds = %517, %498
  br label %519

519:                                              ; preds = %518, %487
  %520 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %521 = load %union.ccb*, %union.ccb** %16, align 8
  %522 = load i32, i32* %14, align 4
  %523 = load i32, i32* @CAM_DIR_NONE, align 4
  %524 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %525 = load i32, i32* @AP_EXTEND, align 4
  %526 = or i32 %524, %525
  %527 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %528 = load i32, i32* @ATA_SANITIZE, align 4
  %529 = load i32, i32* %32, align 4
  %530 = load i32, i32* %34, align 4
  %531 = load i32, i32* %33, align 4
  %532 = load i32, i32* %22, align 4
  %533 = call i32 @ata_do_cmd(%struct.cam_device* %520, %union.ccb* %521, i32 %522, i32 %523, i32 %526, i32 0, i32 %527, i32 %528, i32 %529, i32 %530, i32 %531, i32* null, i32 0, i32 %532, i32 1)
  store i32 %533, i32* %21, align 4
  br label %534

534:                                              ; preds = %519, %448
  br label %535

535:                                              ; preds = %534, %443
  %536 = load %union.ccb*, %union.ccb** %16, align 8
  %537 = bitcast %union.ccb* %536 to %struct.TYPE_4__*
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @CAM_STATUS_MASK, align 4
  %541 = and i32 %539, %540
  %542 = load i32, i32* @CAM_REQ_CMP, align 4
  %543 = icmp ne i32 %541, %542
  br i1 %543, label %544, label %597

544:                                              ; preds = %535
  %545 = load %union.ccb*, %union.ccb** %16, align 8
  %546 = bitcast %union.ccb* %545 to %struct.TYPE_4__*
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @CAM_STATUS_MASK, align 4
  %550 = and i32 %548, %549
  %551 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %552 = icmp eq i32 %550, %551
  br i1 %552, label %553, label %582

553:                                              ; preds = %544
  %554 = load %union.ccb*, %union.ccb** %16, align 8
  %555 = bitcast %union.ccb* %554 to %struct.TYPE_5__*
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 2
  store %struct.scsi_sense_data* %556, %struct.scsi_sense_data** %45, align 8
  %557 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %45, align 8
  %558 = load %union.ccb*, %union.ccb** %16, align 8
  %559 = bitcast %union.ccb* %558 to %struct.TYPE_5__*
  %560 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %559, i32 0, i32 1
  %561 = load i64, i64* %560, align 8
  %562 = load %union.ccb*, %union.ccb** %16, align 8
  %563 = bitcast %union.ccb* %562 to %struct.TYPE_5__*
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = sub nsw i64 %561, %565
  %567 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %557, i64 %566, i32* %46, i32* %47, i32* %48, i32* %49, i32 1)
  %568 = load i32, i32* %47, align 4
  %569 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %570 = icmp eq i32 %568, %569
  br i1 %570, label %571, label %579

571:                                              ; preds = %553
  %572 = load i32, i32* %48, align 4
  %573 = icmp eq i32 %572, 32
  br i1 %573, label %574, label %579

574:                                              ; preds = %571
  %575 = load i32, i32* %49, align 4
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  %578 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  br label %581

579:                                              ; preds = %574, %571, %553
  %580 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %581

581:                                              ; preds = %579, %577
  br label %584

582:                                              ; preds = %544
  %583 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %584

584:                                              ; preds = %582, %581
  %585 = load i32, i32* @arglist, align 4
  %586 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %596

589:                                              ; preds = %584
  %590 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %591 = load %union.ccb*, %union.ccb** %16, align 8
  %592 = load i32, i32* @CAM_ESF_ALL, align 4
  %593 = load i32, i32* @CAM_EPF_ALL, align 4
  %594 = load i32, i32* @stderr, align 4
  %595 = call i32 @cam_error_print(%struct.cam_device* %590, %union.ccb* %591, i32 %592, i32 %593, i32 %594)
  br label %596

596:                                              ; preds = %589, %584
  store i32 1, i32* %21, align 4
  br label %644

597:                                              ; preds = %535
  %598 = load i32, i32* %23, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %607

600:                                              ; preds = %597
  %601 = load i32, i32* %20, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %600
  %604 = load i32, i32* @stdout, align 4
  %605 = call i32 (i32, i8*, ...) @fprintf(i32 %604, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  br label %606

606:                                              ; preds = %603, %600
  br label %644

607:                                              ; preds = %597
  br label %608

608:                                              ; preds = %607, %144
  %609 = load i64, i64* %36, align 8
  %610 = load i64, i64* @CC_DT_SCSI, align 8
  %611 = icmp eq i64 %609, %610
  br i1 %611, label %612, label %618

612:                                              ; preds = %608
  %613 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %614 = load %union.ccb*, %union.ccb** %16, align 8
  %615 = load i32, i32* %13, align 4
  %616 = load i32, i32* %20, align 4
  %617 = call i32 @sanitize_wait_scsi(%struct.cam_device* %613, %union.ccb* %614, i32 %615, i32 %616)
  store i32 %617, i32* %21, align 4
  br label %634

618:                                              ; preds = %608
  %619 = load i64, i64* %36, align 8
  %620 = load i64, i64* @CC_DT_ATA, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %626, label %622

622:                                              ; preds = %618
  %623 = load i64, i64* %36, align 8
  %624 = load i64, i64* @CC_DT_SATL, align 8
  %625 = icmp eq i64 %623, %624
  br i1 %625, label %626, label %632

626:                                              ; preds = %622, %618
  %627 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %628 = load %union.ccb*, %union.ccb** %16, align 8
  %629 = load i32, i32* %20, align 4
  %630 = load i64, i64* %36, align 8
  %631 = call i32 @sanitize_wait_ata(%struct.cam_device* %627, %union.ccb* %628, i32 %629, i64 %630)
  store i32 %631, i32* %21, align 4
  br label %633

632:                                              ; preds = %622
  store i32 1, i32* %21, align 4
  br label %633

633:                                              ; preds = %632, %626
  br label %634

634:                                              ; preds = %633, %612
  %635 = load i32, i32* %21, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %643

637:                                              ; preds = %634
  %638 = load i32, i32* %20, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %637
  %641 = load i32, i32* @stdout, align 4
  %642 = call i32 (i32, i8*, ...) @fprintf(i32 %641, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0))
  br label %643

643:                                              ; preds = %640, %637, %634
  br label %644

644:                                              ; preds = %643, %606, %596, %515, %441, %327, %318, %255, %207, %201, %191, %181, %172, %165, %157, %148, %119, %104
  %645 = load i32, i32* %27, align 4
  %646 = icmp sge i32 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %644
  %648 = load i32, i32* %27, align 4
  %649 = call i32 @close(i32 %648)
  br label %650

650:                                              ; preds = %647, %644
  %651 = load i64*, i64** %29, align 8
  %652 = icmp ne i64* %651, null
  br i1 %652, label %653, label %656

653:                                              ; preds = %650
  %654 = load i64*, i64** %29, align 8
  %655 = call i32 @free(i64* %654)
  br label %656

656:                                              ; preds = %653, %650
  %657 = load %union.ccb*, %union.ccb** %16, align 8
  %658 = call i32 @cam_freeccb(%union.ccb* %657)
  %659 = load i32, i32* %21, align 4
  store i32 %659, i32* %8, align 4
  br label %660

660:                                              ; preds = %656, %66, %59
  %661 = load i32, i32* %8, align 4
  ret i32 %661
}

declare dso_local i32 @get_device_type(%struct.cam_device*, i32, i32, i32, i64*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_5__*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64* @calloc(i32, i64) #1

declare dso_local i64 @read(i32, i64*, i64) #1

declare dso_local i32 @scsi_ulto2b(i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @scsidoinquiry(%struct.cam_device*, i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, i64**) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @ata_print_ident(i64*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @get_confirmation(...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @scsi_sanitize(%struct.TYPE_5__*, i32, i32*, i32, i64, i32, i64*, i64, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @scsi_4btoul(i64*) #1

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @sanitize_wait_scsi(%struct.cam_device*, %union.ccb*, i32, i32) #1

declare dso_local i32 @sanitize_wait_ata(%struct.cam_device*, %union.ccb*, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
