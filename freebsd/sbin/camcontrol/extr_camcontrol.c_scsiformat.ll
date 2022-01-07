; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsiformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.scsi_sense_data }
%struct.scsi_sense_data = type { i32 }
%struct.format_defect_list_header = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"scsiformat: error allocating ccb\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"You are about to REMOVE ALL DATA from the following device:\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"scsiformat: error sending inquiry\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Current format timeout is %d seconds\0A\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Enter new timeout in seconds or press\0Areturn to keep the current timeout [%d] \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Using new timeout value %d\0A\00", align 1
@FU_DLH_IMMED = common dso_local global i32 0, align 4
@FU_FMT_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Formatting...\00", align 1
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@__const.scsiformat.errstr = private unnamed_addr constant [29 x i8] c"error sending format command\00", align 16
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Format Complete\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"error sending TEST UNIT READY command\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@SSD_KEY_NOT_READY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"\0DFormatting:  %ju.%02u %% (%u/%d) done\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Unexpected SCSI Sense Key Specific value returned during format:\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Unable to print status information, but format will proceed.\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"will exit when format is complete\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Unexpected SCSI error during format\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Unexpected CAM status %#x\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\0AFormat Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i8**, i8*, i32, i32, i32)* @scsiformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiformat(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.ccb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.format_defect_list_header, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [1024 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca [29 x i8], align 16
  %33 = alloca i32, align 4
  %34 = alloca %struct.scsi_sense_data*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca [3 x i32], align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 10800000, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32* null, i32** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %42 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %43 = call %union.ccb* @cam_getccb(%struct.cam_device* %42)
  store %union.ccb* %43, %union.ccb** %16, align 8
  %44 = load %union.ccb*, %union.ccb** %16, align 8
  %45 = icmp eq %union.ccb* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %7
  %47 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %419

