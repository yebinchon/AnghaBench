; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.cam_path*, i32, i32 }
%struct.cam_path = type { i32 }
%struct.cam_periph = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SSQ_PRINT_SENSE = common dso_local global i64 0, align 8
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAM_RETRY_SELTO = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@RELSIM_RELEASE_AFTER_TIMEOUT = common dso_local global i64 0, align 8
@periph_selto_delay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Retries exhausted\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SSQ_LOST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Periph was invalidated\00", align 1
@SF_NO_RETRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Retry was blocked\00", align 1
@periph_noresrc_delay = common dso_local global i64 0, align 8
@periph_busy_delay = common dso_local global i64 0, align 8
@SF_PRINT_ALWAYS = common dso_local global i64 0, align 8
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@SF_NO_PRINT = common dso_local global i64 0, align 8
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Unretryable error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Error %d, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Retrying command, %d more tries remain\0A\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@SSQ_UA = common dso_local global i64 0, align 8
@AC_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SSQ_RESCAN = common dso_local global i64 0, align 8
@XPT_SCAN_TGT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Can't allocate CCB to rescan target\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_periph_error(%union.ccb* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %union.ccb*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %21 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %union.ccb*, %union.ccb** %4, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.cam_path*, %struct.cam_path** %24, align 8
  %26 = call %struct.cam_periph* @xpt_path_periph(%struct.cam_path* %25)
  store %struct.cam_periph* %26, %struct.cam_periph** %10, align 8
  store i8* null, i8** %11, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @CAM_STATUS_MASK, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %12, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  store %union.ccb* %39, %union.ccb** %8, align 8
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CAM_STATUS_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %49 [
    i32 154, label %46
    i32 144, label %46
    i32 142, label %46
    i32 140, label %46
    i32 128, label %46
    i32 153, label %46
    i32 136, label %46
    i32 158, label %46
    i32 134, label %46
  ]

46:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %134 [
    i32 143, label %52
    i32 136, label %57
    i32 157, label %62
    i32 132, label %64
    i32 131, label %64
    i32 149, label %64
    i32 135, label %66
    i32 152, label %95
    i32 141, label %98
    i32 147, label %98
    i32 148, label %98
    i32 146, label %98
    i32 139, label %98
    i32 150, label %98
    i32 133, label %98
    i32 151, label %98
    i32 137, label %100
    i32 156, label %100
    i32 145, label %100
    i32 138, label %124
    i32 155, label %126
    i32 158, label %133
    i32 142, label %133
    i32 154, label %133
    i32 129, label %133
    i32 130, label %133
    i32 153, label %133
  ]

52:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  %53 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %17, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %17, align 8
  br label %168

57:                                               ; preds = %50
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @camperiphscsistatuserror(%union.ccb* %58, %union.ccb** %8, i32 %59, i64 %60, i32* %15, i64* %18, i64* %19, i64* %17, i8** %11)
  store i32 %61, i32* %14, align 4
  br label %168

62:                                               ; preds = %50
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %14, align 4
  br label %168

64:                                               ; preds = %50, %50, %50
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %14, align 4
  br label %168

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CAM_RETRY_SELTO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %79 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @ERESTART, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i64, i64* @RELSIM_RELEASE_AFTER_TIMEOUT, align 8
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* @periph_selto_delay, align 8
  store i64 %92, i64* %19, align 8
  br label %168

93:                                               ; preds = %77, %71
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %50, %94
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %14, align 4
  %97 = load i64, i64* @SSQ_LOST, align 8
  store i64 %97, i64* %17, align 8
  br label %168

98:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %14, align 4
  br label %168

100:                                              ; preds = %50, %50, %50
  %101 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %102 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %108 = load i32, i32* @EIO, align 4
  store i32 %108, i32* %14, align 4
  br label %123

109:                                              ; preds = %100
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @SF_NO_RETRY, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @EIO, align 4
  store i32 %115, i32* %14, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %122

116:                                              ; preds = %109
  %117 = load i32, i32* @ERESTART, align 4
  store i32 %117, i32* %14, align 4
  %118 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %119 = xor i64 %118, -1
  %120 = load i64, i64* %17, align 8
  %121 = and i64 %120, %119
  store i64 %121, i64* %17, align 8
  br label %122

