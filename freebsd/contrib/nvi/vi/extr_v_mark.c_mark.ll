; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_mark.c_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_mark.c_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@M_BERR = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@BACKWARD = common dso_local global i32 0, align 4
@FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32, i32)* @mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* @M_BERR, align 4
  %23 = call i64 @mark_get(i32* %16, i32 %19, %struct.TYPE_8__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %244

26:                                               ; preds = %15, %4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %81 [
    i32 129, label %28
    i32 128, label %65
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @DBG_FATAL, align 4
  %35 = call i64 @db_get(i32* %29, i64 %33, i32 %34, i32* null, i64* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %244

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %38
  br label %83

56:                                               ; preds = %52, %45
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = call i64 @ISMOTION(%struct.TYPE_7__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = load i32, i32* @VM_LMODE, align 4
  %63 = call i32 @F_SET(%struct.TYPE_7__* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  store i32 128, i32* %9, align 4
  br label %65

65:                                               ; preds = %26, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = call i64 @nonblank(i32* %69, i64 %73, i64* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %244

80:                                               ; preds = %65
  br label %83

81:                                               ; preds = %26
  %82 = call i32 (...) @abort() #4
  unreachable

83:                                               ; preds = %80, %55
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = call i64 @ISMOTION(%struct.TYPE_7__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = bitcast %struct.TYPE_8__* %89 to i8*
  %93 = bitcast %struct.TYPE_8__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %244

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %97
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @v_nomove(i32* %118)
  store i32 1, i32* %5, align 4
  br label %244

120:                                              ; preds = %107, %97, %94
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %150, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %134, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %130
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ugt i64 %144, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %140, %120
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = bitcast %struct.TYPE_8__* %11 to i8*
  %154 = bitcast %struct.TYPE_8__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 16, i1 false)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = bitcast %struct.TYPE_8__* %156 to i8*
  %160 = bitcast %struct.TYPE_8__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 16, i1 false)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_8__* %162 to i8*
  %164 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 16, i1 false)
  %165 = load i32, i32* @BACKWARD, align 4
  store i32 %165, i32* %10, align 4
  br label %168

166:                                              ; preds = %140, %130
  %167 = load i32, i32* @FORWARD, align 4
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %166, %150
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = bitcast %struct.TYPE_8__* %170 to i8*
  %174 = bitcast %struct.TYPE_8__* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 16, i1 false)
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %244

178:                                              ; preds = %168
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp slt i64 %182, %186
  br i1 %187, label %188, label %237

188:                                              ; preds = %178
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %188
  %195 = load i32*, i32** %6, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, -1
  store i64 %200, i64* %198, align 8
  %201 = load i32, i32* @DBG_FATAL, align 4
  %202 = call i64 @db_get(i32* %195, i64 %200, i32 %201, i32* null, i64* %12)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  store i32 1, i32* %5, align 4
  br label %244

205:                                              ; preds = %194
  %206 = load i64, i64* %12, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i64, i64* %12, align 8
  %210 = sub i64 %209, 1
  br label %212

211:                                              ; preds = %205
  br label %212

212:                                              ; preds = %211, %208
  %213 = phi i64 [ %210, %208 ], [ 0, %211 ]
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  store i64 %213, i64* %216, align 8
  store i64 0, i64* %12, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @nonblank(i32* %217, i64 %221, i64* %12)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  store i32 1, i32* %5, align 4
  br label %244

225:                                              ; preds = %212
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %12, align 8
  %231 = icmp ule i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = load i32, i32* @VM_LMODE, align 4
  %235 = call i32 @F_SET(%struct.TYPE_7__* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %225
  br label %243

237:                                              ; preds = %188, %178
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, -1
  store i64 %242, i64* %240, align 8
  br label %243

243:                                              ; preds = %237, %236
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %243, %224, %204, %177, %117, %87, %79, %37, %25
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i64 @mark_get(i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @db_get(i32*, i64, i32, i32*, i64*) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_7__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @nonblank(i32*, i64, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @v_nomove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