48:                                               ; preds = %7
  %49 = load %union.ccb*, %union.ccb** %16, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_7__*
  %51 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %68, %48
  %53 = load i32, i32* %10, align 4
  %54 = load i8**, i8*** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @getopt(i32 %53, i8** %54, i8* %55)
  store i32 %56, i32* %17, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i32, i32* %17, align 4
  switch i32 %59, label %68 [
    i32 113, label %60
    i32 114, label %63
    i32 119, label %64
    i32 121, label %65
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %68

63:                                               ; preds = %58
  store i32 1, i32* %29, align 4
  br label %68

64:                                               ; preds = %58
  store i32 0, i32* %23, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %58, %65, %64, %63, %60
  br label %52

69:                                               ; preds = %52
  %70 = load i32, i32* %29, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %248

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i8**, i8*** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @scsidoinquiry(%struct.cam_device* %82, i32 %83, i8** %84, i8* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %415

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %76, %73
  %96 = load i32, i32* %18, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = call i32 (...) @get_confirmation()
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 1, i32* %20, align 4
  br label %415

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %22, align 4
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32, i32* %19, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @stdout, align 4
  %113 = load i32, i32* %22, align 4
  %114 = sdiv i32 %113, 1000
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %18, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %151

122:                                              ; preds = %119
  store i32 0, i32* %31, align 4
  %123 = load i32, i32* @stdout, align 4
  %124 = load i32, i32* %22, align 4
  %125 = sdiv i32 %124, 1000
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %128 = load i32, i32* @stdin, align 4
  %129 = call i32* @fgets(i8* %127, i32 1024, i32 %128)
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %133 = load i8, i8* %132, align 16
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %138 = call i32 @atoi(i8* %137)
  store i32 %138, i32* %31, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %122
  %141 = load i32, i32* %31, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %31, align 4
  %145 = mul nsw i32 %144, 1000
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* @stdout, align 4
  %147 = load i32, i32* %22, align 4
  %148 = sdiv i32 %147, 1000
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %143, %140
  br label %151

151:                                              ; preds = %150, %119, %116
  %152 = call i32 @bzero(%struct.format_defect_list_header* %24, i32 4)
  %153 = load i32, i32* %23, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32, i32* @FU_DLH_IMMED, align 4
  %157 = getelementptr inbounds %struct.format_defect_list_header, %struct.format_defect_list_header* %24, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = bitcast %struct.format_defect_list_header* %24 to i32*
  store i32* %158, i32** %25, align 8
  store i32 4, i32* %26, align 4
  %159 = load i32, i32* @FU_FMT_DATA, align 4
  store i32 %159, i32* %27, align 4
  br label %169

160:                                              ; preds = %151
  %161 = load i32, i32* %19, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* @stdout, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* @stdout, align 4
  %167 = call i32 @fflush(i32 %166)
  br label %168

168:                                              ; preds = %163, %160
  br label %169

169:                                              ; preds = %168, %155
  %170 = load %union.ccb*, %union.ccb** %16, align 8
  %171 = bitcast %union.ccb* %170 to %struct.TYPE_7__*
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %27, align 4
  %175 = load i32*, i32** %25, align 8
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* @SSD_FULL_SIZE, align 4
  %178 = load i32, i32* %22, align 4
  %179 = call i32 @scsi_format_unit(%struct.TYPE_7__* %171, i32 %172, i32* null, i32 %173, i32 %174, i32 0, i32* %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %181 = load %union.ccb*, %union.ccb** %16, align 8
  %182 = bitcast %union.ccb* %181 to %struct.TYPE_6__*
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @arglist, align 4
  %187 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %169
  %191 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %192 = load %union.ccb*, %union.ccb** %16, align 8
  %193 = bitcast %union.ccb* %192 to %struct.TYPE_6__*
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %190, %169
  %198 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %199 = load %union.ccb*, %union.ccb** %16, align 8
  %200 = call i32 @cam_send_ccb(%struct.cam_device* %198, %union.ccb* %199)
  store i32 %200, i32* %21, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %23, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %202
  %206 = load %union.ccb*, %union.ccb** %16, align 8
  %207 = bitcast %union.ccb* %206 to %struct.TYPE_6__*
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CAM_STATUS_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @CAM_REQ_CMP, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %237

214:                                              ; preds = %205, %197
  %215 = bitcast [29 x i8]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %215, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.scsiformat.errstr, i32 0, i32 0), i64 29, i1 false)
  %216 = load i32, i32* %21, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = getelementptr inbounds [29 x i8], [29 x i8]* %32, i64 0, i64 0
  %220 = call i32 @warn(i8* %219)
  br label %224

221:                                              ; preds = %214
  %222 = getelementptr inbounds [29 x i8], [29 x i8]* %32, i64 0, i64 0
  %223 = call i32 (i8*, ...) @warnx(i8* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* @arglist, align 4
  %226 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %231 = load %union.ccb*, %union.ccb** %16, align 8
  %232 = load i32, i32* @CAM_ESF_ALL, align 4
  %233 = load i32, i32* @CAM_EPF_ALL, align 4
  %234 = load i32, i32* @stderr, align 4
  %235 = call i32 @cam_error_print(%struct.cam_device* %230, %union.ccb* %231, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %229, %224
  store i32 1, i32* %20, align 4
  br label %415

237:                                              ; preds = %205, %202
  %238 = load i32, i32* %23, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load i32, i32* %19, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* @stdout, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %240
  br label %415

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %72
  br label %249

249:                                              ; preds = %399, %248
  %250 = load %union.ccb*, %union.ccb** %16, align 8
  %251 = bitcast %union.ccb* %250 to %struct.TYPE_7__*
  %252 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__* %251)
  %253 = load %union.ccb*, %union.ccb** %16, align 8
  %254 = bitcast %union.ccb* %253 to %struct.TYPE_7__*
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* @SSD_FULL_SIZE, align 4
  %257 = call i32 @scsi_test_unit_ready(%struct.TYPE_7__* %254, i32 0, i32* null, i32 %255, i32 %256, i32 5000)
  %258 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %259 = load %union.ccb*, %union.ccb** %16, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_6__*
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 4
  %264 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %265 = load %union.ccb*, %union.ccb** %16, align 8
  %266 = call i32 @cam_send_ccb(%struct.cam_device* %264, %union.ccb* %265)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %249
  %270 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %415

271:                                              ; preds = %249
  %272 = load %union.ccb*, %union.ccb** %16, align 8
  %273 = bitcast %union.ccb* %272 to %struct.TYPE_6__*
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CAM_STATUS_MASK, align 4
  %277 = and i32 %275, %276
  store i32 %277, i32* %33, align 4
  %278 = load i32, i32* %33, align 4
  %279 = load i32, i32* @CAM_REQ_CMP, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %378

281:                                              ; preds = %271
  %282 = load i32, i32* %33, align 4
  %283 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %378

285:                                              ; preds = %281
  %286 = load %union.ccb*, %union.ccb** %16, align 8
  %287 = bitcast %union.ccb* %286 to %struct.TYPE_6__*
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %378

293:                                              ; preds = %285
  %294 = load %union.ccb*, %union.ccb** %16, align 8
  %295 = bitcast %union.ccb* %294 to %struct.TYPE_7__*
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 2
  store %struct.scsi_sense_data* %296, %struct.scsi_sense_data** %34, align 8
  %297 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %34, align 8
  %298 = load %union.ccb*, %union.ccb** %16, align 8
  %299 = bitcast %union.ccb* %298 to %struct.TYPE_7__*
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %union.ccb*, %union.ccb** %16, align 8
  %303 = bitcast %union.ccb* %302 to %struct.TYPE_7__*
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = sub nsw i64 %301, %305
  %307 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %297, i64 %306, i32* %35, i32* %36, i32* %37, i32* %38, i32 1)
  %308 = load i32, i32* %36, align 4
  %309 = load i32, i32* @SSD_KEY_NOT_READY, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %369

311:                                              ; preds = %293
  %312 = load i32, i32* %37, align 4
  %313 = icmp eq i32 %312, 4
  br i1 %313, label %314, label %369

314:                                              ; preds = %311
  %315 = load i32, i32* %38, align 4
  %316 = icmp eq i32 %315, 4
  br i1 %316, label %317, label %369

317:                                              ; preds = %314
  %318 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %34, align 8
  %319 = load %union.ccb*, %union.ccb** %16, align 8
  %320 = bitcast %union.ccb* %319 to %struct.TYPE_7__*
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %union.ccb*, %union.ccb** %16, align 8
  %324 = bitcast %union.ccb* %323 to %struct.TYPE_7__*
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = sub nsw i64 %322, %326
  %328 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 0, i64 0
  %329 = call i64 @scsi_get_sks(%struct.scsi_sense_data* %318, i64 %327, i32* %328)
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %350

331:                                              ; preds = %317
  %332 = load i32, i32* %19, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %331
  %335 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 0, i64 1
  %336 = call i64 @scsi_2btoul(i32* %335)
  store i64 %336, i64* %40, align 8
  %337 = load i64, i64* %40, align 8
  %338 = mul i64 10000, %337
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %41, align 4
  %340 = load i32, i32* @stdout, align 4
  %341 = load i32, i32* %41, align 4
  %342 = sdiv i32 %341, 6553600
  %343 = load i32, i32* %41, align 4
  %344 = sdiv i32 %343, 65536
  %345 = srem i32 %344, 100
  %346 = load i64, i64* %40, align 8
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %340, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %342, i32 %345, i64 %346, i32 65536)
  %348 = load i32, i32* @stdout, align 4
  %349 = call i32 @fflush(i32 %348)
  br label %367

