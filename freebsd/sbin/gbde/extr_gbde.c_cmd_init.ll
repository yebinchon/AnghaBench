; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_key = type { i32, i32, i32, i32, i32, i32*, i32*, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%stemp.XXXXXXXXXX\00", align 1
@_PATH_TMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@template = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EDITOR is too long\00", align 1
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"sector_size\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"sector_size not a proper number\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Missing sector_size property\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"sector_size not a power of 2\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"sector_size is smaller than 512\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to malloc sector buffer\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"first_sector\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"first_sector not a proper number\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"last_sector\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"last_sector not a proper number\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"last_sector not larger than first_sector\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"total_sectors\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"total_sectors not a proper number\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"No -L new-lockfile argument and first_sector != 0\00", align 1
@GBDE_F_SECT0 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [57 x i8] c"total_sectors disagree with first_sector and last_sector\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"missing last_sector or total_sectors\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"number_of_keys\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"number_of_keys not a proper number\00", align 1
@G_BDE_MAXKEYS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"number_of_keys out of range\00", align 1
@sorthelp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"lseek(2) to sector 0\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"write sector 0\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"random_flush\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"lseek(2) to first_sector\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"write to $device_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_key*, i32, i8*, i32, i8*)* @cmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_init(%struct.g_bde_key* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.g_bde_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.g_bde_key* %0, %struct.g_bde_key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %28 = load i32, i32* @BUFSIZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %33 = call i32 @bzero(%struct.g_bde_key* %32, i32 48)
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %5
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = call i32 @open(i8* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @properties_read(i32 %46)
  store i32 %47, i32* %27, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @close(i32 %48)
  br label %124

50:                                               ; preds = %5
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %50
  %54 = load i32, i32* @_PATH_TMP, align 4
  %55 = call i32 @asprintf(i8** %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %21, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i8*, i8** %21, align 8
  %62 = call i32 @mkstemp(i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %21, align 8
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** @template, align 8
  %71 = load i32*, i32** @template, align 8
  %72 = call i32 @strlen(i32* %71)
  %73 = call i32 @write(i32 %69, i32* %70, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @close(i32 %74)
  %76 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %76, i8** %20, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %80

80:                                               ; preds = %79, %68
  %81 = trunc i64 %29 to i32
  %82 = load i8*, i8** %20, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = call i64 @snprintf(i8* %31, i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %83)
  %85 = icmp sge i64 %84, %29
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i8*, i8** %21, align 8
  %88 = call i32 @unlink(i8* %87)
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %80
  %91 = call i32 @system(i8* %31)
  %92 = load i8*, i8** %21, align 8
  %93 = load i32, i32* @O_RDONLY, align 4
  %94 = call i32 @open(i8* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @properties_read(i32 %101)
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i8*, i8** %21, align 8
  %106 = call i32 @unlink(i8* %105)
  %107 = load i8*, i8** %21, align 8
  %108 = call i32 @free(i8* %107)
  br label %123

109:                                              ; preds = %50
  %110 = load i8*, i8** @_PATH_DEVNULL, align 8
  %111 = load i32, i32* @O_RDONLY, align 4
  %112 = call i32 @open(i8* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i8*, i8** @_PATH_DEVNULL, align 8
  %117 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @properties_read(i32 %119)
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @close(i32 %121)
  br label %123

123:                                              ; preds = %118, %100
  br label %124

124:                                              ; preds = %123, %45
  %125 = load i32, i32* %27, align 4
  %126 = call i8* @property_find(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %126, i8** %20, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %129 = call i32 @ioctl(i32 %127, i32 %128, i32* %24)
  store i32 %129, i32* %11, align 4
  %130 = load i8*, i8** %20, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %124
  %133 = load i8*, i8** %20, align 8
  %134 = call i8* @strtoul(i8* %133, i8** %21, i32 0)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %13, align 4
  %136 = load i8*, i8** %20, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i8*, i8** %21, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139, %132
  %145 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  br label %155

147:                                              ; preds = %124
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %24, align 4
  store i32 %151, i32* %13, align 4
  br label %154

152:                                              ; preds = %147
  %153 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %150
  br label %155

155:                                              ; preds = %154, %146
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sub i32 %157, 1
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %155
  %164 = load i32, i32* %13, align 4
  %165 = icmp ult i32 %164, 512
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %163
  %169 = load i32, i32* %13, align 4
  %170 = call i32* @malloc(i32 %169)
  store i32* %170, i32** %12, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %168
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %178 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %181 = call i32 @ioctl(i32 %179, i32 %180, i32* %17)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %13, align 4
  %187 = udiv i32 %185, %186
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %191

190:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %190, %184
  %192 = load i32, i32* %27, align 4
  %193 = call i8* @property_find(i32 %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i8* %193, i8** %20, align 8
  %194 = load i8*, i8** %20, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i8*, i8** %20, align 8
  %198 = call i8* @strtoul(i8* %197, i8** %21, i32 0)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %14, align 4
  %200 = load i8*, i8** %20, align 8
  %201 = load i8, i8* %200, align 1
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load i8*, i8** %21, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203, %196
  %209 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %203
  br label %211

211:                                              ; preds = %210, %191
  %212 = load i32, i32* %27, align 4
  %213 = call i8* @property_find(i32 %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i8* %213, i8** %20, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %239

216:                                              ; preds = %211
  %217 = load i8*, i8** %20, align 8
  %218 = call i8* @strtoul(i8* %217, i8** %21, i32 0)
  %219 = ptrtoint i8* %218 to i32
  store i32 %219, i32* %15, align 4
  %220 = load i8*, i8** %20, align 8
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load i8*, i8** %21, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223, %216
  %229 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %223
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %230
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %16, align 4
  br label %239

239:                                              ; preds = %236, %211
  %240 = load i32, i32* %27, align 4
  %241 = call i8* @property_find(i32 %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i8* %241, i8** %20, align 8
  %242 = load i8*, i8** %20, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %267

244:                                              ; preds = %239
  %245 = load i8*, i8** %20, align 8
  %246 = call i8* @strtoul(i8* %245, i8** %21, i32 0)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %16, align 4
  %248 = load i8*, i8** %20, align 8
  %249 = load i8, i8* %248, align 1
  %250 = icmp ne i8 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %244
  %252 = load i8*, i8** %21, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251, %244
  %257 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %251
  %259 = load i32, i32* %15, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %262, %263
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %15, align 4
  br label %266

266:                                              ; preds = %261, %258
  br label %267

267:                                              ; preds = %266, %239
  %268 = load i8*, i8** %10, align 8
  %269 = icmp eq i8* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load i32, i32* %14, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 @errx(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0))
  br label %289

275:                                              ; preds = %270, %267
  %276 = load i8*, i8** %10, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %288

278:                                              ; preds = %275
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %16, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %16, align 4
  %283 = load i32, i32* @GBDE_F_SECT0, align 4
  %284 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %285 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %278, %275
  br label %289

289:                                              ; preds = %288, %273
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %292 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = mul i32 %290, %293
  %295 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %296 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %14, align 4
  %300 = sub nsw i32 %298, %299
  %301 = add nsw i32 %300, 1
  %302 = icmp ne i32 %297, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %289
  %304 = call i32 @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %289
  %306 = load i32, i32* %16, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %305
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, 1
  %313 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %314 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = mul i32 %312, %315
  %317 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %318 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 4
  %319 = call i32 @random_bits(i32* %26, i32 4)
  %320 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %321 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %324 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = sub nsw i32 %322, %325
  %327 = load i32, i32* %26, align 4
  %328 = srem i32 %327, %326
  store i32 %328, i32* %26, align 4
  %329 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %330 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sub i32 %331, 1
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %26, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %26, align 4
  %336 = load i32, i32* %26, align 4
  %337 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %338 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 8
  %339 = load i32, i32* %27, align 4
  %340 = call i8* @property_find(i32 %339, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i8* %340, i8** %20, align 8
  %341 = load i8*, i8** %20, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %367

343:                                              ; preds = %310
  %344 = load i8*, i8** %20, align 8
  %345 = call i8* @strtoul(i8* %344, i8** %21, i32 0)
  %346 = ptrtoint i8* %345 to i32
  store i32 %346, i32* %19, align 4
  %347 = load i8*, i8** %20, align 8
  %348 = load i8, i8* %347, align 1
  %349 = icmp ne i8 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %343
  %351 = load i8*, i8** %21, align 8
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350, %343
  %356 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  br label %357

357:                                              ; preds = %355, %350
  %358 = load i32, i32* %19, align 4
  %359 = icmp ult i32 %358, 1
  br i1 %359, label %364, label %360

360:                                              ; preds = %357
  %361 = load i32, i32* %19, align 4
  %362 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %363 = icmp ugt i32 %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %360, %357
  %365 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %360
  br label %368

367:                                              ; preds = %310
  store i32 4, i32* %19, align 4
  br label %368

368:                                              ; preds = %367, %366
  store i32 0, i32* %24, align 4
  br label %369

369:                                              ; preds = %429, %368
  %370 = load i32, i32* %24, align 4
  %371 = load i32, i32* %19, align 4
  %372 = icmp ult i32 %370, %371
  br i1 %372, label %373, label %432

373:                                              ; preds = %369
  br label %374

374:                                              ; preds = %419, %373
  br label %375

375:                                              ; preds = %389, %374
  %376 = call i32 @random_bits(i32* %26, i32 4)
  %377 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %378 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %26, align 4
  %381 = srem i32 %380, %379
  store i32 %381, i32* %26, align 4
  %382 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %383 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = sub i32 %384, 1
  %386 = xor i32 %385, -1
  %387 = load i32, i32* %26, align 4
  %388 = and i32 %387, %386
  store i32 %388, i32* %26, align 4
  br label %389

389:                                              ; preds = %375
  %390 = load i32, i32* %26, align 4
  %391 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %392 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %375, label %395

395:                                              ; preds = %389
  store i32 0, i32* %25, align 4
  br label %396

396:                                              ; preds = %412, %395
  %397 = load i32, i32* %25, align 4
  %398 = load i32, i32* %24, align 4
  %399 = icmp ult i32 %397, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %396
  %401 = load i32, i32* %26, align 4
  %402 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %403 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %402, i32 0, i32 5
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %25, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %401, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %400
  br label %415

411:                                              ; preds = %400
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %25, align 4
  %414 = add i32 %413, 1
  store i32 %414, i32* %25, align 4
  br label %396

415:                                              ; preds = %410, %396
  %416 = load i32, i32* %25, align 4
  %417 = load i32, i32* %24, align 4
  %418 = icmp ult i32 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  br label %374

420:                                              ; preds = %415
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %26, align 4
  %423 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %424 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %423, i32 0, i32 5
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %24, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %422, i32* %428, align 4
  br label %429

429:                                              ; preds = %421
  %430 = load i32, i32* %24, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %24, align 4
  br label %369

432:                                              ; preds = %369
  br label %433

433:                                              ; preds = %454, %432
  %434 = load i32, i32* %24, align 4
  %435 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %436 = icmp ult i32 %434, %435
  br i1 %436, label %437, label %457

437:                                              ; preds = %433
  br label %438

438:                                              ; preds = %440, %437
  %439 = call i32 @random_bits(i32* %26, i32 4)
  br label %440

440:                                              ; preds = %438
  %441 = load i32, i32* %26, align 4
  %442 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %443 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %441, %444
  br i1 %445, label %438, label %446

446:                                              ; preds = %440
  %447 = load i32, i32* %26, align 4
  %448 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %449 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %448, i32 0, i32 5
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %24, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  store i32 %447, i32* %453, align 4
  br label %454

454:                                              ; preds = %446
  %455 = load i32, i32* %24, align 4
  %456 = add i32 %455, 1
  store i32 %456, i32* %24, align 4
  br label %433

457:                                              ; preds = %433
  %458 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %459 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %458, i32 0, i32 5
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %462 = load i32, i32* @sorthelp, align 4
  %463 = call i32 @qsort(i32* %460, i32 %461, i32 4, i32 %462)
  %464 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %465 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @GBDE_F_SECT0, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %492

470:                                              ; preds = %457
  %471 = load i32, i32* %7, align 4
  %472 = load i32, i32* @SEEK_SET, align 4
  %473 = call i32 @lseek(i32 %471, i32 0, i32 %472)
  store i32 %473, i32* %18, align 4
  %474 = load i32, i32* %18, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %470
  %477 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  br label %478

478:                                              ; preds = %476, %470
  %479 = load i32*, i32** %12, align 8
  %480 = load i32, i32* %13, align 4
  %481 = call i32 @random_bits(i32* %479, i32 %480)
  %482 = load i32, i32* %7, align 4
  %483 = load i32*, i32** %12, align 8
  %484 = load i32, i32* %13, align 4
  %485 = call i32 @write(i32 %482, i32* %483, i32 %484)
  store i32 %485, i32* %11, align 4
  %486 = load i32, i32* %11, align 4
  %487 = load i32, i32* %13, align 4
  %488 = icmp ne i32 %486, %487
  br i1 %488, label %489, label %491

489:                                              ; preds = %478
  %490 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  br label %491

491:                                              ; preds = %489, %478
  br label %492

492:                                              ; preds = %491, %457
  %493 = load i32, i32* %27, align 4
  %494 = call i8* @property_find(i32 %493, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  store i8* %494, i8** %20, align 8
  %495 = load i8*, i8** %20, align 8
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %536

497:                                              ; preds = %492
  %498 = load i32, i32* %14, align 4
  %499 = load i32, i32* %13, align 4
  %500 = mul i32 %498, %499
  store i32 %500, i32* %17, align 4
  %501 = load i32, i32* %7, align 4
  %502 = load i32, i32* %17, align 4
  %503 = load i32, i32* @SEEK_SET, align 4
  %504 = call i32 @lseek(i32 %501, i32 %502, i32 %503)
  store i32 %504, i32* %18, align 4
  %505 = load i32, i32* %18, align 4
  %506 = load i32, i32* %17, align 4
  %507 = icmp ne i32 %505, %506
  br i1 %507, label %508, label %510

508:                                              ; preds = %497
  %509 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  br label %510

510:                                              ; preds = %508, %497
  %511 = load i32, i32* %15, align 4
  %512 = load i32, i32* %13, align 4
  %513 = mul i32 %511, %512
  store i32 %513, i32* %18, align 4
  br label %514

514:                                              ; preds = %531, %510
  %515 = load i32, i32* %17, align 4
  %516 = load i32, i32* %18, align 4
  %517 = icmp ule i32 %515, %516
  br i1 %517, label %518, label %535

518:                                              ; preds = %514
  %519 = load i32*, i32** %12, align 8
  %520 = load i32, i32* %13, align 4
  %521 = call i32 @random_bits(i32* %519, i32 %520)
  %522 = load i32, i32* %7, align 4
  %523 = load i32*, i32** %12, align 8
  %524 = load i32, i32* %13, align 4
  %525 = call i32 @write(i32 %522, i32* %523, i32 %524)
  store i32 %525, i32* %11, align 4
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* %13, align 4
  %528 = icmp ne i32 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %518
  %530 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0))
  br label %531

531:                                              ; preds = %529, %518
  %532 = load i32, i32* %13, align 4
  %533 = load i32, i32* %17, align 4
  %534 = add i32 %533, %532
  store i32 %534, i32* %17, align 4
  br label %514

535:                                              ; preds = %514
  br label %536

536:                                              ; preds = %535, %492
  %537 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %538 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %537, i32 0, i32 6
  %539 = load i32*, i32** %538, align 8
  %540 = call i32 @random_bits(i32* %539, i32 8)
  %541 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %542 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %541, i32 0, i32 7
  %543 = load i32*, i32** %542, align 8
  %544 = call i32 @random_bits(i32* %543, i32 8)
  %545 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %545)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.g_bde_key*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @properties_read(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @property_find(i32, i8*) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #2

declare dso_local i8* @strtoul(i8*, i8**, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @random_bits(i32*, i32) #2

declare dso_local i32 @qsort(i32*, i32, i32, i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
