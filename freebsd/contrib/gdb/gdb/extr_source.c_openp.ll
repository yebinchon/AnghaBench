; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_openp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_openp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DIRNAME_SEPARATOR = common dso_local global i32 0, align 4
@current_directory = common dso_local global i8* null, align 8
@SLASH_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openp(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %25

25:                                               ; preds = %24, %6
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @IS_ABSOLUTE_PATH(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @is_regular_file(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = call i8* @alloca(i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i8*, i32, ...) @open(i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %230

51:                                               ; preds = %36
  br label %53

52:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %51
  store i32 0, i32* %19, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @IS_DIR_SEPARATOR(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %230

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %54

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %28
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @IS_DIR_SEPARATOR(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %76
  %89 = phi i1 [ false, %76 ], [ %87, %82 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %9, align 8
  br label %76

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = add nsw i32 %95, %97
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i8* @alloca(i32 %100)
  store i8* %101, i8** %14, align 8
  store i32 -1, i32* %13, align 4
  %102 = load i8*, i8** %7, align 8
  store i8* %102, i8** %15, align 8
  br label %103

103:                                              ; preds = %227, %93
  %104 = load i8*, i8** %15, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %229

106:                                              ; preds = %103
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* @DIRNAME_SEPARATOR, align 4
  %109 = call i8* @strchr(i8* %107, i32 %108)
  store i8* %109, i8** %16, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %17, align 4
  br label %122

119:                                              ; preds = %106
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @strlen(i8* %120)
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %119, %112
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %168

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 36
  br i1 %130, label %131, label %168

131:                                              ; preds = %125
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 99
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = load i8*, i8** %15, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 119
  br i1 %142, label %143, label %168

143:                                              ; preds = %137
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 100
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load i8*, i8** @current_directory, align 8
  %151 = call i32 @strlen(i8* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = add nsw i32 %152, %154
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i32, i32* %20, align 4
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i8* @alloca(i32 %162)
  store i8* %163, i8** %14, align 8
  br label %164

164:                                              ; preds = %160, %149
  %165 = load i8*, i8** %14, align 8
  %166 = load i8*, i8** @current_directory, align 8
  %167 = call i32 @strcpy(i8* %165, i8* %166)
  br label %177

168:                                              ; preds = %143, %137, %131, %125, %122
  %169 = load i8*, i8** %14, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @strncpy(i8* %169, i8* %170, i32 %171)
  %173 = load i8*, i8** %14, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %168, %164
  br label %178

178:                                              ; preds = %192, %177
  %179 = load i32, i32* %17, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load i8*, i8** %14, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @IS_DIR_SEPARATOR(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %181, %178
  %191 = phi i1 [ false, %178 ], [ %189, %181 ]
  br i1 %191, label %192, label %198

192:                                              ; preds = %190
  %193 = load i8*, i8** %14, align 8
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 0, i8* %197, align 1
  br label %178

198:                                              ; preds = %190
  %199 = load i8*, i8** %14, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8*, i8** @SLASH_STRING, align 8
  %204 = call i32 @strcat(i8* %202, i8* %203)
  %205 = load i8*, i8** %14, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 @strcat(i8* %205, i8* %206)
  %208 = load i8*, i8** %14, align 8
  %209 = call i64 @is_regular_file(i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %198
  %212 = load i8*, i8** %14, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 (i8*, i32, ...) @open(i8* %212, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %229

218:                                              ; preds = %211
  br label %219

219:                                              ; preds = %218, %198
  br label %220

220:                                              ; preds = %219
  %221 = load i8*, i8** %16, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** %16, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  br label %227

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %223
  %228 = phi i8* [ %225, %223 ], [ null, %226 ]
  store i8* %228, i8** %15, align 8
  br label %103

229:                                              ; preds = %217, %103
  br label %230

230:                                              ; preds = %229, %69, %50
  %231 = load i8**, i8*** %12, align 8
  %232 = icmp ne i8** %231, null
  br i1 %232, label %233, label %271

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i8**, i8*** %12, align 8
  store i8* null, i8** %237, align 8
  br label %270

238:                                              ; preds = %233
  %239 = load i8*, i8** %14, align 8
  %240 = call i64 @IS_ABSOLUTE_PATH(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i8*, i8** %14, align 8
  %244 = call i8* @xfullpath(i8* %243)
  %245 = load i8**, i8*** %12, align 8
  store i8* %244, i8** %245, align 8
  br label %269

246:                                              ; preds = %238
  %247 = load i8*, i8** @current_directory, align 8
  %248 = load i8*, i8** @current_directory, align 8
  %249 = load i8*, i8** @current_directory, align 8
  %250 = call i32 @strlen(i8* %249)
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %248, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = call i64 @IS_DIR_SEPARATOR(i8 signext %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %246
  br label %260

258:                                              ; preds = %246
  %259 = load i8*, i8** @SLASH_STRING, align 8
  br label %260

260:                                              ; preds = %258, %257
  %261 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %257 ], [ %259, %258 ]
  %262 = load i8*, i8** %14, align 8
  %263 = call i8* @concat(i8* %247, i8* %261, i8* %262, i32* null)
  store i8* %263, i8** %21, align 8
  %264 = load i8*, i8** %21, align 8
  %265 = call i8* @xfullpath(i8* %264)
  %266 = load i8**, i8*** %12, align 8
  store i8* %265, i8** %266, align 8
  %267 = load i8*, i8** %21, align 8
  %268 = call i32 @xfree(i8* %267)
  br label %269

269:                                              ; preds = %260, %242
  br label %270

270:                                              ; preds = %269, %236
  br label %271

271:                                              ; preds = %270, %230
  %272 = load i32, i32* %13, align 4
  ret i32 %272
}

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i64 @is_regular_file(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @xfullpath(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
