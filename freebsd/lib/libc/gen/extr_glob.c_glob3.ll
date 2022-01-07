; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob3.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32*)*, i64, i32* }
%struct.glob_limit = type { i32 }
%struct.dirent = type { i8* }

@MAXPATHLEN = common dso_local global i64 0, align 8
@MB_LEN_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_READDIR = common dso_local global i64 0, align 8
@DOT = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__*, %struct.glob_limit*)* @glob3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob3(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_6__* %5, %struct.glob_limit* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.glob_limit*, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.dirent* (i32*)*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8, align 1
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store %struct.glob_limit* %6, %struct.glob_limit** %15, align 8
  %31 = load i64, i64* @MAXPATHLEN, align 8
  %32 = load i64, i64* @MB_LEN_MAX, align 8
  %33 = add nsw i64 %31, %32
  %34 = sub nsw i64 %33, 1
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %22, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %23, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* @E2BIG, align 4
  store i32 %41, i32* @errno, align 4
  %42 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %42, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

43:                                               ; preds = %7
  %44 = load i8, i8* @EOS, align 1
  %45 = load i8*, i8** %10, align 8
  store i8 %44, i8* %45, align 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i8*, i8** %9, align 8
  %52 = trunc i64 %34 to i32
  %53 = call i64 @g_Ctoc(i8* %51, i8* %36, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @E2BIG, align 4
  store i32 %56, i32* @errno, align 4
  %57 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %57, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

58:                                               ; preds = %50, %43
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %20, align 4
  store i32 0, i32* @errno, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = call i32* @g_opendir(i8* %60, %struct.TYPE_6__* %61)
  store i32* %62, i32** %17, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @ENOTDIR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @err_aborted(%struct.TYPE_6__* %74, i32 %75, i8* %36)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* @errno, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* %18, align 4
  store i32 %82, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

83:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.dirent* (i32*)*
  store %struct.dirent* (i32*)* %94, %struct.dirent* (i32*)** %24, align 8
  br label %96

95:                                               ; preds = %83
  store %struct.dirent* (i32*)* @readdir, %struct.dirent* (i32*)** %24, align 8
  br label %96

96:                                               ; preds = %95, %90
  store i32 0, i32* @errno, align 4
  br label %97

97:                                               ; preds = %210, %190, %134, %96
  %98 = load %struct.dirent* (i32*)*, %struct.dirent* (i32*)** %24, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = call %struct.dirent* %98(i32* %99)
  store %struct.dirent* %100, %struct.dirent** %16, align 8
  %101 = icmp ne %struct.dirent* %100, null
  br i1 %101, label %102, label %211

102:                                              ; preds = %97
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GLOB_LIMIT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load %struct.glob_limit*, %struct.glob_limit** %15, align 8
  %111 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = sext i32 %112 to i64
  %115 = load i64, i64* @GLOB_LIMIT_READDIR, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @E2BIG, align 4
  store i32 %118, i32* @errno, align 4
  %119 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %119, i32* %18, align 4
  br label %211

120:                                              ; preds = %109, %102
  %121 = load %struct.dirent*, %struct.dirent** %16, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load i8*, i8** %12, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @UNPROT(i8 zeroext %130)
  %132 = load i64, i64* @DOT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* @errno, align 4
  br label %97

135:                                              ; preds = %128, %120
  %136 = call i32 @memset(i32* %30, i32 0, i32 4)
  %137 = load i8*, i8** %10, align 8
  store i8* %137, i8** %27, align 8
  %138 = load %struct.dirent*, %struct.dirent** %16, align 8
  %139 = getelementptr inbounds %struct.dirent, %struct.dirent* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %26, align 8
  store i32 1, i32* %19, align 4
  br label %141

141:                                              ; preds = %167, %135
  %142 = load i8*, i8** %27, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ule i8* %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load i8*, i8** %26, align 8
  %147 = load i64, i64* @MB_LEN_MAX, align 8
  %148 = call i64 @mbrtowc(i8* %28, i8* %146, i64 %147, i32* %30)
  store i64 %148, i64* %29, align 8
  %149 = load i64, i64* %29, align 8
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %29, align 8
  %153 = icmp eq i64 %152, -2
  br i1 %153, label %154, label %158

154:                                              ; preds = %151, %145
  %155 = load i8*, i8** %26, align 8
  %156 = load i8, i8* %155, align 1
  store i8 %156, i8* %28, align 1
  store i64 1, i64* %29, align 8
  %157 = call i32 @memset(i32* %30, i32 0, i32 4)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i8, i8* %28, align 1
  %160 = load i8*, i8** %27, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %27, align 8
  store i8 %159, i8* %160, align 1
  %162 = zext i8 %159 to i32
  %163 = load i8, i8* @EOS, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 0, i32* %19, align 4
  br label %171

167:                                              ; preds = %158
  %168 = load i64, i64* %29, align 8
  %169 = load i8*, i8** %26, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  store i8* %170, i8** %26, align 8
  br label %141

171:                                              ; preds = %166, %141
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %176 = load i32, i32* @ENAMETOOLONG, align 4
  %177 = call i32 @err_aborted(%struct.TYPE_6__* %175, i32 %176, i8* %36)
  store i32 %177, i32* %18, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %180, i32* @errno, align 4
  br label %211

181:                                              ; preds = %174, %171
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i8*, i8** %10, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @match(i8* %185, i8* %186, i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %184, %181
  %191 = load i8, i8* @EOS, align 1
  %192 = load i8*, i8** %10, align 8
  store i8 %191, i8* %192, align 1
  store i32 0, i32* @errno, align 4
  br label %97

193:                                              ; preds = %184
  %194 = load i32, i32* @errno, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* %20, align 4
  store i32 %197, i32* @errno, align 4
  br label %198

198:                                              ; preds = %196, %193
  %199 = load i8*, i8** %9, align 8
  %200 = load i8*, i8** %27, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %27, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %205 = load %struct.glob_limit*, %struct.glob_limit** %15, align 8
  %206 = call i32 @glob2(i8* %199, i8* %201, i8* %202, i8* %203, %struct.TYPE_6__* %204, %struct.glob_limit* %205)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  br label %211

210:                                              ; preds = %198
  store i32 0, i32* @errno, align 4
  br label %97

211:                                              ; preds = %209, %179, %117, %97
  %212 = load i32, i32* @errno, align 4
  store i32 %212, i32* %21, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32 (i32*)*, i32 (i32*)** %221, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 %222(i32* %223)
  br label %228

225:                                              ; preds = %211
  %226 = load i32*, i32** %17, align 8
  %227 = call i32 @closedir(i32* %226)
  br label %228

228:                                              ; preds = %225, %219
  %229 = load i32, i32* %21, align 4
  store i32 %229, i32* @errno, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %18, align 4
  store i32 %233, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

234:                                              ; preds = %228
  %235 = load %struct.dirent*, %struct.dirent** %16, align 8
  %236 = icmp eq %struct.dirent* %235, null
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load i32, i32* @errno, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %242 = load i32, i32* @errno, align 4
  %243 = call i32 @err_aborted(%struct.TYPE_6__* %241, i32 %242, i8* %36)
  store i32 %243, i32* %18, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = load i32, i32* %18, align 4
  store i32 %246, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

247:                                              ; preds = %240, %237, %234
  %248 = load i32, i32* @errno, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i32, i32* %20, align 4
  store i32 %251, i32* @errno, align 4
  br label %252

252:                                              ; preds = %250, %247
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %253

253:                                              ; preds = %252, %245, %232, %81, %72, %55, %40
  %254 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %8, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @g_Ctoc(i8*, i8*, i32) #2

declare dso_local i32* @g_opendir(i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @err_aborted(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @UNPROT(i8 zeroext) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @mbrtowc(i8*, i8*, i64, i32*) #2

declare dso_local i32 @match(i8*, i8*, i8*) #2

declare dso_local i32 @glob2(i8*, i8*, i8*, i8*, %struct.TYPE_6__*, %struct.glob_limit*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
