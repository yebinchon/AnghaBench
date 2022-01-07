; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_create.c_statd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_create.c_statd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MTREE_MAXGID = common dso_local global i32 0, align 4
@MTREE_MAXUID = common dso_local global i32 0, align 4
@MTREE_MAXMODE = common dso_local global i32 0, align 4
@MTREE_MAXFLAGS = common dso_local global i32 0, align 4
@statd.first = internal global i32 1, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@flavor = common dso_local global i64 0, align 8
@F_NETBSD6 = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@MBITS = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@F_MODE = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/set type=dir\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/set type=file\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" uname=%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" uid=%lu\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" gname=%s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" gid=%lu\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" mode=%#lo\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" nlink=1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" flags=%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*, i32*, i32*, i32*, i32*)* @statd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statd(i32* %0, i32* %1, %struct.TYPE_7__* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  %37 = load i32, i32* @MTREE_MAXGID, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %30, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %31, align 8
  %41 = load i32, i32* @MTREE_MAXUID, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %32, align 8
  %44 = load i32, i32* @MTREE_MAXMODE, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i64, i64 %45, align 16
  store i64 %45, i64* %33, align 8
  %47 = load i32, i32* @MTREE_MAXFLAGS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i64, i64 %48, align 16
  store i64 %48, i64* %34, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %23, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %24, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %25, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call %struct.TYPE_7__* @fts_children(i32* %58, i32 0)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %16, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %7
  %62 = load i64, i64* @errno, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = call i32 @RP(%struct.TYPE_7__* %65)
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 @mtree_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  store i32 1, i32* %8, align 4
  store i32 1, i32* %35, align 4
  br label %360

71:                                               ; preds = %7
  %72 = mul nuw i64 8, %38
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(i64* %40, i32 0, i32 %73)
  %75 = mul nuw i64 8, %42
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memset(i64* %43, i32 0, i32 %76)
  %78 = mul nuw i64 8, %45
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(i64* %46, i32 0, i32 %79)
  %81 = mul nuw i64 8, %48
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memset(i64* %49, i32 0, i32 %82)
  store i64 0, i64* %29, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  br label %84

84:                                               ; preds = %178, %71
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %182

87:                                               ; preds = %84
  %88 = load i64, i64* @flavor, align 8
  %89 = load i64, i64* @F_NETBSD6, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @dflag, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i64, i64* @dflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %177

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @S_ISDIR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %177

105:                                              ; preds = %97, %91, %87
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MBITS, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @MTREE_MAXMODE, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %105
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %46, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %28, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %24, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %46, i64 %127
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %28, align 8
  br label %130

130:                                              ; preds = %124, %116, %105
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @MTREE_MAXGID, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %130
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %40, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %26, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %40, i64 %150
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %26, align 8
  br label %153

153:                                              ; preds = %147, %139, %130
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @MTREE_MAXUID, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %153
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %43, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* %27, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %43, i64 %173
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %27, align 8
  br label %176

176:                                              ; preds = %170, %162, %153
  br label %177

177:                                              ; preds = %176, %97, %94
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  store %struct.TYPE_7__* %181, %struct.TYPE_7__** %16, align 8
  br label %84

182:                                              ; preds = %84
  %183 = load i32, i32* @keys, align 4
  %184 = load i32, i32* @F_UNAME, align 4
  %185 = load i32, i32* @F_UID, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %182
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %23, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %229, label %194

194:                                              ; preds = %189, %182
  %195 = load i32, i32* @keys, align 4
  %196 = load i32, i32* @F_GNAME, align 4
  %197 = load i32, i32* @F_GID, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %22, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %229, label %206

206:                                              ; preds = %201, %194
  %207 = load i32, i32* @keys, align 4
  %208 = load i32, i32* @F_MODE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %24, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %229, label %216

216:                                              ; preds = %211, %206
  %217 = load i32, i32* @keys, align 4
  %218 = load i32, i32* @F_FLAGS, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %25, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %229, label %226

226:                                              ; preds = %221, %216
  %227 = load i32, i32* @statd.first, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %359

229:                                              ; preds = %226, %221, %211, %201, %189
  store i32 0, i32* @statd.first, align 4
  %230 = load i64, i64* @flavor, align 8
  %231 = load i64, i64* @F_NETBSD6, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load i64, i64* @dflag, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32*, i32** %9, align 8
  %238 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %242

