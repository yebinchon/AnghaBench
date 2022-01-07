; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FmPcdNetEnvGetUnitId.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FmPcdNetEnvGetUnitId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS = common dso_local global i64 0, align 8
@HEADER_TYPE_NONE = common dso_local global i64 0, align 8
@FM_PCD_MAX_NUM_OF_INTERCHANGEABLE_HDRS = common dso_local global i64 0, align 8
@FM_PCD_MAX_NUM_OF_ALIAS_HDRS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdNetEnvGetUnitId(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = call i32 @ASSERT_COND(%struct.TYPE_12__* %14)
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %110, %18
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HEADER_TYPE_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %23, %19
  %41 = phi i1 [ false, %19 ], [ %39, %23 ]
  br i1 %41, label %42, label %113

42:                                               ; preds = %40
  store i64 0, i64* %13, align 8
  br label %43

43:                                               ; preds = %106, %42
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @FM_PCD_MAX_NUM_OF_INTERCHANGEABLE_HDRS, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HEADER_TYPE_NONE, align 8
  %64 = icmp ne i64 %62, %63
  br label %65

65:                                               ; preds = %47, %43
  %66 = phi i1 [ false, %43 ], [ %64, %47 ]
  br i1 %66, label %67, label %109

67:                                               ; preds = %65
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %67
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %85
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %6, align 8
  br label %263

105:                                              ; preds = %85, %67
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %43

109:                                              ; preds = %65
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  br label %19

113:                                              ; preds = %40
  br label %261

114:                                              ; preds = %5
  store i64 0, i64* %12, align 8
  br label %115

115:                                              ; preds = %192, %114
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @HEADER_TYPE_NONE, align 8
  %135 = icmp ne i64 %133, %134
  br label %136

136:                                              ; preds = %119, %115
  %137 = phi i1 [ false, %115 ], [ %135, %119 ]
  br i1 %137, label %138, label %195

138:                                              ; preds = %136
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %191

155:                                              ; preds = %138
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %155
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @HEADER_TYPE_NONE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %172
  %190 = load i64, i64* %12, align 8
  store i64 %190, i64* %6, align 8
  br label %263

191:                                              ; preds = %172, %155, %138
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %12, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %12, align 8
  br label %115

195:                                              ; preds = %136
  store i64 0, i64* %12, align 8
  br label %196

196:                                              ; preds = %257, %195
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* @FM_PCD_MAX_NUM_OF_ALIAS_HDRS, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @HEADER_TYPE_NONE, align 8
  %213 = icmp ne i64 %211, %212
  br label %214

214:                                              ; preds = %200, %196
  %215 = phi i1 [ false, %196 ], [ %213, %200 ]
  br i1 %215, label %216, label %260

216:                                              ; preds = %214
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = load i64, i64* %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = load i64, i64* %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %256

230:                                              ; preds = %216
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = load i64, i64* %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load i64, i64* %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %11, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %230
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = load i64, i64* %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i64, i64* %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %6, align 8
  br label %263

256:                                              ; preds = %230, %216
  br label %257

257:                                              ; preds = %256
  %258 = load i64, i64* %12, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %12, align 8
  br label %196

260:                                              ; preds = %214
  br label %261

261:                                              ; preds = %260, %113
  %262 = load i64, i64* @FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS, align 8
  store i64 %262, i64* %6, align 8
  br label %263

263:                                              ; preds = %261, %244, %189, %103
  %264 = load i64, i64* %6, align 8
  ret i64 %264
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
