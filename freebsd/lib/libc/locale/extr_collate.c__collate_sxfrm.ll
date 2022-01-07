; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_sxfrm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_sxfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@XFRM_BYTES = common dso_local global i32 0, align 4
@XFRM_SEP = common dso_local global i32 0, align 4
@DIRECTIVE_FORWARD = common dso_local global i32 0, align 4
@DIRECTIVE_UNDEFINED = common dso_local global i32 0, align 4
@DIRECTIVE_BACKWARD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DIRECTIVE_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COLLATE_MAX_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_collate_sxfrm(%struct.xlocale_collate* %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.xlocale_collate*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.xlocale_collate* %0, %struct.xlocale_collate** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** null, i8*** %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %27 = load i32, i32* @XFRM_BYTES, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %20, align 8
  %30 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  %31 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %32 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %22, align 4
  %36 = load i8**, i8*** %7, align 8
  %37 = call i32 @assert(i8** %36)
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %245, %4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %22, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %248

42:                                               ; preds = %38
  store i32* null, i32** %16, align 8
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @XFRM_SEP, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @DIRECTIVE_FORWARD, align 4
  %64 = load i32, i32* @DIRECTIVE_UNDEFINED, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %14, align 4
  br label %76

66:                                               ; preds = %58
  %67 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %68 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %66, %62
  %77 = load i8**, i8*** %7, align 8
  store i8** %77, i8*** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @DIRECTIVE_BACKWARD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load i8**, i8*** %13, align 8
  %84 = call i32 @free(i8** %83)
  %85 = load i8**, i8*** %12, align 8
  %86 = call i8** @wcsdup(i8** %85)
  store i8** %86, i8*** %13, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* @errno, align 4
  br label %252

90:                                               ; preds = %82
  %91 = load i8**, i8*** %13, align 8
  store i8** %91, i8*** %23, align 8
  %92 = load i8**, i8*** %13, align 8
  %93 = load i8**, i8*** %13, align 8
  %94 = call i32 @wcslen(i8** %93)
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = getelementptr inbounds i8*, i8** %96, i64 -1
  store i8** %97, i8*** %24, align 8
  br label %98

98:                                               ; preds = %102, %90
  %99 = load i8**, i8*** %23, align 8
  %100 = load i8**, i8*** %24, align 8
  %101 = icmp ult i8** %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i8**, i8*** %23, align 8
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %25, align 8
  %105 = load i8**, i8*** %24, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %23, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %23, align 8
  store i8* %106, i8** %107, align 8
  %109 = load i8*, i8** %25, align 8
  %110 = load i8**, i8*** %24, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 -1
  store i8** %111, i8*** %24, align 8
  store i8* %109, i8** %110, align 8
  br label %98

112:                                              ; preds = %98
  %113 = load i8**, i8*** %13, align 8
  store i8** %113, i8*** %12, align 8
  br label %114

114:                                              ; preds = %112, %76
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @DIRECTIVE_POSITION, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %182

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %179, %119
  %121 = load i8**, i8*** %12, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32*, i32** %16, align 8
  %126 = icmp ne i32* %125, null
  br label %127

127:                                              ; preds = %124, %120
  %128 = phi i1 [ true, %120 ], [ %126, %124 ]
  br i1 %128, label %129, label %181

129:                                              ; preds = %127
  %130 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %131 = load i8**, i8*** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @_collate_lookup(%struct.xlocale_collate* %130, i8** %131, i32* %11, i32* %10, i32 %132, i32** %16)
  %134 = load i32, i32* %11, align 4
  %135 = load i8**, i8*** %12, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  store i8** %137, i8*** %12, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %129
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* @errno, align 4
  br label %252

145:                                              ; preds = %140
  store i32* null, i32** %16, align 8
  %146 = load i32, i32* @COLLATE_MAX_PRIORITY, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %145, %129
  %148 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @xfrm(%struct.xlocale_collate* %148, i8** %30, i32 %149, i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %17, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %17, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %177, %158
  %160 = load i32, i32* %19, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %19, align 4
  %165 = load i64, i64* %9, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %30, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = ptrtoint i8* %171 to i8
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %8, align 8
  store i8 %172, i8* %173, align 1
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, -1
  store i64 %176, i64* %9, align 8
  br label %177

177:                                              ; preds = %167, %162
  br label %159

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178, %147
  %180 = load i64, i64* %17, align 8
  store i64 %180, i64* %18, align 8
  br label %120

181:                                              ; preds = %127
  br label %244

182:                                              ; preds = %114
  br label %183

183:                                              ; preds = %241, %208, %182
  %184 = load i8**, i8*** %12, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i32*, i32** %16, align 8
  %189 = icmp ne i32* %188, null
  br label %190

190:                                              ; preds = %187, %183
  %191 = phi i1 [ true, %183 ], [ %189, %187 ]
  br i1 %191, label %192, label %243

192:                                              ; preds = %190
  %193 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %194 = load i8**, i8*** %12, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @_collate_lookup(%struct.xlocale_collate* %193, i8** %194, i32* %11, i32* %10, i32 %195, i32** %16)
  %197 = load i32, i32* %11, align 4
  %198 = load i8**, i8*** %12, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8*, i8** %198, i64 %199
  store i8** %200, i8*** %12, align 8
  %201 = load i32, i32* %10, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %192
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* @errno, align 4
  br label %252

208:                                              ; preds = %203
  store i32* null, i32** %16, align 8
  br label %183

209:                                              ; preds = %192
  %210 = load %struct.xlocale_collate*, %struct.xlocale_collate** %6, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @xfrm(%struct.xlocale_collate* %210, i8** %30, i32 %211, i32 %212)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %17, align 8
  %217 = add i64 %216, %215
  store i64 %217, i64* %17, align 8
  %218 = load i64, i64* %9, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %239, %220
  %222 = load i32, i32* %19, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %19, align 4
  %227 = load i64, i64* %9, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i32, i32* %19, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %30, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = ptrtoint i8* %233 to i8
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %8, align 8
  store i8 %234, i8* %235, align 1
  %237 = load i64, i64* %9, align 8
  %238 = add i64 %237, -1
  store i64 %238, i64* %9, align 8
  br label %239

239:                                              ; preds = %229, %224
  br label %221

240:                                              ; preds = %221
  br label %241

241:                                              ; preds = %240, %209
  %242 = load i64, i64* %17, align 8
  store i64 %242, i64* %18, align 8
  br label %183

243:                                              ; preds = %190
  br label %244

244:                                              ; preds = %243, %181
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %38

248:                                              ; preds = %38
  %249 = load i8**, i8*** %13, align 8
  %250 = call i32 @free(i8** %249)
  %251 = load i64, i64* %18, align 8
  store i64 %251, i64* %5, align 8
  store i32 1, i32* %26, align 4
  br label %255

252:                                              ; preds = %206, %143, %88
  %253 = load i8**, i8*** %13, align 8
  %254 = call i32 @free(i8** %253)
  store i64 -1, i64* %5, align 8
  store i32 1, i32* %26, align 4
  br label %255

255:                                              ; preds = %252, %248
  %256 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i64, i64* %5, align 8
  ret i64 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i8**) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i8** @wcsdup(i8**) #2

declare dso_local i32 @wcslen(i8**) #2

declare dso_local i32 @_collate_lookup(%struct.xlocale_collate*, i8**, i32*, i32*, i32, i32**) #2

declare dso_local i32 @xfrm(%struct.xlocale_collate*, i8**, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
