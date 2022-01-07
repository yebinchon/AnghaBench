; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_spec.c_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i8*, i32, %struct.TYPE_4__, i32*, i32*, i32, i32*, i32*, i32, i32, i32*, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"= \09\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid keyword `all'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"missing value\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid checksum `%s'\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"invalid flag `%s'\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"invalid gid `%s'\00", align 1
@mtree_Wflag = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"unknown group `%s'\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"cannot set file mode `%s' (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"invalid link count `%s'\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"invalid size `%s'\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"strunvis failed on `%s'\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c",%s,\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"invalid time `%s'\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"invalid uid `%s'\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"unknown user `%s'\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"set(): unsupported key type 0x%x (INTERNAL ERROR)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  br label %15

15:                                               ; preds = %427, %39, %23, %2
  %16 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %428

18:                                               ; preds = %15
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %15

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @parsekey(i8* %31, i32* %6)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %15

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %51, %40
  %42 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %41

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %424 [
    i32 147, label %59
    i32 146, label %71
    i32 145, label %76
    i32 144, label %93
    i32 143, label %107
    i32 142, label %122
    i32 141, label %149
    i32 140, label %165
    i32 139, label %177
    i32 138, label %204
    i32 134, label %231
    i32 133, label %243
    i32 132, label %263
    i32 131, label %281
    i32 130, label %309
    i32 129, label %314
    i32 128, label %328
    i32 137, label %343
    i32 136, label %370
    i32 135, label %397
  ]

59:                                               ; preds = %57
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strtoul(i8* %60, i8** %13, i32 10)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %427

71:                                               ; preds = %57
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @parsedev(i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 17
  store i32 %73, i32* %75, align 4
  br label %427

76:                                               ; preds = %57
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 16
  store i32 0, i32* %82, align 8
  br label %92

83:                                               ; preds = %76
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 16
  %86 = call i32 @string_to_flags(i8** %11, i32* %85, i32* null)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %80
  br label %427

93:                                               ; preds = %57
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @strtoul(i8* %94, i8** %13, i32 10)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 15
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %93
  br label %427

107:                                              ; preds = %57
  %108 = load i32, i32* @mtree_Wflag, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %427

111:                                              ; preds = %107
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @gid_from_group(i8* %112, i8** %8)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 15
  store i8* %119, i8** %121, align 8
  br label %427

122:                                              ; preds = %57
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 48
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 120
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  store i8* %136, i8** %12, align 8
  br label %139

137:                                              ; preds = %128, %122
  %138 = load i8*, i8** %11, align 8
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i8*, i8** %12, align 8
  %141 = call i8* @strdup(i8* %140)
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 14
  store i32* %142, i32** %144, align 8
  %145 = icmp eq i32* %142, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %139
  br label %427

149:                                              ; preds = %57
  %150 = load i8*, i8** %11, align 8
  %151 = call i8* @setmode(i8* %150)
  store i8* %151, i8** %14, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* @errno, align 4
  %156 = call i32 @strerror(i32 %155)
  %157 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %154, i32 %156)
  br label %158

158:                                              ; preds = %153, %149
  %159 = load i8*, i8** %14, align 8
  %160 = call i32 @getmode(i8* %159, i32 0)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 13
  store i32 %160, i32* %162, align 4
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @free(i8* %163)
  br label %427

165:                                              ; preds = %57
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @strtoul(i8* %166, i8** %13, i32 10)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 12
  store i32 %167, i32* %169, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %173, %165
  br label %427

177:                                              ; preds = %57
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 48
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 120
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  store i8* %191, i8** %12, align 8
  br label %194

192:                                              ; preds = %183, %177
  %193 = load i8*, i8** %11, align 8
  store i8* %193, i8** %12, align 8
  br label %194

194:                                              ; preds = %192, %189
  %195 = load i8*, i8** %12, align 8
  %196 = call i8* @strdup(i8* %195)
  %197 = bitcast i8* %196 to i32*
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 11
  store i32* %197, i32** %199, align 8
  %200 = icmp eq i32* %197, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %194
  br label %427