350:                                              ; preds = %331, %317
  %351 = load i32, i32* %19, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  %354 = load i32, i32* %28, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %28, align 4
  %356 = icmp sle i32 %355, 1
  br i1 %356, label %357, label %366

357:                                              ; preds = %353
  %358 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  %359 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %360 = load %union.ccb*, %union.ccb** %16, align 8
  %361 = bitcast %union.ccb* %360 to %struct.TYPE_7__*
  %362 = load i32, i32* @stderr, align 4
  %363 = call i32 @scsi_sense_print(%struct.cam_device* %359, %struct.TYPE_7__* %361, i32 %362)
  %364 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  %365 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %366

366:                                              ; preds = %357, %353, %350
  br label %367

367:                                              ; preds = %366, %334
  %368 = call i32 @sleep(i32 1)
  br label %377

369:                                              ; preds = %314, %311, %293
  %370 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %371 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %372 = load %union.ccb*, %union.ccb** %16, align 8
  %373 = load i32, i32* @CAM_ESF_ALL, align 4
  %374 = load i32, i32* @CAM_EPF_ALL, align 4
  %375 = load i32, i32* @stderr, align 4
  %376 = call i32 @cam_error_print(%struct.cam_device* %371, %union.ccb* %372, i32 %373, i32 %374, i32 %375)
  store i32 1, i32* %20, align 4
  br label %415

377:                                              ; preds = %367
  br label %398

378:                                              ; preds = %285, %281, %271
  %379 = load i32, i32* %33, align 4
  %380 = load i32, i32* @CAM_REQ_CMP, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %397

382:                                              ; preds = %378
  %383 = load i32, i32* %33, align 4
  %384 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* @arglist, align 4
  %386 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %396

389:                                              ; preds = %382
  %390 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %391 = load %union.ccb*, %union.ccb** %16, align 8
  %392 = load i32, i32* @CAM_ESF_ALL, align 4
  %393 = load i32, i32* @CAM_EPF_ALL, align 4
  %394 = load i32, i32* @stderr, align 4
  %395 = call i32 @cam_error_print(%struct.cam_device* %390, %union.ccb* %391, i32 %392, i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %389, %382
  store i32 1, i32* %20, align 4
  br label %415

397:                                              ; preds = %378
  br label %398

398:                                              ; preds = %397, %377
  br label %399

399:                                              ; preds = %398
  %400 = load %union.ccb*, %union.ccb** %16, align 8
  %401 = bitcast %union.ccb* %400 to %struct.TYPE_6__*
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @CAM_STATUS_MASK, align 4
  %405 = and i32 %403, %404
  %406 = load i32, i32* @CAM_REQ_CMP, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %249, label %408

408:                                              ; preds = %399
  %409 = load i32, i32* %19, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %408
  %412 = load i32, i32* @stdout, align 4
  %413 = call i32 (i32, i8*, ...) @fprintf(i32 %412, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %414

414:                                              ; preds = %411, %408
  br label %415

415:                                              ; preds = %414, %396, %369, %269, %246, %236, %101, %92
  %416 = load %union.ccb*, %union.ccb** %16, align 8
  %417 = call i32 @cam_freeccb(%union.ccb* %416)
  %418 = load i32, i32* %20, align 4
  store i32 %418, i32* %8, align 4
  br label %419

419:                                              ; preds = %415, %46
  %420 = load i32, i32* %8, align 4
  ret i32 %420
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @scsidoinquiry(%struct.cam_device*, i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @get_confirmation(...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @bzero(%struct.format_defect_list_header*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @scsi_format_unit(%struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @scsi_test_unit_ready(%struct.TYPE_7__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @scsi_get_sks(%struct.scsi_sense_data*, i64, i32*) #1

declare dso_local i64 @scsi_2btoul(i32*) #1

declare dso_local i32 @scsi_sense_print(%struct.cam_device*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