122:                                              ; preds = %116, %114
  br label %123

123:                                              ; preds = %122, %107
  br label %168

124:                                              ; preds = %50
  %125 = load i64, i64* @periph_noresrc_delay, align 8
  store i64 %125, i64* %19, align 8
  br label %126

126:                                              ; preds = %50, %124
  %127 = load i64, i64* %19, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i64, i64* @periph_busy_delay, align 8
  store i64 %130, i64* %19, align 8
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i64, i64* @RELSIM_RELEASE_AFTER_TIMEOUT, align 8
  store i64 %132, i64* %18, align 8
  br label %133

133:                                              ; preds = %50, %50, %50, %50, %50, %50, %131
  br label %134

134:                                              ; preds = %50, %133
  %135 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %136 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @EIO, align 4
  store i32 %142, i32* %14, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %167

143:                                              ; preds = %134
  %144 = load %union.ccb*, %union.ccb** %4, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @EIO, align 4
  store i32 %150, i32* %14, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %166

151:                                              ; preds = %143
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @SF_NO_RETRY, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @EIO, align 4
  store i32 %157, i32* %14, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %165

158:                                              ; preds = %151
  %159 = load %union.ccb*, %union.ccb** %4, align 8
  %160 = bitcast %union.ccb* %159 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* @ERESTART, align 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %158, %156
  br label %166

166:                                              ; preds = %165, %149
  br label %167

167:                                              ; preds = %166, %141
  br label %168

