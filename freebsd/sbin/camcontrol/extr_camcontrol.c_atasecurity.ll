; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ata_security_password = type { i32, i32, i32 }

@ATA_SECURITY_ACTION_PRINT = common dso_local global i32 0, align 4
@ATA_SECURITY_PASSWORD_MASTER = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@ATA_SECURITY_PASSWORD_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"-U argument '%s' is invalid (must be 'user' or 'master')\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@ATA_SECURITY_LEVEL_HIGH = common dso_local global i32 0, align 4
@ATA_SECURITY_LEVEL_MAXIMUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"-l argument '%s' is unknown (must be 'high' or 'maximum')\00", align 1
@ATA_SECURITY_ERASE_ENHANCED = common dso_local global i32 0, align 4
@ATA_SECURITY_ACTION_SET_PASSWORD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"too many security actions specified\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@ATA_SUPPORT_SECURITY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Security not supported\00", align 1
@ATA_SECURITY_ENABLED = common dso_local global i32 0, align 4
@ATA_SECURITY_LOCKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Can't unlock, drive is not locked\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Can't unlock, security is disabled\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Can't disable security (already disabled)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Can't secure erase (security is disabled)\00", align 1
@ATA_SECURITY_ENH_SUPP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"Enhanced erase is not supported\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Can't secure erase (enhanced), (security is disabled)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, i32, i8**, i8*)* @atasecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atasecurity(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.ccb*, align 8
  %15 = alloca %struct.ata_params*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ata_security_password, align 4
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = call i32 @memset(%struct.ata_security_password* %26, i32 0, i32 12)
  %28 = load i32, i32* @ATA_SECURITY_ACTION_PRINT, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* @ATA_SECURITY_PASSWORD_MASTER, align 4
  %30 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  store i32 4, i32* %25, align 4
  br label %33

33:                                               ; preds = %183, %6
  %34 = load i32, i32* %11, align 4
  %35 = load i8**, i8*** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @getopt(i32 %34, i8** %35, i8* %36)
  store i32 %37, i32* %19, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %184

39:                                               ; preds = %33
  %40 = load i32, i32* %19, align 4
  switch i32 %40, label %183 [
    i32 102, label %41
    i32 85, label %44
    i32 108, label %77
    i32 107, label %110
    i32 100, label %121
    i32 101, label %132
    i32 104, label %143
    i32 115, label %158
    i32 121, label %173
    i32 113, label %176
    i32 84, label %179
  ]

41:                                               ; preds = %39
  store i32 129, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %21, align 4
  br label %183

44:                                               ; preds = %39
  %45 = load i32, i32* @optarg, align 4
  %46 = call i32 @strcasecmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* @ATA_SECURITY_PASSWORD_USER, align 4
  %50 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @ATA_SECURITY_PASSWORD_MASTER, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %76