239:                                              ; preds = %233, %229
  %240 = load i32*, i32** %9, align 8
  %241 = call i32 (i32*, i8*, ...) @fprintf(i32* %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, i32* @keys, align 4
  %244 = load i32, i32* @F_UID, align 4
  %245 = load i32, i32* @F_UNAME, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %280

249:                                              ; preds = %242
  %250 = load i32, i32* @keys, align 4
  %251 = load i32, i32* @F_UNAME, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = load i32, i32* %23, align 4
  %256 = call i8* @user_from_uid(i32 %255, i32 1)
  store i8* %256, i8** %21, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load i32*, i32** %9, align 8
  %260 = load i8*, i8** %21, align 8
  %261 = call i32 (i32*, i8*, ...) @fprintf(i32* %259, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %260)
  br label %262

262:                                              ; preds = %258, %254, %249
  %263 = load i32, i32* @keys, align 4
  %264 = load i32, i32* @F_UID, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %275, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* @keys, align 4
  %269 = load i32, i32* @F_UNAME, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load i8*, i8** %21, align 8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %272, %262
  %276 = load i32*, i32** %9, align 8
  %277 = load i32, i32* %23, align 4
  %278 = call i32 (i32*, i8*, ...) @fprintf(i32* %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %275, %272, %267
  br label %280

280:                                              ; preds = %279, %242
  %281 = load i32, i32* @keys, align 4
  %282 = load i32, i32* @F_GID, align 4
  %283 = load i32, i32* @F_GNAME, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %318

287:                                              ; preds = %280
  %288 = load i32, i32* @keys, align 4
  %289 = load i32, i32* @F_GNAME, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load i32, i32* %22, align 4
  %294 = call i8* @group_from_gid(i32 %293, i32 1)
  store i8* %294, i8** %21, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i32*, i32** %9, align 8
  %298 = load i8*, i8** %21, align 8
  %299 = call i32 (i32*, i8*, ...) @fprintf(i32* %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %298)
  br label %300

300:                                              ; preds = %296, %292, %287
  %301 = load i32, i32* @keys, align 4
  %302 = load i32, i32* @F_GID, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %300
  %306 = load i32, i32* @keys, align 4
  %307 = load i32, i32* @F_GNAME, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %305
  %311 = load i8*, i8** %21, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %310, %300
  %314 = load i32*, i32** %9, align 8
  %315 = load i32, i32* %22, align 4
  %316 = call i32 (i32*, i8*, ...) @fprintf(i32* %314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %313, %310, %305
  br label %318

318:                                              ; preds = %317, %280
  %319 = load i32, i32* @keys, align 4
  %320 = load i32, i32* @F_MODE, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = load i32*, i32** %9, align 8
  %325 = load i32, i32* %24, align 4
  %326 = call i32 (i32*, i8*, ...) @fprintf(i32* %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %323, %318
  %328 = load i32, i32* @keys, align 4
  %329 = load i32, i32* @F_NLINK, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load i32*, i32** %9, align 8
  %334 = call i32 (i32*, i8*, ...) @fprintf(i32* %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %335

335:                                              ; preds = %332, %327
  %336 = load i32, i32* @keys, align 4
  %337 = load i32, i32* @F_FLAGS, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335
  %341 = load i32, i32* %25, align 4
  %342 = call i8* @flags_to_string(i32 %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %342, i8** %36, align 8
  %343 = load i32*, i32** %9, align 8
  %344 = load i8*, i8** %36, align 8
  %345 = call i32 (i32*, i8*, ...) @fprintf(i32* %343, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %344)
  %346 = load i8*, i8** %36, align 8
  %347 = call i32 @free(i8* %346)
  br label %348

348:                                              ; preds = %340, %335
  %349 = load i32*, i32** %9, align 8
  %350 = call i32 (i32*, i8*, ...) @fprintf(i32* %349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %351 = load i32, i32* %23, align 4
  %352 = load i32*, i32** %12, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i32, i32* %22, align 4
  %354 = load i32*, i32** %13, align 8
  store i32 %353, i32* %354, align 4
  %355 = load i32, i32* %24, align 4
  %356 = load i32*, i32** %14, align 8
  store i32 %355, i32* %356, align 4
  %357 = load i32, i32* %25, align 4
  %358 = load i32*, i32** %15, align 8
  store i32 %357, i32* %358, align 4
  br label %359

359:                                              ; preds = %348, %226
  store i32 0, i32* %8, align 4
  store i32 1, i32* %35, align 4
  br label %360

360:                                              ; preds = %359, %70
  %361 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %8, align 4
  ret i32 %362
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @fts_children(i32*, i32) #2

declare dso_local i32 @mtree_err(i8*, i32, i32) #2

declare dso_local i32 @RP(%struct.TYPE_7__*) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i8* @user_from_uid(i32, i32) #2

declare dso_local i8* @group_from_gid(i32, i32) #2

declare dso_local i8* @flags_to_string(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
