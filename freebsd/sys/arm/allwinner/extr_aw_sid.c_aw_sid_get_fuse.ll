; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_get_fuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_sid.c_aw_sid_get_fuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_sid_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@aw_sid_sc = common dso_local global %struct.aw_sid_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SID_PRCTL_LOCK = common dso_local global i32 0, align 4
@SID_PRCTL_READ = common dso_local global i32 0, align 4
@SID_PRCTL = common dso_local global i64 0, align 8
@SID_RDKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aw_sid_get_fuse(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.aw_sid_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** @aw_sid_sc, align 8
  store %struct.aw_sid_softc* %12, %struct.aw_sid_softc** %8, align 8
  %13 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %14 = icmp eq %struct.aw_sid_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %262

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %21 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %29 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %27, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %44

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %18

44:                                               ; preds = %39, %18
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %47 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOENT, align 4
  store i32 %53, i32* %4, align 4
  br label %262

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %58 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %56, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %54
  %69 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %70 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %4, align 4
  br label %262

81:                                               ; preds = %54
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %4, align 4
  br label %262

86:                                               ; preds = %81
  %87 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %88 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %100 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %99, i32 0, i32 0
  %101 = call i32 @mtx_lock(i32* %100)
  br label %102

102:                                              ; preds = %98, %86
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %242, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %106 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %104, %114
  br i1 %115, label %116, label %245

116:                                              ; preds = %103
  %117 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %118 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %163

128:                                              ; preds = %116
  %129 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %130 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = call i32 @SID_PRCTL_OFFSET(i64 %141)
  %143 = load i32, i32* @SID_PRCTL_LOCK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SID_PRCTL_READ, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %9, align 4
  %147 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %148 = load i64, i64* @SID_PRCTL, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @WR4(%struct.aw_sid_softc* %147, i64 %148, i32 %149)
  br label %151

151:                                              ; preds = %158, %128
  %152 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %153 = load i64, i64* @SID_PRCTL, align 8
  %154 = call i32 @RD4(%struct.aw_sid_softc* %152, i64 %153)
  %155 = load i32, i32* @SID_PRCTL_READ, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %151

159:                                              ; preds = %151
  %160 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %161 = load i64, i64* @SID_RDKEY, align 8
  %162 = call i32 @RD4(%struct.aw_sid_softc* %160, i64 %161)
  store i32 %162, i32* %9, align 4
  br label %190

163:                                              ; preds = %116
  %164 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %165 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %166 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %176 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %174, %184
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = call i32 @RD4(%struct.aw_sid_softc* %164, i64 %188)
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %163, %159
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 255
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %190
  %203 = load i32, i32* %9, align 4
  %204 = and i32 %203, 65280
  %205 = ashr i32 %204, 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %202, %190
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 2
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, 16711680
  %220 = ashr i32 %219, 16
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 %220, i32* %225, align 4
  br label %226

226:                                              ; preds = %217, %211
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 3
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = load i32, i32* %9, align 4
  %234 = and i32 %233, -16777216
  %235 = lshr i32 %234, 24
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 3
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %232, %226
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 4
  store i32 %244, i32* %11, align 4
  br label %103

245:                                              ; preds = %103
  %246 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %247 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %246, i32 0, i32 1
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %245
  %258 = load %struct.aw_sid_softc*, %struct.aw_sid_softc** %8, align 8
  %259 = getelementptr inbounds %struct.aw_sid_softc, %struct.aw_sid_softc* %258, i32 0, i32 0
  %260 = call i32 @mtx_unlock(i32* %259)
  br label %261

261:                                              ; preds = %257, %245
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %261, %84, %68, %52, %15
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SID_PRCTL_OFFSET(i64) #1

declare dso_local i32 @WR4(%struct.aw_sid_softc*, i64, i32) #1

declare dso_local i32 @RD4(%struct.aw_sid_softc*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