204:                                              ; preds = %57
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 48
  br i1 %209, label %210, label %219

210:                                              ; preds = %204
  %211 = load i8*, i8** %11, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 120
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i8*, i8** %11, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  store i8* %218, i8** %12, align 8
  br label %221

219:                                              ; preds = %210, %204
  %220 = load i8*, i8** %11, align 8
  store i8* %220, i8** %12, align 8
  br label %221

221:                                              ; preds = %219, %216
  %222 = load i8*, i8** %12, align 8
  %223 = call i8* @strdup(i8* %222)
  %224 = bitcast i8* %223 to i32*
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 10
  store i32* %224, i32** %226, align 8
  %227 = icmp eq i32* %224, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %221
  br label %427

231:                                              ; preds = %57
  %232 = load i8*, i8** %11, align 8
  %233 = call i32 @strtoll(i8* %232, i8** %13, i32 10)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i8, i8* %236, align 1
  %238 = icmp ne i8 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i8*, i8** %11, align 8
  %241 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %240)
  br label %242

242:                                              ; preds = %239, %231
  br label %427

243:                                              ; preds = %57
  %244 = load i8*, i8** %11, align 8
  %245 = call i8* @strdup(i8* %244)
  %246 = bitcast i8* %245 to i32*
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 8
  store i32* %246, i32** %248, align 8
  %249 = icmp eq i32* %246, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %243
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 8
  %255 = load i32*, i32** %254, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = call i32 @strunvis(i32* %255, i8* %256)
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = load i8*, i8** %11, align 8
  %261 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %260)
  br label %262

262:                                              ; preds = %259, %252
  br label %427

263:                                              ; preds = %57
  %264 = load i8*, i8** %11, align 8
  %265 = call i32 @strlen(i8* %264)
  %266 = add nsw i32 %265, 3
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32* @malloc(i32 %267)
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 7
  store i32* %268, i32** %270, align 8
  %271 = icmp eq i32* %268, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %263
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 7
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i8*, i8** %11, align 8
  %280 = call i32 @snprintf(i32* %277, i32 %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %279)
  br label %427

281:                                              ; preds = %57
  %282 = load i8*, i8** %11, align 8
  %283 = call i32 @strtoll(i8* %282, i8** %13, i32 10)
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 6
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  store i32 %283, i32* %286, align 4
  %287 = load i8*, i8** %13, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 46
  br i1 %290, label %291, label %294

291:                                              ; preds = %281
  %292 = load i8*, i8** %11, align 8
  %293 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %292)
  br label %294

294:                                              ; preds = %291, %281
  %295 = load i8*, i8** %13, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  store i8* %296, i8** %11, align 8
  %297 = load i8*, i8** %11, align 8
  %298 = call i32 @strtol(i8* %297, i8** %13, i32 10)
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  store i32 %298, i32* %301, align 4
  %302 = load i8*, i8** %13, align 8
  %303 = load i8, i8* %302, align 1
  %304 = icmp ne i8 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %294
  %306 = load i8*, i8** %11, align 8
  %307 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %305, %294
  br label %427

309:                                              ; preds = %57
  %310 = load i8*, i8** %11, align 8
  %311 = call i32 @parsetype(i8* %310)
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 5
  store i32 %311, i32* %313, align 8
  br label %427

314:                                              ; preds = %57
  %315 = load i8*, i8** %11, align 8
  %316 = call i32 @strtoul(i8* %315, i8** %13, i32 10)
  %317 = sext i32 %316 to i64
  %318 = inttoptr i64 %317 to i8*
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 4
  store i8* %318, i8** %320, align 8
  %321 = load i8*, i8** %13, align 8
  %322 = load i8, i8* %321, align 1
  %323 = icmp ne i8 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %314
  %325 = load i8*, i8** %11, align 8
  %326 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* %325)
  br label %327