58:                                               ; preds = %44
  %59 = load i32, i32* @optarg, align 4
  %60 = call i32 @strcasecmp(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* @ATA_SECURITY_PASSWORD_MASTER, align 4
  %64 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @ATA_SECURITY_PASSWORD_USER, align 4
  %68 = xor i32 %67, -1
  %69 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %75

72:                                               ; preds = %58
  %73 = load i32, i32* @optarg, align 4
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 1, i32* %7, align 4
  br label %446

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %48
  br label %183

77:                                               ; preds = %39
  %78 = load i32, i32* @optarg, align 4
  %79 = call i32 @strcasecmp(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* @ATA_SECURITY_LEVEL_HIGH, align 4
  %83 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @ATA_SECURITY_LEVEL_MAXIMUM, align 4
  %87 = xor i32 %86, -1
  %88 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %109

91:                                               ; preds = %77
  %92 = load i32, i32* @optarg, align 4
  %93 = call i32 @strcasecmp(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @ATA_SECURITY_LEVEL_MAXIMUM, align 4
  %97 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @ATA_SECURITY_LEVEL_HIGH, align 4
  %101 = xor i32 %100, -1
  %102 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %108

105:                                              ; preds = %91
  %106 = load i32, i32* @optarg, align 4
  %107 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  store i32 1, i32* %7, align 4
  br label %446

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %81
  br label %183

110:                                              ; preds = %39
  %111 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @ata_getpwd(i32 %112, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %446

118:                                              ; preds = %110
  store i32 128, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %183

121:                                              ; preds = %39
  %122 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @ata_getpwd(i32 %123, i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %7, align 4
  br label %446

129:                                              ; preds = %121
  store i32 132, i32* %20, align 4
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %183

132:                                              ; preds = %39
  %133 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @ata_getpwd(i32 %134, i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %7, align 4
  br label %446

140:                                              ; preds = %132
  store i32 131, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  br label %183

143:                                              ; preds = %39
  %144 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @ata_getpwd(i32 %145, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 1, i32* %7, align 4
  br label %446

151:                                              ; preds = %143
  %152 = load i32, i32* @ATA_SECURITY_ERASE_ENHANCED, align 4
  %153 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 4
  store i32 130, i32* %20, align 4
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %21, align 4
  br label %183

158:                                              ; preds = %39
  %159 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @ata_getpwd(i32 %160, i32 %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i32 1, i32* %7, align 4
  br label %446

166:                                              ; preds = %158
  store i32 1, i32* %22, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* @ATA_SECURITY_ACTION_PRINT, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @ATA_SECURITY_ACTION_SET_PASSWORD, align 4
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %170, %166
  br label %183

173:                                              ; preds = %39
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %183

176:                                              ; preds = %39
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %18, align 4
  br label %183

179:                                              ; preds = %39
  %180 = load i32, i32* @optarg, align 4
  %181 = call i32 @atoi(i32 %180)
  %182 = mul nsw i32 %181, 1000
  store i32 %182, i32* %24, align 4
  br label %183

183:                                              ; preds = %39, %179, %176, %173, %172, %151, %140, %129, %118, %109, %76, %41
  br label %33

184:                                              ; preds = %33
  %185 = load i32, i32* %21, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %446

189:                                              ; preds = %184
  %190 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %191 = call %union.ccb* @cam_getccb(%struct.cam_device* %190)
  store %union.ccb* %191, %union.ccb** %14, align 8
  %192 = icmp eq %union.ccb* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %446

195:                                              ; preds = %189
  %196 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load %union.ccb*, %union.ccb** %14, align 8
  %200 = call i32 @ata_do_identify(%struct.cam_device* %196, i32 %197, i32 %198, %union.ccb* %199, %struct.ata_params** %15)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %195
  %204 = load %union.ccb*, %union.ccb** %14, align 8
  %205 = call i32 @cam_freeccb(%union.ccb* %204)
  store i32 1, i32* %7, align 4
  br label %446

206:                                              ; preds = %195
  %207 = load i32, i32* %18, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %211 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %214 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %212, i32 %215)
  %217 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %218 = call i32 @ata_print_ident(%struct.ata_params* %217)
  %219 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %220 = call i32 @camxferrate(%struct.cam_device* %219)
  br label %221

221:                                              ; preds = %209, %206
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* @ATA_SECURITY_ACTION_PRINT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %227 = call i32 @atasecurity_print(%struct.ata_params* %226)
  %228 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %229 = call i32 @free(%struct.ata_params* %228)
  %230 = load %union.ccb*, %union.ccb** %14, align 8
  %231 = call i32 @cam_freeccb(%union.ccb* %230)
  store i32 0, i32* %7, align 4
  br label %446

232:                                              ; preds = %221
  %233 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %234 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @ATA_SUPPORT_SECURITY, align 4
  %238 = and i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %242 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %243 = call i32 @free(%struct.ata_params* %242)
  %244 = load %union.ccb*, %union.ccb** %14, align 8
  %245 = call i32 @cam_freeccb(%union.ccb* %244)
  store i32 1, i32* %7, align 4
  br label %446

246:                                              ; preds = %232
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* %10, align 4
  br label %252

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi i32 [ %250, %249 ], [ 15000, %251 ]
  store i32 %253, i32* %10, align 4
  %254 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %255 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @ATA_SECURITY_ENABLED, align 4
  %258 = and i32 %256, %257
  store i32 %258, i32* %23, align 4
  %259 = load i32, i32* %22, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %323

261:                                              ; preds = %252
  %262 = load i32, i32* %17, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %261
  %265 = load i32, i32* %20, align 4
  %266 = icmp eq i32 %265, 130
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %20, align 4
  %269 = icmp eq i32 %268, 131
  br i1 %269, label %270, label %281

270:                                              ; preds = %267, %264
  %271 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %272 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %273 = call i64 @atasecurity_erase_confirm(%struct.cam_device* %271, %struct.ata_params* %272)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %270
  %276 = load %union.ccb*, %union.ccb** %14, align 8
  %277 = call i32 @cam_freeccb(%union.ccb* %276)
  %278 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %279 = call i32 @free(%struct.ata_params* %278)
  %280 = load i32, i32* %16, align 4
  store i32 %280, i32* %7, align 4
  br label %446

281:                                              ; preds = %270, %267, %261
  %282 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ATA_SECURITY_PASSWORD_MASTER, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %307

287:                                              ; preds = %281
  %288 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %289 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 1
  store i32 %290, i32* %291, align 4
  %292 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %287
  %296 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 4095
  br i1 %298, label %299, label %306

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %300, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %26, i32 0, i32 1
  store i32 65534, i32* %305, align 4
  br label %306

306:                                              ; preds = %304, %299, %295, %287
  br label %307

307:                                              ; preds = %306, %281
  %308 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %309 = load %union.ccb*, %union.ccb** %14, align 8
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %18, align 4
  %313 = call i32 @atasecurity_set_password(%struct.cam_device* %308, %union.ccb* %309, i32 %310, i32 %311, %struct.ata_security_password* %26, i32 %312)
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %16, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %307
  %317 = load %union.ccb*, %union.ccb** %14, align 8
  %318 = call i32 @cam_freeccb(%union.ccb* %317)
  %319 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %320 = call i32 @free(%struct.ata_params* %319)
  %321 = load i32, i32* %16, align 4
  store i32 %321, i32* %7, align 4
  br label %446

322:                                              ; preds = %307
  store i32 1, i32* %23, align 4
  br label %323

323:                                              ; preds = %322, %252
  %324 = load i32, i32* %20, align 4
  switch i32 %324, label %440 [
    i32 129, label %325
    i32 128, label %332
    i32 132, label %355
    i32 131, label %386
    i32 130, label %408
  ]

325:                                              ; preds = %323
  %326 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %327 = load %union.ccb*, %union.ccb** %14, align 8
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %18, align 4
  %331 = call i32 @atasecurity_freeze(%struct.cam_device* %326, %union.ccb* %327, i32 %328, i32 %329, i32 %330)
  store i32 %331, i32* %16, align 4
  br label %440

332:                                              ; preds = %323
  %333 = load i32, i32* %23, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %332
  %336 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %337 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @ATA_SECURITY_LOCKED, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %335
  %343 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %344 = load %union.ccb*, %union.ccb** %14, align 8
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %18, align 4
  %348 = call i32 @atasecurity_unlock(%struct.cam_device* %343, %union.ccb* %344, i32 %345, i32 %346, %struct.ata_security_password* %26, i32 %347)
  store i32 %348, i32* %16, align 4
  br label %351

349:                                              ; preds = %335
  %350 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %351

351:                                              ; preds = %349, %342
  br label %354

352:                                              ; preds = %332
  %353 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %354

354:                                              ; preds = %352, %351
  br label %440

355:                                              ; preds = %323
  %356 = load i32, i32* %23, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %383

358:                                              ; preds = %355
  %359 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %360 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @ATA_SECURITY_LOCKED, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %358
  %366 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %367 = load %union.ccb*, %union.ccb** %14, align 8
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %10, align 4
  %370 = load i32, i32* %18, align 4
  %371 = call i32 @atasecurity_unlock(%struct.cam_device* %366, %union.ccb* %367, i32 %368, i32 %369, %struct.ata_security_password* %26, i32 %370)
  store i32 %371, i32* %16, align 4
  br label %372

372:                                              ; preds = %365, %358
  %373 = load i32, i32* %16, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %377 = load %union.ccb*, %union.ccb** %14, align 8
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* %18, align 4
  %381 = call i32 @atasecurity_disable(%struct.cam_device* %376, %union.ccb* %377, i32 %378, i32 %379, %struct.ata_security_password* %26, i32 %380)
  store i32 %381, i32* %16, align 4
  br label %382

382:                                              ; preds = %375, %372
  br label %385

383:                                              ; preds = %355
  %384 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %385

385:                                              ; preds = %383, %382
  br label %440

386:                                              ; preds = %323
  %387 = load i32, i32* %23, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %405

389:                                              ; preds = %386
  %390 = load i32, i32* %24, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %394 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @atasecurity_erase_timeout_msecs(i32 %395)
  store i32 %396, i32* %24, align 4
  br label %397

397:                                              ; preds = %392, %389
  %398 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %399 = load %union.ccb*, %union.ccb** %14, align 8
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* %18, align 4
  %404 = call i32 @atasecurity_erase(%struct.cam_device* %398, %union.ccb* %399, i32 %400, i32 %401, i32 %402, %struct.ata_security_password* %26, i32 %403)
  store i32 %404, i32* %16, align 4
  br label %407

405:                                              ; preds = %386
  %406 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %407

407:                                              ; preds = %405, %397
  br label %440

408:                                              ; preds = %323
  %409 = load i32, i32* %23, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %437

411:                                              ; preds = %408
  %412 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %413 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @ATA_SECURITY_ENH_SUPP, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %434

418:                                              ; preds = %411
  %419 = load i32, i32* %24, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %418
  %422 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %423 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @atasecurity_erase_timeout_msecs(i32 %424)
  store i32 %425, i32* %24, align 4
  br label %426

426:                                              ; preds = %421, %418
  %427 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %428 = load %union.ccb*, %union.ccb** %14, align 8
  %429 = load i32, i32* %9, align 4
  %430 = load i32, i32* %10, align 4
  %431 = load i32, i32* %24, align 4
  %432 = load i32, i32* %18, align 4
  %433 = call i32 @atasecurity_erase(%struct.cam_device* %427, %union.ccb* %428, i32 %429, i32 %430, i32 %431, %struct.ata_security_password* %26, i32 %432)
  store i32 %433, i32* %16, align 4
  br label %436

434:                                              ; preds = %411
  %435 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %436

436:                                              ; preds = %434, %426
  br label %439

437:                                              ; preds = %408
  %438 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %439

439:                                              ; preds = %437, %436
  br label %440

440:                                              ; preds = %323, %439, %407, %385, %354, %325
  %441 = load %union.ccb*, %union.ccb** %14, align 8
  %442 = call i32 @cam_freeccb(%union.ccb* %441)
  %443 = load %struct.ata_params*, %struct.ata_params** %15, align 8
  %444 = call i32 @free(%struct.ata_params* %443)
  %445 = load i32, i32* %16, align 4
  store i32 %445, i32* %7, align 4
  br label %446

446:                                              ; preds = %440, %316, %275, %240, %225, %203, %193, %187, %165, %150, %139, %128, %117, %105, %72
  %447 = load i32, i32* %7, align 4
  ret i32 %447
}

declare dso_local i32 @memset(%struct.ata_security_password*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @ata_getpwd(i32, i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params**) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @ata_print_ident(%struct.ata_params*) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

declare dso_local i32 @atasecurity_print(%struct.ata_params*) #1

declare dso_local i32 @free(%struct.ata_params*) #1

declare dso_local i64 @atasecurity_erase_confirm(%struct.cam_device*, %struct.ata_params*) #1

declare dso_local i32 @atasecurity_set_password(%struct.cam_device*, %union.ccb*, i32, i32, %struct.ata_security_password*, i32) #1

declare dso_local i32 @atasecurity_freeze(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @atasecurity_unlock(%struct.cam_device*, %union.ccb*, i32, i32, %struct.ata_security_password*, i32) #1

declare dso_local i32 @atasecurity_disable(%struct.cam_device*, %union.ccb*, i32, i32, %struct.ata_security_password*, i32) #1

declare dso_local i32 @atasecurity_erase_timeout_msecs(i32) #1

declare dso_local i32 @atasecurity_erase(%struct.cam_device*, %union.ccb*, i32, i32, i32, %struct.ata_security_password*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
