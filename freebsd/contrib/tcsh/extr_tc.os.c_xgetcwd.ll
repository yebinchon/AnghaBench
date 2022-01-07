; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.os.c_xgetcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.os.c_xgetcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }
%struct.stat = type { i64, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"getcwd: Cannot stat \22/\22 (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"getcwd: Cannot stat \22.\22 (%s)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"getcwd: Cannot stat directory \22%s\22 (%s)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"getcwd: Cannot open directory \22%s\22 (%s)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"getcwd: Cannot find \22.\22 in \22..\22 (%s)\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xgetcwd(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = mul nsw i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %18, align 4
  %28 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %8)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @CGETS(i32 23, i32 23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 (i8*, i64, i32, i8*, ...) @xsnprintf(i8* %31, i64 %32, i32 %33, i8* %37)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

39:                                               ; preds = %2
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %23, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* @MAXPATHLEN, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %23, i64 %46
  store i8* %47, i8** %15, align 8
  %48 = load i32, i32* @MAXPATHLEN, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %27, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* @MAXPATHLEN, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %27, i64 %54
  store i8* %55, i8** %16, align 8
  store i8* %55, i8** %17, align 8
  %56 = call i32 @lstat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %9)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %67

58:                                               ; preds = %39
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @CGETS(i32 23, i32 24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (i8*, i64, i32, i8*, ...) @xsnprintf(i8* %59, i64 %60, i32 %61, i8* %65)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

67:                                               ; preds = %39
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = ptrtoint i8* %27 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8* @strnrcpy(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i8* %74, i8** %16, align 8
  br label %75

75:                                               ; preds = %237, %67
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @DEV_DEV_COMPARE(i32 %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 47
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %97

95:                                               ; preds = %88
  %96 = load i8*, i8** %15, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %94 ], [ %96, %95 ]
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @strncpy(i8* %89, i8* %98, i64 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %4, align 8
  store i8* %105, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

106:                                              ; preds = %81, %75
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 @stat(i8* %107, %struct.stat* %11)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @CGETS(i32 23, i32 25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* @errno, align 4
  %116 = call i32 @strerror(i32 %115)
  %117 = call i32 (i8*, i64, i32, i8*, ...) @xsnprintf(i8* %111, i64 %112, i32 %113, i8* %114, i32 %116)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

118:                                              ; preds = %106
  %119 = load i8*, i8** %16, align 8
  %120 = call i32* @opendir(i8* %119)
  store i32* %120, i32** %6, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i8*, i8** %4, align 8
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @CGETS(i32 23, i32 26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @strerror(i32 %127)
  %129 = call i32 (i8*, i64, i32, i8*, ...) @xsnprintf(i8* %123, i64 %124, i32 %125, i8* %126, i32 %128)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @DEV_DEV_COMPARE(i32 %132, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %130
  %138 = load i32*, i32** %6, align 8
  %139 = call %struct.dirent* @readdir(i32* %138)
  store %struct.dirent* %139, %struct.dirent** %7, align 8
  br label %140

140:                                              ; preds = %152, %137
  %141 = load %struct.dirent*, %struct.dirent** %7, align 8
  %142 = icmp ne %struct.dirent* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.dirent*, %struct.dirent** %7, align 8
  %145 = getelementptr inbounds %struct.dirent, %struct.dirent* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %155

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151
  %153 = load i32*, i32** %6, align 8
  %154 = call %struct.dirent* @readdir(i32* %153)
  store %struct.dirent* %154, %struct.dirent** %7, align 8
  br label %140

155:                                              ; preds = %150, %140
  br label %215

156:                                              ; preds = %130
  %157 = load i32*, i32** %6, align 8
  %158 = call %struct.dirent* @readdir(i32* %157)
  store %struct.dirent* %158, %struct.dirent** %7, align 8
  br label %159

159:                                              ; preds = %211, %156
  %160 = load %struct.dirent*, %struct.dirent** %7, align 8
  %161 = icmp ne %struct.dirent* %160, null
  br i1 %161, label %162, label %214

162:                                              ; preds = %159
  %163 = load %struct.dirent*, %struct.dirent** %7, align 8
  %164 = getelementptr inbounds %struct.dirent, %struct.dirent* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @ISDOT(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.dirent*, %struct.dirent** %7, align 8
  %170 = getelementptr inbounds %struct.dirent, %struct.dirent* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @ISDOTDOT(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168, %162
  br label %211

175:                                              ; preds = %168
  %176 = load i8*, i8** %17, align 8
  %177 = load %struct.dirent*, %struct.dirent** %7, align 8
  %178 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = sub i64 %26, 1
  %181 = getelementptr inbounds i8, i8* %27, i64 %180
  %182 = load i8*, i8** %17, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = call i32 @strncpy(i8* %176, i8* %179, i64 %185)
  %187 = load i8*, i8** %16, align 8
  %188 = call i32 @lstat(i8* %187, %struct.stat* %10)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %196

190:                                              ; preds = %175
  %191 = load i32, i32* %18, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32, i32* @errno, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %190
  br label %211

196:                                              ; preds = %175
  %197 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %198, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @DEV_DEV_COMPARE(i32 %204, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %214

210:                                              ; preds = %202, %196
  br label %211

211:                                              ; preds = %210, %195, %174
  %212 = load i32*, i32** %6, align 8
  %213 = call %struct.dirent* @readdir(i32* %212)
  store %struct.dirent* %213, %struct.dirent** %7, align 8
  br label %159

214:                                              ; preds = %209, %159
  br label %215

215:                                              ; preds = %214, %155
  %216 = load %struct.dirent*, %struct.dirent** %7, align 8
  %217 = icmp eq %struct.dirent* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = load i8*, i8** %4, align 8
  %220 = load i64, i64* %5, align 8
  %221 = call i32 @CGETS(i32 23, i32 27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = load i32, i32* %18, align 4
  br label %228

226:                                              ; preds = %218
  %227 = load i32, i32* @ENOENT, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = call i32 @strerror(i32 %229)
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i8*, i64, i32, i8*, ...) @xsnprintf(i8* %219, i64 %220, i32 %221, i8* %232)
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @closedir(i32* %234)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %19, align 4
  br label %267

236:                                              ; preds = %215
  store i32 0, i32* %18, align 4
  br label %237

237:                                              ; preds = %236
  %238 = bitcast %struct.stat* %9 to i8*
  %239 = bitcast %struct.stat* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 16, i1 false)
  %240 = load i8*, i8** %15, align 8
  %241 = load %struct.dirent*, %struct.dirent** %7, align 8
  %242 = getelementptr inbounds %struct.dirent, %struct.dirent* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = ptrtoint i8* %244 to i64
  %246 = ptrtoint i8* %23 to i64
  %247 = sub i64 %245, %246
  %248 = trunc i64 %247 to i32
  %249 = call i8* @strnrcpy(i8* %240, i8* %243, i32 %248)
  store i8* %249, i8** %15, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = load i8*, i8** %15, align 8
  %252 = ptrtoint i8* %251 to i64
  %253 = ptrtoint i8* %23 to i64
  %254 = sub i64 %252, %253
  %255 = trunc i64 %254 to i32
  %256 = call i8* @strnrcpy(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %255)
  store i8* %256, i8** %15, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = load i8*, i8** %16, align 8
  %259 = ptrtoint i8* %258 to i64
  %260 = ptrtoint i8* %27 to i64
  %261 = sub i64 %259, %260
  %262 = trunc i64 %261 to i32
  %263 = call i8* @strnrcpy(i8* %257, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  store i8* %263, i8** %16, align 8
  %264 = load i8*, i8** %17, align 8
  store i8 0, i8* %264, align 1
  %265 = load i32*, i32** %6, align 8
  %266 = call i32 @closedir(i32* %265)
  br label %75

267:                                              ; preds = %228, %122, %110, %97, %58, %30
  %268 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i8*, i8** %3, align 8
  ret i8* %269
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @xsnprintf(i8*, i64, i32, i8*, ...) #2

declare dso_local i32 @CGETS(i32, i32, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i8* @strnrcpy(i8*, i8*, i32) #2

declare dso_local i64 @DEV_DEV_COMPARE(i32, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @ISDOT(i8*) #2

declare dso_local i64 @ISDOTDOT(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
