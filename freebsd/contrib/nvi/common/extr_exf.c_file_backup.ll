; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_backup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"258|%s expanded into too many file names\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"259|%s: not a regular file\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"260|%s: not owned by you\00", align 1
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"261|%s: accessible by a user other than the owner\00", align 1
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @file_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_backup(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca [8192 x i8], align 16
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %33, align 8
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %19, align 4
  store i8* null, i8** %28, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %22, align 8
  store i64 0, i64* @errno, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = call i32 @open(i8* %34, i32 %35, i32 0)
  store i32 %36, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %413

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %23, align 8
  br label %376

45:                                               ; preds = %3
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ex_cinit(i32* %46, %struct.TYPE_6__* %11, i32 0, i32 0, i32 0, i32 0, i32 0)
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 78
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  store i32 1, i32* %21, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  br label %57

56:                                               ; preds = %45
  store i32 0, i32* %21, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = load i8*, i8** %30, align 8
  %63 = load i64, i64* %31, align 8
  %64 = call i32 @CHAR2INT(i32* %58, i8* %59, i32 %61, i8* %62, i64 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %30, align 8
  %67 = load i64, i64* %31, align 8
  %68 = call i8* @v_wstrdup(i32* %65, i8* %66, i64 %67)
  store i8* %68, i8** %30, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %413

71:                                               ; preds = %57
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %30, align 8
  %74 = load i64, i64* %31, align 8
  %75 = call i64 @argv_exp2(i32* %72, %struct.TYPE_6__* %11, i8* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %30, align 8
  %79 = call i32 @free(i8* %78)
  store i32 1, i32* %4, align 4
  br label %413

80:                                               ; preds = %71
  %81 = load i8*, i8** %30, align 8
  %82 = call i32 @free(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @M_ERR, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @msgq_str(i32* %87, i32 %88, i8* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %19, align 4
  %92 = call i64 @close(i32 %91)
  store i32 1, i32* %4, align 4
  br label %413

93:                                               ; preds = %80
  %94 = load i32, i32* %21, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %242

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = load i8*, i8** %22, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %101 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %101, i64 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 2
  %107 = add nsw i32 %106, 50
  %108 = call i32 @GET_SPACE_GOTOC(i32* %97, i8* %98, i64 %99, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %111 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %111, i64 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i8*, i8** %24, align 8
  %124 = load i64, i64* %32, align 8
  %125 = call i32 @INT2CHAR(i32* %109, i32 %115, i32 %122, i8* %123, i64 %124)
  %126 = load i8*, i8** %24, align 8
  %127 = call i8* @strdup(i8* %126)
  store i8* %127, i8** %33, align 8
  %128 = load i8*, i8** %33, align 8
  store i8* %128, i8** %24, align 8
  %129 = load i8*, i8** %22, align 8
  store i8* %129, i8** %27, align 8
  store i8* null, i8** %26, align 8
  br label %130

130:                                              ; preds = %162, %96
  %131 = load i8*, i8** %24, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %168

136:                                              ; preds = %130
  %137 = load i8*, i8** %24, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 37
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load i8*, i8** %24, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 37
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i8*, i8** %27, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %27, align 8
  store i8 37, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %142
  br label %161

152:                                              ; preds = %136
  %153 = load i8*, i8** %24, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 47
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i8*, i8** %27, align 8
  store i8* %159, i8** %26, align 8
  br label %160

160:                                              ; preds = %158, %152
  br label %161

161:                                              ; preds = %160, %151
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %24, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %24, align 8
  %165 = load i8, i8* %163, align 1
  %166 = load i8*, i8** %27, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %27, align 8
  store i8 %165, i8* %166, align 1
  br label %130

168:                                              ; preds = %130
  %169 = load i8*, i8** %27, align 8
  store i8* %169, i8** %25, align 8
  %170 = load i8*, i8** %27, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %27, align 8
  store i8 37, i8* %170, align 1
  %172 = load i8*, i8** %27, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %27, align 8
  store i8 100, i8* %172, align 1
  %174 = load i8*, i8** %27, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %26, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %178, i32** %10, align 8
  %179 = load i8*, i8** %22, align 8
  store i8* %179, i8** %24, align 8
  br label %187

180:                                              ; preds = %168
  %181 = load i8*, i8** %26, align 8
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %22, align 8
  %183 = call i32* @opendir(i8* %182)
  store i32* %183, i32** %10, align 8
  %184 = load i8*, i8** %26, align 8
  store i8 47, i8* %184, align 1
  %185 = load i8*, i8** %26, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %24, align 8
  br label %187

187:                                              ; preds = %180, %177
  %188 = load i32*, i32** %10, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %193 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %193, i64 0
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %199 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %199, i64 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i8*, i8** %23, align 8
  %206 = load i64, i64* %32, align 8
  %207 = call i32 @INT2CHAR(i32* %191, i32 %197, i32 %204, i8* %205, i64 %206)
  br label %376

208:                                              ; preds = %187
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %226, %208
  %210 = load i32*, i32** %10, align 8
  %211 = call %struct.dirent* @readdir(i32* %210)
  store %struct.dirent* %211, %struct.dirent** %8, align 8
  %212 = icmp ne %struct.dirent* %211, null
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = load %struct.dirent*, %struct.dirent** %8, align 8
  %215 = getelementptr inbounds %struct.dirent, %struct.dirent* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %24, align 8
  %218 = call i32 @sscanf(i32 %216, i8* %217, i32* %17)
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp sgt i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %224, %220, %213
  br label %209

227:                                              ; preds = %209
  %228 = load i32*, i32** %10, align 8
  %229 = call i32 @closedir(i32* %228)
  %230 = load i8*, i8** %25, align 8
  %231 = load i64, i64* %13, align 8
  %232 = load i8*, i8** %25, align 8
  %233 = load i8*, i8** %22, align 8
  %234 = ptrtoint i8* %232 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sub i64 %231, %236
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  %240 = call i32 @snprintf(i8* %230, i64 %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  %241 = load i8*, i8** %22, align 8
  store i8* %241, i8** %28, align 8
  br label %260

242:                                              ; preds = %93
  store i8* null, i8** %22, align 8
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %245 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %245, i64 0
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %251 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %251, i64 0
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i8*, i8** %28, align 8
  %258 = load i64, i64* %32, align 8
  %259 = call i32 @INT2CHAR(i32* %243, i32 %249, i32 %256, i8* %257, i64 %258)
  br label %260

260:                                              ; preds = %242, %227
  %261 = load i8*, i8** %28, align 8
  %262 = call i64 @stat(i8* %261, %struct.stat* %9)
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %303

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @S_ISREG(i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load i32*, i32** %5, align 8
  %271 = load i32, i32* @M_ERR, align 4
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @msgq_str(i32* %270, i32 %271, i8* %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %376

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i64 (...) @getuid()
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load i32*, i32** %5, align 8
  %281 = load i32, i32* @M_ERR, align 4
  %282 = load i8*, i8** %7, align 8
  %283 = call i32 @msgq_str(i32* %280, i32 %281, i8* %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %376

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @S_IRGRP, align 4
  %288 = load i32, i32* @S_IWGRP, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @S_IROTH, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @S_IWOTH, align 4
  %293 = or i32 %291, %292
  %294 = and i32 %286, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %284
  %297 = load i32*, i32** %5, align 8
  %298 = load i32, i32* @M_ERR, align 4
  %299 = load i8*, i8** %7, align 8
  %300 = call i32 @msgq_str(i32* %297, i32 %298, i8* %299, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %376

301:                                              ; preds = %284
  %302 = load i32, i32* @O_TRUNC, align 4
  store i32 %302, i32* %14, align 4
  br label %307

303:                                              ; preds = %260
  %304 = load i32, i32* @O_CREAT, align 4
  %305 = load i32, i32* @O_EXCL, align 4
  %306 = or i32 %304, %305
  store i32 %306, i32* %14, align 4
  br label %307

307:                                              ; preds = %303, %301
  %308 = load i8*, i8** %28, align 8
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* @O_WRONLY, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @S_IRUSR, align 4
  %313 = load i32, i32* @S_IWUSR, align 4
  %314 = or i32 %312, %313
  %315 = call i32 @open(i8* %308, i32 %311, i32 %314)
  store i32 %315, i32* %20, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %307
  %318 = load i8*, i8** %7, align 8
  store i8* %318, i8** %23, align 8
  br label %376

319:                                              ; preds = %307
  br label %320

320:                                              ; preds = %348, %319
  %321 = load i32, i32* %19, align 4
  %322 = getelementptr inbounds [8192 x i8], [8192 x i8]* %29, i64 0, i64 0
  %323 = call i32 @read(i32 %321, i8* %322, i32 8192)
  store i32 %323, i32* %16, align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %349

325:                                              ; preds = %320
  store i32 0, i32* %12, align 4
  br label %326

326:                                              ; preds = %341, %325
  %327 = load i32, i32* %16, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %326
  %330 = load i32, i32* %20, align 4
  %331 = getelementptr inbounds [8192 x i8], [8192 x i8]* %29, i64 0, i64 0
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  %335 = load i32, i32* %16, align 4
  %336 = call i32 @write(i32 %330, i8* %334, i32 %335)
  store i32 %336, i32* %18, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %329
  %339 = load i8*, i8** %28, align 8
  store i8* %339, i8** %23, align 8
  br label %376

340:                                              ; preds = %329
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* %16, align 4
  %344 = sub nsw i32 %343, %342
  store i32 %344, i32* %16, align 4
  %345 = load i32, i32* %18, align 4
  %346 = load i32, i32* %12, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %12, align 4
  br label %326

348:                                              ; preds = %326
  br label %320

349:                                              ; preds = %320
  %350 = load i32, i32* %16, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = load i8*, i8** %6, align 8
  store i8* %353, i8** %23, align 8
  br label %376

354:                                              ; preds = %349
  %355 = load i32, i32* %19, align 4
  %356 = call i64 @close(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = load i8*, i8** %6, align 8
  store i8* %359, i8** %23, align 8
  br label %376

360:                                              ; preds = %354
  %361 = load i32, i32* %20, align 4
  %362 = call i64 @close(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %360
  %365 = load i8*, i8** %28, align 8
  store i8* %365, i8** %23, align 8
  br label %376

366:                                              ; preds = %360
  %367 = load i8*, i8** %22, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load i32*, i32** %5, align 8
  %371 = load i8*, i8** %22, align 8
  %372 = load i64, i64* %13, align 8
  %373 = call i32 @FREE_SPACE(i32* %370, i8* %371, i64 %372)
  br label %374

374:                                              ; preds = %369, %366
  store i32 0, i32* %4, align 4
  br label %413

375:                                              ; No predecessors!
  br label %376

376:                                              ; preds = %375, %364, %358, %352, %338, %317, %296, %279, %269, %190, %43
  %377 = load i32, i32* %19, align 4
  %378 = icmp ne i32 %377, -1
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i32, i32* %19, align 4
  %381 = call i64 @close(i32 %380)
  br label %382

382:                                              ; preds = %379, %376
  %383 = load i32, i32* %20, align 4
  %384 = icmp ne i32 %383, -1
  br i1 %384, label %385, label %390

385:                                              ; preds = %382
  %386 = load i8*, i8** %28, align 8
  %387 = call i32 @unlink(i8* %386)
  %388 = load i32, i32* %20, align 4
  %389 = call i64 @close(i32 %388)
  br label %390

390:                                              ; preds = %385, %382
  %391 = load i8*, i8** %23, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = load i32*, i32** %5, align 8
  %395 = load i32, i32* @M_SYSERR, align 4
  %396 = load i8*, i8** %23, align 8
  %397 = call i32 @msgq_str(i32* %394, i32 %395, i8* %396, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %398

398:                                              ; preds = %393, %390
  %399 = load i8*, i8** %33, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i8*, i8** %33, align 8
  %403 = call i32 @free(i8* %402)
  br label %404

404:                                              ; preds = %401, %398
  %405 = load i8*, i8** %22, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %412

407:                                              ; preds = %404
  %408 = load i32*, i32** %5, align 8
  %409 = load i8*, i8** %22, align 8
  %410 = load i64, i64* %13, align 8
  %411 = call i32 @FREE_SPACE(i32* %408, i8* %409, i64 %410)
  br label %412

412:                                              ; preds = %407, %404
  store i32 1, i32* %4, align 4
  br label %413

413:                                              ; preds = %412, %374, %86, %77, %70, %42
  %414 = load i32, i32* %4, align 4
  ret i32 %414
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ex_cinit(i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHAR2INT(i32*, i8*, i32, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @v_wstrdup(i32*, i8*, i64) #1

declare dso_local i64 @argv_exp2(i32*, %struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msgq_str(i32*, i32, i8*, i8*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @GET_SPACE_GOTOC(i32*, i8*, i64, i32) #1

declare dso_local i32 @INT2CHAR(i32*, i32, i32, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @FREE_SPACE(i32*, i8*, i64) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
