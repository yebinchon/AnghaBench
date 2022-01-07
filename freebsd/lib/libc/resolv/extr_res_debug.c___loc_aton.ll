; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___loc_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___loc_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loc_aton(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i8* inttoptr (i64 22 to i8*), i8** %17, align 8
  store i8* inttoptr (i64 19 to i8*), i8** %18, align 8
  store i8* inttoptr (i64 18 to i8*), i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = call i32 @latlon2ul(i8** %6, i32* %20)
  store i32 %28, i32* %12, align 4
  %29 = call i32 @latlon2ul(i8** %6, i32* %21)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %21, align 4
  %32 = add nsw i32 %30, %31
  switch i32 %32, label %54 [
    i32 3, label %33
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* %20, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %21, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %10, align 4
  br label %53

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %20, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %21, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %9, align 4
  br label %52

51:                                               ; preds = %45, %42
  store i32 0, i32* %3, align 4
  br label %260

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %39
  br label %55

54:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %260

55:                                               ; preds = %53
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  store i32 -1, i32* %16, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 43
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %77, %71
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isdigit(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %78, 10
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  %85 = add nsw i32 %79, %84
  store i32 %85, i32* %14, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 zeroext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  %104 = mul nsw i32 %103, 10
  store i32 %104, i32* %15, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isdigit(i8 zeroext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  %114 = sub nsw i32 %113, 48
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %109, %98
  br label %118

118:                                              ; preds = %117, %91
  br label %119

119:                                              ; preds = %118, %86
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 %121, 100
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %122, %123
  %125 = mul nsw i32 %120, %124
  %126 = add nsw i32 10000000, %125
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %138, %119
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @isspace(i8 zeroext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = icmp ult i8* %133, %134
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi i1 [ false, %127 ], [ %135, %132 ]
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  br label %127

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @isspace(i8 zeroext %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = icmp ult i8* %148, %149
  br label %151

151:                                              ; preds = %147, %142
  %152 = phi i1 [ false, %142 ], [ %150, %147 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %6, align 8
  br label %142

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = icmp uge i8* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %235

161:                                              ; preds = %156
  %162 = call i8* @precsize_aton(i8** %6)
  store i8* %162, i8** %19, align 8
  br label %163

163:                                              ; preds = %174, %161
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = call i64 @isspace(i8 zeroext %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = icmp ult i8* %169, %170
  br label %172

172:                                              ; preds = %168, %163
  %173 = phi i1 [ false, %163 ], [ %171, %168 ]
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %6, align 8
  br label %163

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i8*, i8** %6, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i64 @isspace(i8 zeroext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i8*, i8** %6, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = icmp ult i8* %184, %185
  br label %187

187:                                              ; preds = %183, %178
  %188 = phi i1 [ false, %178 ], [ %186, %183 ]
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %6, align 8
  br label %178

192:                                              ; preds = %187
  %193 = load i8*, i8** %6, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = icmp uge i8* %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %235

197:                                              ; preds = %192
  %198 = call i8* @precsize_aton(i8** %6)
  store i8* %198, i8** %17, align 8
  br label %199

199:                                              ; preds = %210, %197
  %200 = load i8*, i8** %6, align 8
  %201 = load i8, i8* %200, align 1
  %202 = call i64 @isspace(i8 zeroext %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = icmp ult i8* %205, %206
  br label %208

208:                                              ; preds = %204, %199
  %209 = phi i1 [ false, %199 ], [ %207, %204 ]
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %6, align 8
  br label %199

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %225, %213
  %215 = load i8*, i8** %6, align 8
  %216 = load i8, i8* %215, align 1
  %217 = call i64 @isspace(i8 zeroext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i8*, i8** %6, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = icmp ult i8* %220, %221
  br label %223

223:                                              ; preds = %219, %214
  %224 = phi i1 [ false, %214 ], [ %222, %219 ]
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %6, align 8
  br label %214

228:                                              ; preds = %223
  %229 = load i8*, i8** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = icmp uge i8* %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %235

233:                                              ; preds = %228
  %234 = call i8* @precsize_aton(i8** %6)
  store i8* %234, i8** %18, align 8
  br label %235

235:                                              ; preds = %233, %232, %196, %160
  %236 = load i32*, i32** %5, align 8
  store i32* %236, i32** %8, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %8, align 8
  store i32 0, i32* %237, align 4
  %239 = load i8*, i8** %19, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = load i32*, i32** %8, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %8, align 8
  store i32 %240, i32* %241, align 4
  %243 = load i8*, i8** %17, align 8
  %244 = ptrtoint i8* %243 to i32
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %8, align 8
  store i32 %244, i32* %245, align 4
  %247 = load i8*, i8** %18, align 8
  %248 = ptrtoint i8* %247 to i32
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %8, align 8
  store i32 %248, i32* %249, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @PUTLONG(i32 %251, i32* %252)
  %254 = load i32, i32* %10, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @PUTLONG(i32 %254, i32* %255)
  %257 = load i32, i32* %11, align 4
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 @PUTLONG(i32 %257, i32* %258)
  store i32 16, i32* %3, align 4
  br label %260

260:                                              ; preds = %235, %54, %51
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @latlon2ul(i8**, i32*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @precsize_aton(i8**) #1

declare dso_local i32 @PUTLONG(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
