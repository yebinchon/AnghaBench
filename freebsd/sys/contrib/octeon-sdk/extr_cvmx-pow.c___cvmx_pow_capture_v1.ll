; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_capture_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_capture_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__**, %struct.TYPE_12__**, %struct.TYPE_10__** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"cvmx_pow_capture: Buffer too small\0A\00", align 1
@CVMX_IO_SEG = common dso_local global i8* null, align 8
@CVMX_OCT_DID_TAG_TAG1 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG2 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__cvmx_pow_capture_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pow_capture_v1(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = call i32 (...) @cvmx_pow_get_num_entries()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 24
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %245

22:                                               ; preds = %2
  %23 = call i32 (...) @cvmx_octeon_num_cores()
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %105, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** @CVMX_IO_SEG, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @CVMX_OCT_DID_TAG_TAG1, align 4
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %101, %28
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i64 %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 4
  br label %100

84:                                               ; preds = %67, %44
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @cvmx_read_csr(i64 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %91, i64 %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %88, i32* %99, align 4
  br label %100

100:                                              ; preds = %84, %72
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %41

104:                                              ; preds = %41
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %24

108:                                              ; preds = %24
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %160, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %163

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i8*, i8** @CVMX_IO_SEG, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @CVMX_OCT_DID_TAG_TAG2, align 4
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %156, %113
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, 2
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @cvmx_read_csr(i64 %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %147, i64 %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  store i8* %144, i8** %155, align 8
  br label %156

156:                                              ; preds = %129
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %126

159:                                              ; preds = %126
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %109

163:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %241, %163
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 16
  br i1 %166, label %167, label %244

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load i8*, i8** @CVMX_IO_SEG, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* @CVMX_OCT_DID_TAG_TAG3, align 4
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %237, %167
  %181 = load i32, i32* %11, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %240

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, 2
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %183
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load i32, i32* %10, align 4
  %207 = icmp sge i32 %206, 8
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %211, i64 %213
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  store i32 -1, i32* %219, align 4
  br label %236

220:                                              ; preds = %205, %200, %183
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @cvmx_read_csr(i64 %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %227, i64 %229
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  store i32 %224, i32* %235, align 4
  br label %236

236:                                              ; preds = %220, %208
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %180

240:                                              ; preds = %180
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %164

244:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %20
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @cvmx_pow_get_num_entries(...) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
