; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_verify.c_vwalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_verify.c_vwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@__const.vwalk.dot = private unnamed_addr constant [2 x i8] c".\00", align 1
@ftsoptions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fts_open: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_11__* null, align 8
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@dflag = common dso_local global i64 0, align 8
@F_MAGIC = common dso_local global i32 0, align 4
@FNM_PATHNAME = common dso_local global i32 0, align 4
@F_VISIT = common dso_local global i32 0, align 4
@F_NOCHANGE = common dso_local global i32 0, align 4
@MISMATCHEXIT = common dso_local global i32 0, align 4
@F_IGN = common dso_local global i32 0, align 4
@F_DIR = common dso_local global i64 0, align 8
@eflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"extra: %s\00", align 1
@rflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c", not removed: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", removed\00", align 1
@sflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"%s checksum: %u\00", align 1
@fullpath = common dso_local global i8* null, align 8
@crc_total = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vwalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwalk() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [2 x i8], align 1
  %9 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.vwalk.dot, i32 0, i32 0), i64 2, i1 false)
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %10, i8** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %14 = load i32, i32* @ftsoptions, align 4
  %15 = call i32* @fts_open(i8** %13, i32 %14, i32* null)
  store i32* %15, i32** %1, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @mtree_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @root, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %238, %195, %92, %81, %80, %47, %36, %21
  %24 = load i32*, i32** %1, align 8
  %25 = call %struct.TYPE_12__* @fts_read(i32* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %2, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %243

27:                                               ; preds = %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @check_excludes(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32*, i32** %1, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = load i32, i32* @FTS_SKIP, align 4
  %40 = call i32 @fts_set(i32* %37, %struct.TYPE_12__* %38, i32 %39)
  br label %23

41:                                               ; preds = %27
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @find_only(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %1, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load i32, i32* @FTS_SKIP, align 4
  %51 = call i32 @fts_set(i32* %48, %struct.TYPE_12__* %49, i32 %50)
  br label %23

52:                                               ; preds = %41
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %89 [
    i32 133, label %56
    i32 128, label %56
    i32 131, label %57
    i32 132, label %81
    i32 130, label %81
    i32 129, label %81
  ]

56:                                               ; preds = %52, %52
  br label %94

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %4, align 8
  br label %67

67:                                               ; preds = %73, %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %4, align 8
  br label %67

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %57
  br label %23

81:                                               ; preds = %52, %52, %52
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = call i8* @RP(%struct.TYPE_12__* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @strerror(i32 %86)
  %88 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %87)
  br label %23

89:                                               ; preds = %52
  %90 = load i64, i64* @dflag, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %23

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %197

101:                                              ; preds = %94
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %3, align 8
  br label %103

103:                                              ; preds = %188, %101
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = icmp ne %struct.TYPE_11__* %104, null
  br i1 %105, label %106, label %192

106:                                              ; preds = %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @F_MAGIC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FNM_PATHNAME, align 4
  %121 = call i32 @fnmatch(i32 %116, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %113, %106
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strcmp(i32 %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %187, label %132

132:                                              ; preds = %123, %113
  %133 = load i32, i32* @F_VISIT, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @F_NOCHANGE, align 4
  %142 = and i32 %140, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = call i64 @compare(%struct.TYPE_11__* %145, %struct.TYPE_12__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @MISMATCHEXIT, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %144, %132
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @F_IGN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @F_DIR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 133
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = icmp ne %struct.TYPE_11__* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %174, %169
  br label %186

181:                                              ; preds = %164, %158, %151
  %182 = load i32*, i32** %1, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %184 = load i32, i32* @FTS_SKIP, align 4
  %185 = call i32 @fts_set(i32* %182, %struct.TYPE_12__* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %180
  br label %192

187:                                              ; preds = %123
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %3, align 8
  br label %103

192:                                              ; preds = %186, %103
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = icmp ne %struct.TYPE_11__* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %23

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %100
  %198 = load i32, i32* @eflag, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %238, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* @dflag, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 128
  br i1 %207, label %238, label %208

208:                                              ; preds = %203, %200
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = call i8* @RP(%struct.TYPE_12__* %209)
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %210)
  %212 = load i64, i64* @rflag, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @S_ISDIR(i32 %219)
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i64 (i32)* @rmdir, i64 (i32)* @unlink
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i64 %223(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %214
  %230 = load i32, i32* @errno, align 4
  %231 = call i8* @strerror(i32 %230)
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %231)
  br label %235

233:                                              ; preds = %214
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %229
  br label %236

236:                                              ; preds = %235, %208
  %237 = call i32 @putchar(i8 signext 10)
  br label %238

238:                                              ; preds = %236, %203, %197
  %239 = load i32*, i32** %1, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %241 = load i32, i32* @FTS_SKIP, align 4
  %242 = call i32 @fts_set(i32* %239, %struct.TYPE_12__* %240, i32 %241)
  br label %23

243:                                              ; preds = %23
  %244 = load i32*, i32** %1, align 8
  %245 = call i32 @fts_close(i32* %244)
  %246 = load i64, i64* @sflag, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load i8*, i8** @fullpath, align 8
  %250 = load i8*, i8** @crc_total, align 8
  %251 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %249, i8* %250)
  br label %252

252:                                              ; preds = %248, %243
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fts_open(i8**, i32, i32*) #2

declare dso_local i32 @mtree_err(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %struct.TYPE_12__* @fts_read(i32*) #2

declare dso_local i64 @check_excludes(i32, i32) #2

declare dso_local i32 @fts_set(i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @find_only(i32) #2

declare dso_local i32 @warnx(i8*, i8*, i8*) #2

declare dso_local i8* @RP(%struct.TYPE_12__*) #2

declare dso_local i32 @fnmatch(i32, i32, i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i64 @compare(%struct.TYPE_11__*, %struct.TYPE_12__*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @rmdir(i32) #2

declare dso_local i64 @unlink(i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @fts_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
