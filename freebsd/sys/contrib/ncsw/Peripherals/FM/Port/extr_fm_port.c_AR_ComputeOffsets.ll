; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_AR_ComputeOffsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_AR_ComputeOffsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arOffsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_FmPortDsarParams = type { %struct.TYPE_18__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arOffsets*, %struct.t_FmPortDsarParams*, %struct.TYPE_19__*)* @AR_ComputeOffsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AR_ComputeOffsets(%struct.arOffsets* %0, %struct.t_FmPortDsarParams* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.arOffsets*, align 8
  %5 = alloca %struct.t_FmPortDsarParams*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.arOffsets* %0, %struct.arOffsets** %4, align 8
  store %struct.t_FmPortDsarParams* %1, %struct.t_FmPortDsarParams** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  store i32 4, i32* %7, align 4
  %8 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %9 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %8, i32 0, i32 5
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ROUND_UP(i32 %13, i32 4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %17 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %23 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %22, i32 0, i32 5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %12, %3
  %38 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %39 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ROUND_UP(i32 %43, i32 4)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %47 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %53 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %52, i32 0, i32 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %42, %37
  %68 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %69 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %68, i32 0, i32 3
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ROUND_UP(i32 %73, i32 4)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %77 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %83 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %82, i32 0, i32 3
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %72, %67
  %98 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %99 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %98, i32 0, i32 2
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %133

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ROUND_UP(i32 %103, i32 4)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %107 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %7, align 4
  %112 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %113 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %118 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %117, i32 0, i32 2
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %116, %121
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %102, %97
  %134 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %135 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %134, i32 0, i32 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = icmp ne %struct.TYPE_15__* %136, null
  br i1 %137, label %138, label %195

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @ROUND_UP(i32 %139, i32 4)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %143 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 4
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %149 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %7, align 4
  %159 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %160 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %159, i32 0, i32 1
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %7, align 4
  %170 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %171 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 4, %175
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %7, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, 4
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %138, %133
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @ROUND_UP(i32 %196, i32 4)
  store i32 %197, i32* %7, align 4
  %198 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %199 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %198, i32 0, i32 0
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = icmp ne %struct.TYPE_18__* %200, null
  br i1 %201, label %202, label %247

202:                                              ; preds = %195
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %205 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %207 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %206, i32 0, i32 0
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ROUND_UP(i32 %215, i32 4)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %219 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  %220 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %221 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %220, i32 0, i32 0
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 4
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = add i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @ROUND_UP(i32 %231, i32 4)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %235 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 4
  %236 = load %struct.t_FmPortDsarParams*, %struct.t_FmPortDsarParams** %5, align 8
  %237 = getelementptr inbounds %struct.t_FmPortDsarParams, %struct.t_FmPortDsarParams* %236, i32 0, i32 0
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 4
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = add i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %202, %195
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @ROUND_UP(i32 %248, i32 4)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.arOffsets*, %struct.arOffsets** %4, align 8
  %252 = getelementptr inbounds %struct.arOffsets, %struct.arOffsets* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 %254, 4
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local i32 @ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
