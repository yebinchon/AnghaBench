; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_verify.c_miss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_verify.c_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.stat = type { i32 }

@F_OPT = common dso_local global i32 0, align 4
@F_VISIT = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@qflag = common dso_local global i64 0, align 8
@path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s missing\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@uflag = common dso_local global i64 0, align 8
@mtree_Wflag = common dso_local global i64 0, align 8
@F_UID = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c" (%s not created: user not specified)\00", align 1
@F_GID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c" (%s not created: group not specified)\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c" (%s not created: mode not specified)\00", align 1
@F_DEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c" (%s not created: device not specified)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" (%s not created: %s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@F_SLINK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c" (%s not created: link not specified)\0A\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c" (not created: %s)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"can't create create %s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" (created)\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%s: user/group/mode not modified: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: warning: file mode %snot set\0A\00", align 1
@F_FLAGS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"and file flags \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s: permissions not set: %s\0A\00", align 1
@SP_FLGS = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @miss(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %10

10:                                               ; preds = %342, %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %346

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @F_OPT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @F_VISIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %342

28:                                               ; preds = %20, %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i64, i64* @dflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @F_VISIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %33
  br label %342

44:                                               ; preds = %36, %28
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcpy(i8* %45, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @F_VISIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %44
  %57 = load i64, i64* @qflag, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i8*, i8** @path, align 8
  %61 = call i64 @stat(i8* %60, %struct.stat* %9)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @F_VISIT, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %77

74:                                               ; preds = %63, %59, %56
  %75 = load i8*, i8** @path, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %85 [
    i32 131, label %82
    i32 130, label %82
    i32 129, label %83
    i32 128, label %84
  ]

82:                                               ; preds = %78, %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %87

83:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %87

84:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %87

85:                                               ; preds = %78
  %86 = call i32 @putchar(i8 signext 10)
  br label %342

87:                                               ; preds = %84, %83, %82
  store i32 0, i32* %5, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @F_VISIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %232, label %94

94:                                               ; preds = %87
  %95 = load i64, i64* @uflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %232

97:                                               ; preds = %94
  %98 = load i64, i64* @mtree_Wflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %97
  br label %141

106:                                              ; preds = %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @F_UID, align 4
  %111 = load i32, i32* @F_UNAME, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  br label %231

118:                                              ; preds = %106
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @F_GID, align 4
  %123 = load i32, i32* @F_GNAME, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %230

130:                                              ; preds = %118
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @F_MODE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  br label %229

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %105
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %222 [
    i32 131, label %145
    i32 130, label %145
    i32 128, label %182
    i32 129, label %207
  ]

145:                                              ; preds = %141, %141
  %146 = load i64, i64* @mtree_Wflag, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %342

149:                                              ; preds = %145
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @F_DEV, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %157)
  br label %181

159:                                              ; preds = %149
  %160 = load i8*, i8** @path, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @nodetoino(i32 %166)
  %168 = or i32 %163, %167
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @mknod(i8* %160, i32 %168, i32 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %179

174:                                              ; preds = %159
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* @errno, align 4
  %177 = call i8* @strerror(i32 %176)
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %175, i8* %177)
  br label %180

179:                                              ; preds = %159
  store i32 1, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %174
  br label %181

181:                                              ; preds = %180, %156
  br label %228

182:                                              ; preds = %141
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @F_SLINK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %190)
  br label %206

192:                                              ; preds = %182
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load i8*, i8** @path, align 8
  %197 = call i32 @symlink(i32 %195, i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load i8*, i8** %7, align 8
  %201 = load i32, i32* @errno, align 4
  %202 = call i8* @strerror(i32 %201)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %200, i8* %202)
  br label %205

204:                                              ; preds = %192
  store i32 1, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %199
  br label %206

206:                                              ; preds = %205, %189
  br label %228

207:                                              ; preds = %141
  %208 = load i8*, i8** @path, align 8
  %209 = load i32, i32* @S_IRWXU, align 4
  %210 = load i32, i32* @S_IRWXG, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @S_IRWXO, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @mkdir(i8* %208, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* @errno, align 4
  %218 = call i8* @strerror(i32 %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %218)
  br label %221

220:                                              ; preds = %207
  store i32 1, i32* %5, align 4
  br label %221

221:                                              ; preds = %220, %216
  br label %228

222:                                              ; preds = %141
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @nodetype(i32 %225)
  %227 = call i32 @mtree_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %222, %221, %206, %181
  br label %229

229:                                              ; preds = %228, %137
  br label %230

230:                                              ; preds = %229, %127
  br label %231

231:                                              ; preds = %230, %115
  br label %232

232:                                              ; preds = %231, %94, %87
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %232
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 129
  br i1 %241, label %242, label %269

242:                                              ; preds = %237
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @F_VISIT, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %242
  %250 = call i32 @putchar(i8 signext 10)
  br label %251

251:                                              ; preds = %249, %242
  %252 = load i8*, i8** %4, align 8
  store i8* %252, i8** %6, align 8
  br label %253

253:                                              ; preds = %258, %251
  %254 = load i8*, i8** %6, align 8
  %255 = load i8, i8* %254, align 1
  %256 = icmp ne i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  br label %258

258:                                              ; preds = %257
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %6, align 8
  br label %253

261:                                              ; preds = %253
  %262 = load i8*, i8** %6, align 8
  store i8 47, i8* %262, align 1
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 6
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  call void @miss(%struct.TYPE_3__* %265, i8* %267)
  %268 = load i8*, i8** %6, align 8
  store i8 0, i8* %268, align 1
  br label %271

269:                                              ; preds = %237
  %270 = call i32 @putchar(i8 signext 10)
  br label %271

271:                                              ; preds = %269, %261
  %272 = load i32, i32* %5, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i64, i64* @mtree_Wflag, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274, %271
  br label %342

278:                                              ; preds = %274
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @F_UID, align 4
  %283 = load i32, i32* @F_UNAME, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %321

287:                                              ; preds = %278
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @F_GID, align 4
  %292 = load i32, i32* @F_GNAME, align 4
  %293 = or i32 %291, %292
  %294 = and i32 %290, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %321

296:                                              ; preds = %287
  %297 = load i8*, i8** @path, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @lchown(i8* %297, i32 %300, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %296
  %307 = load i8*, i8** @path, align 8
  %308 = load i32, i32* @errno, align 4
  %309 = call i8* @strerror(i32 %308)
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %307, i8* %309)
  %311 = load i8*, i8** @path, align 8
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @F_FLAGS, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %311, i8* %319)
  br label %342

321:                                              ; preds = %296, %287, %278
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @F_MODE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %341

328:                                              ; preds = %321
  %329 = load i8*, i8** @path, align 8
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i64 @lchmod(i8* %329, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %328
  %336 = load i8*, i8** @path, align 8
  %337 = load i32, i32* @errno, align 4
  %338 = call i8* @strerror(i32 %337)
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %336, i8* %338)
  br label %340

340:                                              ; preds = %335, %328
  br label %341

341:                                              ; preds = %340, %321
  br label %342

342:                                              ; preds = %341, %306, %277, %148, %85, %43, %27
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 10
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %344, align 8
  store %struct.TYPE_3__* %345, %struct.TYPE_3__** %3, align 8
  br label %10

346:                                              ; preds = %10
  ret void
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @mknod(i8*, i32, i32) #1

declare dso_local i32 @nodetoino(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @symlink(i32, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @mtree_err(i8*, i32) #1

declare dso_local i32 @nodetype(i32) #1

declare dso_local i64 @lchown(i8*, i32, i32) #1

declare dso_local i64 @lchmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
