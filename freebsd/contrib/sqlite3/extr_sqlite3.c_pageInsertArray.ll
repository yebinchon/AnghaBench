; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pageInsertArray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pageInsertArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64* }
%struct.TYPE_7__ = type { i32*, i32*, i64**, i64** }

@CORRUPT_DB = common dso_local global i32 0, align 4
@NB = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*, i64**, i64*, i32, i32, %struct.TYPE_7__*)* @pageInsertArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageInsertArray(%struct.TYPE_6__* %0, i64* %1, i64** %2, i64* %3, i32 %4, i32 %5, %struct.TYPE_7__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64** %2, i64*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %17, align 8
  %29 = load i64**, i64*** %11, align 8
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %18, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @CORRUPT_DB, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %7
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %7
  %42 = phi i1 [ true, %7 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %247

49:                                               ; preds = %41
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* @NB, align 4
  %63 = mul nsw i32 %62, 2
  %64 = icmp slt i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @ALWAYS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %60, %50
  %69 = phi i1 [ false, %50 ], [ %67, %60 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %20, align 4
  br label %50

74:                                               ; preds = %68
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64**, i64*** %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  store i64* %81, i64** %21, align 8
  br label %82

82:                                               ; preds = %74, %243
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %22, align 4
  %100 = load i64*, i64** %17, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %82
  %105 = load i64*, i64** %17, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104, %82
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = load i32, i32* %22, align 4
  %112 = call i64* @pageFindSlot(%struct.TYPE_6__* %110, i32 %111, i32* %23)
  store i64* %112, i64** %24, align 8
  %113 = icmp eq i64* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %109, %104
  %115 = load i64*, i64** %18, align 8
  %116 = load i64*, i64** %10, align 8
  %117 = ptrtoint i64* %115 to i64
  %118 = ptrtoint i64* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store i32 1, i32* %8, align 4
  br label %247

125:                                              ; preds = %114
  %126 = load i32, i32* %22, align 4
  %127 = load i64*, i64** %18, align 8
  %128 = sext i32 %126 to i64
  %129 = sub i64 0, %128
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64* %130, i64** %18, align 8
  %131 = load i64*, i64** %18, align 8
  store i64* %131, i64** %24, align 8
  br label %132

132:                                              ; preds = %125, %109
  %133 = load i64*, i64** %24, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64**, i64*** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64*, i64** %139, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = icmp ule i64* %136, %143
  br i1 %144, label %161, label %145

145:                                              ; preds = %132
  %146 = load i64*, i64** %24, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i64**, i64*** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64*, i64** %149, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %22, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = icmp uge i64* %146, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %145
  %159 = load i32, i32* @CORRUPT_DB, align 4
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %158, %145, %132
  %162 = phi i1 [ true, %145 ], [ true, %132 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i64**, i64*** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64*, i64** %167, i64 %169
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = ptrtoint i64* %174 to i64
  %176 = load i64*, i64** %21, align 8
  %177 = ptrtoint i64* %176 to i64
  %178 = icmp sgt i64 %175, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %161
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i64**, i64*** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64*, i64** %182, i64 %184
  %186 = load i64*, i64** %185, align 8
  %187 = ptrtoint i64* %186 to i64
  %188 = load i64*, i64** %21, align 8
  %189 = ptrtoint i64* %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load i32, i32* @CORRUPT_DB, align 4
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 1, i32* %8, align 4
  br label %247

195:                                              ; preds = %179, %161
  %196 = load i64*, i64** %24, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i64**, i64*** %198, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64*, i64** %199, i64 %201
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @memmove(i64* %196, i64* %203, i32 %204)
  %206 = load i64*, i64** %12, align 8
  %207 = load i64*, i64** %24, align 8
  %208 = load i64*, i64** %17, align 8
  %209 = ptrtoint i64* %207 to i64
  %210 = ptrtoint i64* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 @put2byte(i64* %206, i32 %213)
  %215 = load i64*, i64** %12, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 2
  store i64* %216, i64** %12, align 8
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %195
  br label %244

223:                                              ; preds = %195
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %16, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %223
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 3
  %238 = load i64**, i64*** %237, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64*, i64** %238, i64 %240
  %242 = load i64*, i64** %241, align 8
  store i64* %242, i64** %21, align 8
  br label %243

243:                                              ; preds = %233, %223
  br label %82

244:                                              ; preds = %222
  %245 = load i64*, i64** %18, align 8
  %246 = load i64**, i64*** %11, align 8
  store i64* %245, i64** %246, align 8
  store i32 0, i32* %8, align 4
  br label %247

247:                                              ; preds = %244, %191, %124, %48
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64* @pageFindSlot(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @put2byte(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