168:                                              ; preds = %167, %123, %98, %95, %84, %64, %62, %57, %52
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @SF_PRINT_ALWAYS, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %168
  %174 = load %union.ccb*, %union.ccb** %4, align 8
  %175 = bitcast %union.ccb* %174 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load %struct.cam_path*, %struct.cam_path** %176, align 8
  %178 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %179 = call i64 @CAM_DEBUGGED(%struct.cam_path* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173, %168
  %182 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %183 = load i64, i64* %17, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %17, align 8
  br label %196

185:                                              ; preds = %173
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* @SF_NO_PRINT, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %192 = xor i64 %191, -1
  %193 = load i64, i64* %17, align 8
  %194 = and i64 %193, %192
  store i64 %194, i64* %17, align 8
  br label %195

195:                                              ; preds = %190, %185
  br label %196

196:                                              ; preds = %195, %181
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %union.ccb*, %union.ccb** %8, align 8
  %203 = load i32, i32* @CAM_ESF_ALL, align 4
  %204 = load i32, i32* @CAM_EPF_ALL, align 4
  %205 = call i32 @cam_error_print(%union.ccb* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %252

209:                                              ; preds = %206
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %212 = and i64 %210, %211
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %252

214:                                              ; preds = %209
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* @ERESTART, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i8*, i8** %11, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %222

222:                                              ; preds = %221, %218
  %223 = load %union.ccb*, %union.ccb** %4, align 8
  %224 = bitcast %union.ccb* %223 to %struct.TYPE_4__*
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load %struct.cam_path*, %struct.cam_path** %225, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i8*, i8** %11, align 8
  %229 = call i32 (%struct.cam_path*, i8*, ...) @xpt_print(%struct.cam_path* %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %227, i8* %228)
  br label %251

230:                                              ; preds = %214
  %231 = load i8*, i8** %11, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load %union.ccb*, %union.ccb** %4, align 8
  %235 = bitcast %union.ccb* %234 to %struct.TYPE_4__*
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load %struct.cam_path*, %struct.cam_path** %236, align 8
  %238 = load i8*, i8** %11, align 8
  %239 = call i32 (%struct.cam_path*, i8*, ...) @xpt_print(%struct.cam_path* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %238)
  br label %250

240:                                              ; preds = %230
  %241 = load %union.ccb*, %union.ccb** %4, align 8
  %242 = bitcast %union.ccb* %241 to %struct.TYPE_4__*
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load %struct.cam_path*, %struct.cam_path** %243, align 8
  %245 = load %union.ccb*, %union.ccb** %4, align 8
  %246 = bitcast %union.ccb* %245 to %struct.TYPE_4__*
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (%struct.cam_path*, i8*, ...) @xpt_print(%struct.cam_path* %244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %240, %233
  br label %251

251:                                              ; preds = %250, %222
  br label %252

252:                                              ; preds = %251, %209, %206
  %253 = load i32, i32* %16, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load i64, i64* %17, align 8
  %260 = load i64, i64* @SSQ_PRINT_SENSE, align 8
  %261 = and i64 %259, %260
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %258, %255
  %264 = load %union.ccb*, %union.ccb** %8, align 8
  %265 = call i32 @cam_periph_devctl_notify(%union.ccb* %264)
  br label %266

266:                                              ; preds = %263, %258, %252
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* @SSQ_LOST, align 8
  %269 = and i64 %267, %268
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %304

271:                                              ; preds = %266
  %272 = load i32, i32* %12, align 4
  %273 = icmp eq i32 %272, 135
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  store i32 %275, i32* %20, align 4
  br label %282

276:                                              ; preds = %271
  %277 = load %union.ccb*, %union.ccb** %4, align 8
  %278 = bitcast %union.ccb* %277 to %struct.TYPE_4__*
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load %struct.cam_path*, %struct.cam_path** %279, align 8
  %281 = call i32 @xpt_path_lun_id(%struct.cam_path* %280)
  store i32 %281, i32* %20, align 4
  br label %282

282:                                              ; preds = %276, %274
  %283 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %284 = load %union.ccb*, %union.ccb** %4, align 8
  %285 = bitcast %union.ccb* %284 to %struct.TYPE_4__*
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load %struct.cam_path*, %struct.cam_path** %286, align 8
  %288 = call i32 @xpt_path_path_id(%struct.cam_path* %287)
  %289 = load %union.ccb*, %union.ccb** %4, align 8
  %290 = bitcast %union.ccb* %289 to %struct.TYPE_4__*
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  %292 = load %struct.cam_path*, %struct.cam_path** %291, align 8
  %293 = call i32 @xpt_path_target_id(%struct.cam_path* %292)
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @xpt_create_path(%struct.cam_path** %7, %struct.cam_periph* %283, i32 %288, i32 %293, i32 %294)
  %296 = icmp eq i32 %295, 143
  br i1 %296, label %297, label %303

297:                                              ; preds = %282
  %298 = load i32, i32* @AC_LOST_DEVICE, align 4
  %299 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %300 = call i32 @xpt_async(i32 %298, %struct.cam_path* %299, %union.ccb* null)
  %301 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %302 = call i32 @xpt_free_path(%struct.cam_path* %301)
  br label %303

303:                                              ; preds = %297, %282
  br label %304

304:                                              ; preds = %303, %266
  %305 = load i64, i64* %17, align 8
  %306 = load i64, i64* @SSQ_UA, align 8
  %307 = and i64 %305, %306
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load i32, i32* @AC_UNIT_ATTENTION, align 4
  %311 = load %union.ccb*, %union.ccb** %8, align 8
  %312 = bitcast %union.ccb* %311 to %struct.TYPE_4__*
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 1
  %314 = load %struct.cam_path*, %struct.cam_path** %313, align 8
  %315 = load %union.ccb*, %union.ccb** %8, align 8
  %316 = call i32 @xpt_async(i32 %310, %struct.cam_path* %314, %union.ccb* %315)
  br label %317

317:                                              ; preds = %309, %304
  %318 = load i64, i64* %17, align 8
  %319 = load i64, i64* @SSQ_RESCAN, align 8
  %320 = and i64 %318, %319
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %361

322:                                              ; preds = %317
  %323 = load %union.ccb*, %union.ccb** %4, align 8
  %324 = bitcast %union.ccb* %323 to %struct.TYPE_4__*
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load %struct.cam_path*, %struct.cam_path** %325, align 8
  %327 = call i32 @xpt_path_path_id(%struct.cam_path* %326)
  %328 = load %union.ccb*, %union.ccb** %4, align 8
  %329 = bitcast %union.ccb* %328 to %struct.TYPE_4__*
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  %331 = load %struct.cam_path*, %struct.cam_path** %330, align 8
  %332 = call i32 @xpt_path_target_id(%struct.cam_path* %331)
  %333 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %334 = call i32 @xpt_create_path(%struct.cam_path** %7, %struct.cam_periph* null, i32 %327, i32 %332, i32 %333)
  %335 = icmp eq i32 %334, 143
  br i1 %335, label %336, label %360

336:                                              ; preds = %322
  %337 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %337, %union.ccb** %9, align 8
  %338 = load %union.ccb*, %union.ccb** %9, align 8
  %339 = icmp ne %union.ccb* %338, null
  br i1 %339, label %340, label %354

340:                                              ; preds = %336
  %341 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %342 = load %union.ccb*, %union.ccb** %9, align 8
  %343 = bitcast %union.ccb* %342 to %struct.TYPE_4__*
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  store %struct.cam_path* %341, %struct.cam_path** %344, align 8
  %345 = load i32, i32* @XPT_SCAN_TGT, align 4
  %346 = load %union.ccb*, %union.ccb** %9, align 8
  %347 = bitcast %union.ccb* %346 to %struct.TYPE_4__*
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 2
  store i32 %345, i32* %348, align 8
  %349 = load %union.ccb*, %union.ccb** %9, align 8
  %350 = bitcast %union.ccb* %349 to %struct.TYPE_3__*
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 0
  store i64 0, i64* %351, align 8
  %352 = load %union.ccb*, %union.ccb** %9, align 8
  %353 = call i32 @xpt_rescan(%union.ccb* %352)
  br label %359

354:                                              ; preds = %336
  %355 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %356 = call i32 (%struct.cam_path*, i8*, ...) @xpt_print(%struct.cam_path* %355, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %357 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %358 = call i32 @xpt_free_path(%struct.cam_path* %357)
  br label %359

359:                                              ; preds = %354, %340
  br label %360

360:                                              ; preds = %359, %322
  br label %361

361:                                              ; preds = %360, %317
  %362 = load i32, i32* %14, align 4
  %363 = load i32, i32* @ERESTART, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = load i32, i32* %14, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %399

368:                                              ; preds = %365, %361
  %369 = load i32, i32* %13, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %368
  %372 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %373 = xor i32 %372, -1
  %374 = load %union.ccb*, %union.ccb** %4, align 8
  %375 = bitcast %union.ccb* %374 to %struct.TYPE_4__*
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = and i32 %377, %373
  store i32 %378, i32* %376, align 8
  br label %379

379:                                              ; preds = %371, %368
  %380 = load i32, i32* %14, align 4
  %381 = load i32, i32* @ERESTART, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = load %union.ccb*, %union.ccb** %4, align 8
  %385 = call i32 @xpt_action(%union.ccb* %384)
  br label %386

386:                                              ; preds = %383, %379
  %387 = load i32, i32* %13, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %386
  %390 = load %union.ccb*, %union.ccb** %4, align 8
  %391 = bitcast %union.ccb* %390 to %struct.TYPE_4__*
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load %struct.cam_path*, %struct.cam_path** %392, align 8
  %394 = load i64, i64* %18, align 8
  %395 = load i32, i32* %15, align 4
  %396 = load i64, i64* %19, align 8
  %397 = call i32 @cam_release_devq(%struct.cam_path* %393, i64 %394, i32 %395, i64 %396, i32 0)
  br label %398

398:                                              ; preds = %389, %386
  br label %399

399:                                              ; preds = %398, %365
  %400 = load i32, i32* %14, align 4
  ret i32 %400
}

declare dso_local %struct.cam_periph* @xpt_path_periph(%struct.cam_path*) #1

declare dso_local i32 @camperiphscsistatuserror(%union.ccb*, %union.ccb**, i32, i64, i32*, i64*, i64*, i64*, i8**) #1

declare dso_local i64 @CAM_DEBUGGED(%struct.cam_path*, i32) #1

declare dso_local i32 @cam_error_print(%union.ccb*, i32, i32) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*, ...) #1

declare dso_local i32 @cam_periph_devctl_notify(%union.ccb*) #1

declare dso_local i32 @xpt_path_lun_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, %struct.cam_periph*, i32, i32, i32) #1

declare dso_local i32 @xpt_path_path_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_target_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, %union.ccb*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(%struct.cam_path*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
