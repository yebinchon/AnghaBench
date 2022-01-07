; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn_string__similarity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn_string__similarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32* }

@SVN_STRING__SIM_RANGE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_string__similarity(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %67, %4
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %60, %63
  br label %65

65:                                               ; preds = %57, %53, %49
  %66 = phi i1 [ false, %53 ], [ false, %49 ], [ %64, %57 ]
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %49

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %102, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = icmp ult i8* %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ false, %75 ], [ %82, %79 ]
  br i1 %84, label %85, label %105

85:                                               ; preds = %83
  %86 = load i8*, i8** %15, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %16, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8*, i8** %16, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %16, align 8
  br label %105

102:                                              ; preds = %85
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %75

105:                                              ; preds = %97, %83
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %254

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = icmp ult i8* %110, %111
  br i1 %112, label %113, label %254

113:                                              ; preds = %109
  %114 = load i8*, i8** %15, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %18, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %113
  %130 = load i32, i32* %19, align 4
  br label %133

131:                                              ; preds = %113
  %132 = load i32, i32* %18, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  store i8* %139, i8** %23, align 8
  %140 = load i8*, i8** %11, align 8
  store i8* %140, i8** %10, align 8
  %141 = load i8*, i8** %23, align 8
  store i8* %141, i8** %11, align 8
  %142 = load i8*, i8** %15, align 8
  store i8* %142, i8** %23, align 8
  %143 = load i8*, i8** %16, align 8
  store i8* %143, i8** %15, align 8
  %144 = load i8*, i8** %23, align 8
  store i8* %144, i8** %16, align 8
  br label %145

145:                                              ; preds = %138, %133
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %147, 1
  %149 = mul nsw i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i32 @svn_membuf__ensure(%struct.TYPE_9__* %146, i32 %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32 @svn_membuf__nzero(%struct.TYPE_9__* %154, i32 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %22, align 8
  %164 = load i32*, i32** %22, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32* %168, i32** %21, align 8
  %169 = load i8*, i8** %10, align 8
  store i8* %169, i8** %23, align 8
  br label %170

170:                                              ; preds = %243, %145
  %171 = load i8*, i8** %23, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %246

174:                                              ; preds = %170
  store i32 1, i32* %24, align 4
  br label %175

175:                                              ; preds = %236, %174
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %239

179:                                              ; preds = %175
  %180 = load i8*, i8** %23, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8*, i8** %11, align 8
  %184 = load i32, i32* %24, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %182, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %179
  %192 = load i32*, i32** %22, align 8
  %193 = load i32, i32* %24, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32*, i32** %21, align 8
  %200 = load i32, i32* %24, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  br label %235

203:                                              ; preds = %179
  %204 = load i32*, i32** %21, align 8
  %205 = load i32, i32* %24, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %22, align 8
  %211 = load i32, i32* %24, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %209, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %203
  %217 = load i32*, i32** %21, align 8
  %218 = load i32, i32* %24, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  br label %229

223:                                              ; preds = %203
  %224 = load i32*, i32** %22, align 8
  %225 = load i32, i32* %24, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  br label %229

229:                                              ; preds = %223, %216
  %230 = phi i32 [ %222, %216 ], [ %228, %223 ]
  %231 = load i32*, i32** %21, align 8
  %232 = load i32, i32* %24, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %191
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %24, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %24, align 4
  br label %175

239:                                              ; preds = %175
  %240 = load i32*, i32** %22, align 8
  store i32* %240, i32** %25, align 8
  %241 = load i32*, i32** %21, align 8
  store i32* %241, i32** %22, align 8
  %242 = load i32*, i32** %25, align 8
  store i32* %242, i32** %21, align 8
  br label %243

243:                                              ; preds = %239
  %244 = load i8*, i8** %23, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %23, align 8
  br label %170

246:                                              ; preds = %170
  %247 = load i32*, i32** %22, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %246, %109, %105
  %255 = load i32*, i32** %9, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %17, align 4
  %259 = load i32*, i32** %9, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* %14, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load i32, i32* @SVN_STRING__SIM_RANGE_MAX, align 4
  %265 = mul nsw i32 2, %264
  %266 = load i32, i32* %17, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load i32, i32* %14, align 4
  %269 = sdiv i32 %268, 2
  %270 = add nsw i32 %267, %269
  %271 = load i32, i32* %14, align 4
  %272 = sdiv i32 %270, %271
  store i32 %272, i32* %5, align 4
  br label %275

273:                                              ; preds = %260
  %274 = load i32, i32* @SVN_STRING__SIM_RANGE_MAX, align 4
  store i32 %274, i32* %5, align 4
  br label %275

275:                                              ; preds = %273, %263
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local i32 @svn_membuf__ensure(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_membuf__nzero(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
