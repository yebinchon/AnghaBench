; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkquery.c___res_nmkquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkquery.c___res_nmkquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, i32, i8* }

@HFIXEDSZ = common dso_local global i32 0, align 4
@RES_RECURSE = common dso_local global i32 0, align 4
@NOERROR = common dso_local global i32 0, align 4
@QFIXEDSZ = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4
@RRFIXEDSZ = common dso_local global i32 0, align 4
@T_NULL = common dso_local global i32 0, align 4
@INT32SZ = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@_res_opcodes = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_nmkquery(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [20 x i32*], align 16
  %27 = alloca i32**, align 8
  %28 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %29 = load i32*, i32** %19, align 8
  %30 = call i32 @UNUSED(i32* %29)
  %31 = load i32*, i32** %20, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* @HFIXEDSZ, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %10
  store i32 -1, i32* %11, align 4
  br label %279

38:                                               ; preds = %33
  %39 = load i32*, i32** %20, align 8
  %40 = load i32, i32* @HFIXEDSZ, align 4
  %41 = call i32 @memset(i32* %39, i32 0, i32 %40)
  %42 = load i32*, i32** %20, align 8
  %43 = bitcast i32* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %22, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = call i32 @res_nrandomid(%struct.TYPE_5__* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RES_RECURSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NOERROR, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = load i32, i32* @HFIXEDSZ, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %23, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %24, align 8
  %77 = getelementptr inbounds [20 x i32*], [20 x i32*]* %26, i64 0, i64 0
  store i32** %77, i32*** %27, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i32**, i32*** %27, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i32 1
  store i32** %80, i32*** %27, align 8
  store i32* %78, i32** %79, align 8
  %81 = load i32**, i32*** %27, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i32 1
  store i32** %82, i32*** %27, align 8
  store i32* null, i32** %81, align 8
  %83 = getelementptr inbounds [20 x i32*], [20 x i32*]* %26, i64 0, i64 0
  %84 = getelementptr inbounds [20 x i32*], [20 x i32*]* %26, i64 0, i64 0
  %85 = call i32 @nitems(i32** %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %83, i64 %86
  store i32** %87, i32*** %28, align 8
  %88 = load i32, i32* %13, align 4
  switch i32 %88, label %270 [
    i32 128, label %89
    i32 129, label %89
    i32 130, label %211
  ]

89:                                               ; preds = %38, %38
  %90 = load i32*, i32** %24, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = load i32, i32* @QFIXEDSZ, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  store i32 -1, i32* %11, align 4
  br label %279

100:                                              ; preds = %89
  %101 = load i8*, i8** %14, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = load i32*, i32** %24, align 8
  %104 = load i32*, i32** %23, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = load i32, i32* @QFIXEDSZ, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds [20 x i32*], [20 x i32*]* %26, i64 0, i64 0
  %114 = load i32**, i32*** %28, align 8
  %115 = call i32 @dn_comp(i8* %101, i32* %102, i32 %112, i32** %113, i32** %114)
  store i32 %115, i32* %25, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  store i32 -1, i32* %11, align 4
  br label %279

118:                                              ; preds = %100
  %119 = load i32, i32* %25, align 4
  %120 = load i32*, i32** %23, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %23, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32*, i32** %23, align 8
  %125 = call i32 @ns_put16(i32 %123, i32* %124)
  %126 = load i32, i32* @INT16SZ, align 4
  %127 = load i32*, i32** %23, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %23, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %23, align 8
  %132 = call i32 @ns_put16(i32 %130, i32* %131)
  %133 = load i32, i32* @INT16SZ, align 4
  %134 = load i32*, i32** %23, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %23, align 8
  %137 = call i8* @htons(i32 1)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %145, label %142

142:                                              ; preds = %118
  %143 = load i32*, i32** %17, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %118
  br label %271

146:                                              ; preds = %142
  %147 = load i32*, i32** %24, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = load i32, i32* @RRFIXEDSZ, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 -1, i32* %11, align 4
  br label %279

157:                                              ; preds = %146
  %158 = load i32*, i32** %17, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load i32*, i32** %23, align 8
  %161 = load i32*, i32** %24, align 8
  %162 = load i32*, i32** %23, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = load i32, i32* @RRFIXEDSZ, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %166, %168
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds [20 x i32*], [20 x i32*]* %26, i64 0, i64 0
  %172 = load i32**, i32*** %28, align 8
  %173 = call i32 @dn_comp(i8* %159, i32* %160, i32 %170, i32** %171, i32** %172)
  store i32 %173, i32* %25, align 4
  %174 = load i32, i32* %25, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %157
  store i32 -1, i32* %11, align 4
  br label %279

177:                                              ; preds = %157
  %178 = load i32, i32* %25, align 4
  %179 = load i32*, i32** %23, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %23, align 8
  %182 = load i32, i32* @T_NULL, align 4
  %183 = load i32*, i32** %23, align 8
  %184 = call i32 @ns_put16(i32 %182, i32* %183)
  %185 = load i32, i32* @INT16SZ, align 4
  %186 = load i32*, i32** %23, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %23, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %23, align 8
  %191 = call i32 @ns_put16(i32 %189, i32* %190)
  %192 = load i32, i32* @INT16SZ, align 4
  %193 = load i32*, i32** %23, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %23, align 8
  %196 = load i32*, i32** %23, align 8
  %197 = call i32 @ns_put32(i32 0, i32* %196)
  %198 = load i32, i32* @INT32SZ, align 4
  %199 = load i32*, i32** %23, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %23, align 8
  %202 = load i32*, i32** %23, align 8
  %203 = call i32 @ns_put16(i32 0, i32* %202)
  %204 = load i32, i32* @INT16SZ, align 4
  %205 = load i32*, i32** %23, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %23, align 8
  %208 = call i8* @htons(i32 1)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  br label %271

211:                                              ; preds = %38
  %212 = load i32*, i32** %24, align 8
  %213 = load i32*, i32** %23, align 8
  %214 = ptrtoint i32* %212 to i64
  %215 = ptrtoint i32* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sdiv exact i64 %216, 4
  %218 = load i32, i32* @RRFIXEDSZ, align 4
  %219 = add nsw i32 1, %218
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = icmp slt i64 %217, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %211
  store i32 -1, i32* %11, align 4
  br label %279

225:                                              ; preds = %211
  %226 = load i32*, i32** %23, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %23, align 8
  store i32 0, i32* %226, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load i32*, i32** %23, align 8
  %230 = call i32 @ns_put16(i32 %228, i32* %229)
  %231 = load i32, i32* @INT16SZ, align 4
  %232 = load i32*, i32** %23, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %23, align 8
  %235 = load i32, i32* %15, align 4
  %236 = load i32*, i32** %23, align 8
  %237 = call i32 @ns_put16(i32 %235, i32* %236)
  %238 = load i32, i32* @INT16SZ, align 4
  %239 = load i32*, i32** %23, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %23, align 8
  %242 = load i32*, i32** %23, align 8
  %243 = call i32 @ns_put32(i32 0, i32* %242)
  %244 = load i32, i32* @INT32SZ, align 4
  %245 = load i32*, i32** %23, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %23, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32*, i32** %23, align 8
  %250 = call i32 @ns_put16(i32 %248, i32* %249)
  %251 = load i32, i32* @INT16SZ, align 4
  %252 = load i32*, i32** %23, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %23, align 8
  %255 = load i32, i32* %18, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %225
  %258 = load i32*, i32** %23, align 8
  %259 = load i32*, i32** %17, align 8
  %260 = load i32, i32* %18, align 4
  %261 = call i32 @memcpy(i32* %258, i32* %259, i32 %260)
  %262 = load i32, i32* %18, align 4
  %263 = load i32*, i32** %23, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %23, align 8
  br label %266

266:                                              ; preds = %257, %225
  %267 = call i8* @htons(i32 1)
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  store i8* %267, i8** %269, align 8
  br label %271

270:                                              ; preds = %38
  store i32 -1, i32* %11, align 4
  br label %279

271:                                              ; preds = %266, %177, %145
  %272 = load i32*, i32** %23, align 8
  %273 = load i32*, i32** %20, align 8
  %274 = ptrtoint i32* %272 to i64
  %275 = ptrtoint i32* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 4
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %271, %270, %224, %176, %156, %117, %99, %37
  %280 = load i32, i32* %11, align 4
  ret i32 %280
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @res_nrandomid(%struct.TYPE_5__*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @nitems(i32**) #1

declare dso_local i32 @dn_comp(i8*, i32*, i32, i32**, i32**) #1

declare dso_local i32 @ns_put16(i32, i32*) #1

declare dso_local i32 @ns_put32(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
