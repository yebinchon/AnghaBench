; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ccb_getdev = type { i32 }
%struct.ata_set_max_pwd = type { i32 }

@ATA_HPA_ACTION_PRINT = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many hpa actions specified\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"couldn't get CGD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@ATA_SUPPORT_PROTECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"HPA is not supported by this device\00", align 1
@ATA_SUPPORT_MAXSECURITY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"HPA Security is not supported by this device\00", align 1
@ATA_SUPPORT_ADDRESS48 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"HPA password has been set\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"HPA has been locked\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"HPA has been unlocked\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"HPA has been frozen\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Option currently not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i8**, i8*)* @atahpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.ccb*, align 8
  %15 = alloca %struct.ata_params*, align 8
  %16 = alloca %struct.ccb_getdev, align 4
  %17 = alloca %struct.ata_set_max_pwd, align 4
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
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %29, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %30 = call i32 @memset(%struct.ata_set_max_pwd* %17, i32 0, i32 4)
  %31 = load i32, i32* @ATA_HPA_ACTION_PRINT, align 4
  store i32 %31, i32* %22, align 4
  store i32 4, i32* %27, align 4
  br label %32

32:                                               ; preds = %80, %6
  %33 = load i32, i32* %11, align 4
  %34 = load i8**, i8*** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @getopt(i32 %33, i8** %34, i8* %35)
  store i32 %36, i32* %21, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load i32, i32* %21, align 4
  switch i32 %39, label %80 [
    i32 115, label %40
    i32 112, label %45
    i32 108, label %56
    i32 85, label %59
    i32 102, label %70
    i32 80, label %73
    i32 121, label %74
    i32 113, label %77
  ]