327:                                              ; preds = %324, %314
  br label %427

328:                                              ; preds = %57
  %329 = load i32, i32* @mtree_Wflag, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  br label %427

332:                                              ; preds = %328
  %333 = load i8*, i8** %11, align 8
  %334 = call i32 @uid_from_user(i8* %333, i8** %9)
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load i8*, i8** %11, align 8
  %338 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %337)
  br label %339

339:                                              ; preds = %336, %332
  %340 = load i8*, i8** %9, align 8
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 4
  store i8* %340, i8** %342, align 8
  br label %427

343:                                              ; preds = %57
  %344 = load i8*, i8** %11, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 48
  br i1 %348, label %349, label %358

349:                                              ; preds = %343
  %350 = load i8*, i8** %11, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 1
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 120
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = load i8*, i8** %11, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 2
  store i8* %357, i8** %12, align 8
  br label %360

358:                                              ; preds = %349, %343
  %359 = load i8*, i8** %11, align 8
  store i8* %359, i8** %12, align 8
  br label %360

360:                                              ; preds = %358, %355
  %361 = load i8*, i8** %12, align 8
  %362 = call i8* @strdup(i8* %361)
  %363 = bitcast i8* %362 to i32*
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 3
  store i32* %363, i32** %365, align 8
  %366 = icmp eq i32* %363, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %360
  %368 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %360
  br label %427

370:                                              ; preds = %57
  %371 = load i8*, i8** %11, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 48
  br i1 %375, label %376, label %385

376:                                              ; preds = %370
  %377 = load i8*, i8** %11, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = icmp eq i32 %380, 120
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load i8*, i8** %11, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 2
  store i8* %384, i8** %12, align 8
  br label %387

385:                                              ; preds = %376, %370
  %386 = load i8*, i8** %11, align 8
  store i8* %386, i8** %12, align 8
  br label %387

387:                                              ; preds = %385, %382
  %388 = load i8*, i8** %12, align 8
  %389 = call i8* @strdup(i8* %388)
  %390 = bitcast i8* %389 to i32*
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 2
  store i32* %390, i32** %392, align 8
  %393 = icmp eq i32* %390, null
  br i1 %393, label %394, label %396

394:                                              ; preds = %387
  %395 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %396

396:                                              ; preds = %394, %387
  br label %427

397:                                              ; preds = %57
  %398 = load i8*, i8** %11, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 0
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp eq i32 %401, 48
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load i8*, i8** %11, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 1
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %407, 120
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load i8*, i8** %11, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 2
  store i8* %411, i8** %12, align 8
  br label %414

412:                                              ; preds = %403, %397
  %413 = load i8*, i8** %11, align 8
  store i8* %413, i8** %12, align 8
  br label %414

414:                                              ; preds = %412, %409
  %415 = load i8*, i8** %12, align 8
  %416 = call i8* @strdup(i8* %415)
  %417 = bitcast i8* %416 to i32*
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 1
  store i32* %417, i32** %419, align 8
  %420 = icmp eq i32* %417, null
  br i1 %420, label %421, label %423

421:                                              ; preds = %414
  %422 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %414
  br label %427

424:                                              ; preds = %57
  %425 = load i32, i32* %5, align 4
  %426 = call i32 (i8*, ...) @mtree_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %425)
  br label %427

427:                                              ; preds = %424, %423, %396, %369, %339, %331, %327, %309, %308, %274, %262, %242, %230, %203, %176, %158, %148, %118, %110, %106, %92, %71, %70
  br label %15

428:                                              ; preds = %15
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mtree_err(i8*, ...) #1

declare dso_local i32 @parsekey(i8*, i32*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @parsedev(i8*) #1

declare dso_local i32 @string_to_flags(i8**, i32*, i32*) #1

declare dso_local i32 @gid_from_group(i8*, i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @setmode(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getmode(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @strunvis(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @parsetype(i8*) #1

declare dso_local i32 @uid_from_user(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
