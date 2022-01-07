; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_ret.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }

@P_BIGKEY = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@B_DB_LOCK = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@P_BIGDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bt_ret(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_12__* @GETBLEAF(i32 %20, i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %16, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %128

28:                                               ; preds = %7
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @P_BIGKEY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = call i64 @__ovfl_get(i32* %36, i64 %39, i64* %41, i64* %43, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @RET_ERROR, align 4
  store i32 %49, i32* %8, align 4
  br label %249

50:                                               ; preds = %35
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %127

56:                                               ; preds = %28
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @B_DB_LOCK, align 4
  %62 = call i64 @F_ISSET(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %115

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @realloc(i64 %75, i64 %78)
  store i8* %79, i8** %17, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @RET_ERROR, align 4
  store i32 %83, i32* %8, align 4
  br label %249

84:                                               ; preds = %72
  %85 = load i8*, i8** %17, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %64
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @memmove(i64 %97, i64 %100, i64 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %126

115:                                              ; preds = %59
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %115, %94
  br label %127

127:                                              ; preds = %126, %50
  br label %128

128:                                              ; preds = %127, %27
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %130 = icmp eq %struct.TYPE_11__* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %132, i32* %8, align 4
  br label %249

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @P_BIGDATA, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %133
  %141 = load i32*, i32** %9, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = call i64 @__ovfl_get(i32* %141, i64 %148, i64* %150, i64* %152, i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %140
  %158 = load i32, i32* @RET_ERROR, align 4
  store i32 %158, i32* %8, align 4
  br label %249

159:                                              ; preds = %140
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  br label %247

165:                                              ; preds = %133
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* @B_DB_LOCK, align 4
  %171 = call i64 @F_ISSET(i32* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %231

173:                                              ; preds = %168, %165
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %206

182:                                              ; preds = %173
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  %190 = call i8* @realloc(i64 %185, i64 %189)
  store i8* %190, i8** %17, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i32, i32* @RET_ERROR, align 4
  store i32 %194, i32* %8, align 4
  br label %249

195:                                              ; preds = %182
  %196 = load i8*, i8** %17, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %195, %173
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %212, %215
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @memmove(i64 %209, i64 %216, i64 %219)
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  br label %246

231:                                              ; preds = %168
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %239, %242
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %231, %206
  br label %247

247:                                              ; preds = %246, %159
  %248 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %247, %193, %157, %131, %82, %48
  %250 = load i32, i32* %8, align 4
  ret i32 %250
}

declare dso_local %struct.TYPE_12__* @GETBLEAF(i32, i32) #1

declare dso_local i64 @__ovfl_get(i32*, i64, i64*, i64*, i64*) #1

declare dso_local i64 @F_ISSET(i32*, i32) #1

declare dso_local i8* @realloc(i64, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