40:                                               ; preds = %38
  store i32 130, i32* %22, align 4
  %41 = load i32, i32* @optarg, align 4
  %42 = call i64 @strtoumax(i32 %41, i32* null, i32 0)
  store i64 %42, i64* %29, align 8
  %43 = load i32, i32* %23, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %23, align 4
  br label %80

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.ata_set_max_pwd, %struct.ata_set_max_pwd* %17, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @ata_getpwd(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %312

53:                                               ; preds = %45
  store i32 129, i32* %22, align 4
  store i32 1, i32* %25, align 4
  %54 = load i32, i32* %23, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %23, align 4
  br label %80

56:                                               ; preds = %38
  store i32 131, i32* %22, align 4
  store i32 1, i32* %25, align 4
  %57 = load i32, i32* %23, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %23, align 4
  br label %80

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.ata_set_max_pwd, %struct.ata_set_max_pwd* %17, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %27, align 4
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @ata_getpwd(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %312

67:                                               ; preds = %59
  store i32 128, i32* %22, align 4
  store i32 1, i32* %25, align 4
  %68 = load i32, i32* %23, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %23, align 4
  br label %80

70:                                               ; preds = %38
  store i32 132, i32* %22, align 4
  store i32 1, i32* %25, align 4
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %80

73:                                               ; preds = %38
  store i32 1, i32* %24, align 4
  br label %80

74:                                               ; preds = %38
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  br label %80

77:                                               ; preds = %38
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %38, %77, %74, %73, %70, %67, %56, %53, %40
  br label %32

81:                                               ; preds = %32
  %82 = load i32, i32* %23, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %312

86:                                               ; preds = %81
  %87 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %88 = call i64 @get_cgd(%struct.cam_device* %87, %struct.ccb_getdev* %16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %312

92:                                               ; preds = %86
  %93 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %94 = call %union.ccb* @cam_getccb(%struct.cam_device* %93)
  store %union.ccb* %94, %union.ccb** %14, align 8
  %95 = load %union.ccb*, %union.ccb** %14, align 8
  %96 = icmp eq %union.ccb* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %312

99:                                               ; preds = %92
  %100 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %union.ccb*, %union.ccb** %14, align 8
  %104 = call i32 @ata_do_identify(%struct.cam_device* %100, i32 %101, i32 %102, %union.ccb* %103, %struct.ata_params** %15)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %union.ccb*, %union.ccb** %14, align 8
  %109 = call i32 @cam_freeccb(%union.ccb* %108)
  store i32 1, i32* %7, align 4
  br label %312

110:                                              ; preds = %99
  %111 = load i32, i32* %20, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %115 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %118 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %116, i32 %119)
  %121 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %122 = call i32 @ata_print_ident(%struct.ata_params* %121)
  %123 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %124 = call i32 @camxferrate(%struct.cam_device* %123)
  br label %125

125:                                              ; preds = %113, %110
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* @ATA_HPA_ACTION_PRINT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  store i64 0, i64* %28, align 8
  %130 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %131 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATA_SUPPORT_PROTECTED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %union.ccb*, %union.ccb** %14, align 8
  %142 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %143 = call i32 @ata_read_native_max(%struct.cam_device* %138, i32 %139, i32 %140, %union.ccb* %141, %struct.ata_params* %142, i64* %28)
  br label %144

144:                                              ; preds = %137, %129
  %145 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %146 = load i64, i64* %28, align 8
  %147 = call i32 @atahpa_print(%struct.ata_params* %145, i64 %146, i32 1)
  %148 = load %union.ccb*, %union.ccb** %14, align 8
  %149 = call i32 @cam_freeccb(%union.ccb* %148)
  %150 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %151 = call i32 @free(%struct.ata_params* %150)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %7, align 4
  br label %312

153:                                              ; preds = %125
  %154 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %155 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ATA_SUPPORT_PROTECTED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %union.ccb*, %union.ccb** %14, align 8
  %164 = call i32 @cam_freeccb(%union.ccb* %163)
  %165 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %166 = call i32 @free(%struct.ata_params* %165)
  store i32 1, i32* %7, align 4
  br label %312

167:                                              ; preds = %153
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %172 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ATA_SUPPORT_MAXSECURITY, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %170
  %179 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %180 = load %union.ccb*, %union.ccb** %14, align 8
  %181 = call i32 @cam_freeccb(%union.ccb* %180)
  %182 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %183 = call i32 @free(%struct.ata_params* %182)
  store i32 1, i32* %7, align 4
  br label %312

184:                                              ; preds = %170, %167
  %185 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %186 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %190 = and i32 %188, %189
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* %22, align 4
  switch i32 %191, label %304 [
    i32 130, label %192
    i32 129, label %244
    i32 131, label %259
    i32 128, label %274
    i32 132, label %289
  ]

192:                                              ; preds = %184
  %193 = load i32, i32* %19, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %197 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %198 = load i64, i64* %29, align 8
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @atahpa_set_confirm(%struct.cam_device* %196, %struct.ata_params* %197, i64 %198, i32 %199)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load %union.ccb*, %union.ccb** %14, align 8
  %204 = call i32 @cam_freeccb(%union.ccb* %203)
  %205 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %206 = call i32 @free(%struct.ata_params* %205)
  store i32 1, i32* %7, align 4
  br label %312

207:                                              ; preds = %195, %192
  %208 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load %union.ccb*, %union.ccb** %14, align 8
  %212 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %213 = call i32 @ata_read_native_max(%struct.cam_device* %208, i32 %209, i32 %210, %union.ccb* %211, %struct.ata_params* %212, i64* %28)
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %243

216:                                              ; preds = %207
  %217 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load %union.ccb*, %union.ccb** %14, align 8
  %221 = load i32, i32* %26, align 4
  %222 = load i64, i64* %29, align 8
  %223 = load i32, i32* %24, align 4
  %224 = call i32 @atahpa_set_max(%struct.cam_device* %217, i32 %218, i32 %219, %union.ccb* %220, i32 %221, i64 %222, i32 %223)
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %216
  %228 = load i32, i32* %20, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load %union.ccb*, %union.ccb** %14, align 8
  %235 = call i32 @ata_do_identify(%struct.cam_device* %231, i32 %232, i32 %233, %union.ccb* %234, %struct.ata_params** %15)
  store i32 %235, i32* %18, align 4
  %236 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %237 = load i64, i64* %28, align 8
  %238 = call i32 @atahpa_print(%struct.ata_params* %236, i64 %237, i32 1)
  br label %239

239:                                              ; preds = %230, %227
  %240 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %241 = call i32 @reprobe(%struct.cam_device* %240)
  br label %242

242:                                              ; preds = %239, %216
  br label %243

243:                                              ; preds = %242, %207
  br label %306

244:                                              ; preds = %184
  %245 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load %union.ccb*, %union.ccb** %14, align 8
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @atahpa_password(%struct.cam_device* %245, i32 %246, i32 %247, %union.ccb* %248, i32 %249, %struct.ata_set_max_pwd* %17)
  store i32 %250, i32* %18, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %244
  %254 = load i32, i32* %20, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %253, %244
  br label %306

259:                                              ; preds = %184
  %260 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = load %union.ccb*, %union.ccb** %14, align 8
  %264 = load i32, i32* %26, align 4
  %265 = call i32 @atahpa_lock(%struct.cam_device* %260, i32 %261, i32 %262, %union.ccb* %263, i32 %264)
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %18, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %259
  %269 = load i32, i32* %20, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %268, %259
  br label %306

274:                                              ; preds = %184
  %275 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load %union.ccb*, %union.ccb** %14, align 8
  %279 = load i32, i32* %26, align 4
  %280 = call i32 @atahpa_unlock(%struct.cam_device* %275, i32 %276, i32 %277, %union.ccb* %278, i32 %279, %struct.ata_set_max_pwd* %17)
  store i32 %280, i32* %18, align 4
  %281 = load i32, i32* %18, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %274
  %284 = load i32, i32* %20, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %283, %274
  br label %306

289:                                              ; preds = %184
  %290 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load %union.ccb*, %union.ccb** %14, align 8
  %294 = load i32, i32* %26, align 4
  %295 = call i32 @atahpa_freeze_lock(%struct.cam_device* %290, i32 %291, i32 %292, %union.ccb* %293, i32 %294)
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %18, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %289
  %299 = load i32, i32* %20, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %303

303:                                              ; preds = %301, %298, %289
  br label %306

304:                                              ; preds = %184
  %305 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %303, %288, %273, %258, %243
  %307 = load %union.ccb*, %union.ccb** %14, align 8
  %308 = call i32 @cam_freeccb(%union.ccb* %307)
  %309 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %310 = call i32 @free(%struct.ata_params* %309)
  %311 = load i32, i32* %18, align 4
  store i32 %311, i32* %7, align 4
  br label %312

312:                                              ; preds = %306, %202, %178, %161, %144, %107, %97, %90, %84, %66, %52
  %313 = load i32, i32* %7, align 4
  ret i32 %313
}

declare dso_local i32 @memset(%struct.ata_set_max_pwd*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoumax(i32, i32*, i32) #1

declare dso_local i32 @ata_getpwd(i32, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @get_cgd(%struct.cam_device*, %struct.ccb_getdev*) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params**) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ata_print_ident(%struct.ata_params*) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

declare dso_local i32 @ata_read_native_max(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params*, i64*) #1

declare dso_local i32 @atahpa_print(%struct.ata_params*, i64, i32) #1

declare dso_local i32 @free(%struct.ata_params*) #1

declare dso_local i32 @atahpa_set_confirm(%struct.cam_device*, %struct.ata_params*, i64, i32) #1

declare dso_local i32 @atahpa_set_max(%struct.cam_device*, i32, i32, %union.ccb*, i32, i64, i32) #1

declare dso_local i32 @reprobe(%struct.cam_device*) #1

declare dso_local i32 @atahpa_password(%struct.cam_device*, i32, i32, %union.ccb*, i32, %struct.ata_set_max_pwd*) #1

declare dso_local i32 @atahpa_lock(%struct.cam_device*, i32, i32, %union.ccb*, i32) #1

declare dso_local i32 @atahpa_unlock(%struct.cam_device*, i32, i32, %union.ccb*, i32, %struct.ata_set_max_pwd*) #1

declare dso_local i32 @atahpa_freeze_lock(%struct.cam_device*, i32, i32, %union.ccb*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
