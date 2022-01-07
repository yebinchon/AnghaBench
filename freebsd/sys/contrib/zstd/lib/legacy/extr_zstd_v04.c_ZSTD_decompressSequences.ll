; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_ZSTD_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_ZSTD_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@corruption_detected = common dso_local global i32 0, align 4
@BIT_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8*, i64, i8*, i64)* @ZSTD_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressSequences(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_9__, align 4
  %30 = alloca %struct.TYPE_10__, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %13, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %16, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %19, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %20, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %23, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %24, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %25, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %26, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %27, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %28, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i64 @ZSTD_decodeSeqHeaders(i32* %21, i32** %22, i64* %18, i32* %74, i32* %75, i32* %76, i32* %77, i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i64 @ZSTD_isError(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %5
  %90 = load i64, i64* %17, align 8
  store i64 %90, i64* %6, align 8
  br label %213

91:                                               ; preds = %5
  %92 = load i64, i64* %17, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %12, align 8
  %95 = call i32 @memset(%struct.TYPE_9__* %29, i32 0, i32 4)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 4, i32* %96, align 4
  %97 = load i32*, i32** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  store i32* %97, i32** %98, align 8
  %99 = load i32*, i32** %22, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  store i32* %101, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 4, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i64 @BIT_initDStream(i32* %104, i32* %105, i32 %112)
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i64 @ERR_isError(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %91
  %118 = load i32, i32* @corruption_detected, align 4
  %119 = call i64 @ERROR(i32 %118)
  store i64 %119, i64* %6, align 8
  br label %213

120:                                              ; preds = %91
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %123 = load i32*, i32** %23, align 8
  %124 = call i32 @FSE_initDState(i32* %121, i32* %122, i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %127 = load i32*, i32** %25, align 8
  %128 = call i32 @FSE_initDState(i32* %125, i32* %126, i32* %127)
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %131 = load i32*, i32** %24, align 8
  %132 = call i32 @FSE_initDState(i32* %129, i32* %130, i32* %131)
  br label %133

133:                                              ; preds = %161, %120
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %135 = call i64 @BIT_reloadDStream(i32* %134)
  %136 = load i64, i64* @BIT_DStream_completed, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi i1 [ false, %133 ], [ %140, %138 ]
  br i1 %142, label %143, label %165

143:                                              ; preds = %141
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %21, align 4
  %146 = call i32 @ZSTD_decodeSequence(%struct.TYPE_9__* %29, %struct.TYPE_10__* %30)
  %147 = load i32*, i32** %15, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = load i32*, i32** %26, align 8
  %151 = load i32*, i32** %27, align 8
  %152 = load i32*, i32** %28, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @ZSTD_execSequence(i32* %147, i32* %148, i32 %154, i32** %19, i32* %149, i32* %150, i32* %151, i32* %152)
  store i64 %155, i64* %31, align 8
  %156 = load i64, i64* %31, align 8
  %157 = call i64 @ZSTD_isError(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %143
  %160 = load i64, i64* %31, align 8
  store i64 %160, i64* %6, align 8
  br label %213

161:                                              ; preds = %143
  %162 = load i64, i64* %31, align 8
  %163 = load i32*, i32** %15, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 %162
  store i32* %164, i32** %15, align 8
  br label %133

165:                                              ; preds = %141
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %167 = call i32 @BIT_endOfDStream(i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @corruption_detected, align 4
  %171 = call i64 @ERROR(i32 %170)
  store i64 %171, i64* %6, align 8
  br label %213

172:                                              ; preds = %165
  %173 = load i32*, i32** %20, align 8
  %174 = load i32*, i32** %19, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  store i64 %178, i64* %32, align 8
  %179 = load i32*, i32** %19, align 8
  %180 = load i32*, i32** %20, align 8
  %181 = icmp ugt i32* %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  %183 = load i32, i32* @corruption_detected, align 4
  %184 = call i64 @ERROR(i32 %183)
  store i64 %184, i64* %6, align 8
  br label %213

185:                                              ; preds = %172
  %186 = load i32*, i32** %15, align 8
  %187 = load i64, i64* %32, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32*, i32** %16, align 8
  %190 = icmp ugt i32* %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @dstSize_tooSmall, align 4
  %193 = call i64 @ERROR(i32 %192)
  store i64 %193, i64* %6, align 8
  br label %213

194:                                              ; preds = %185
  %195 = load i32*, i32** %15, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = icmp ne i32* %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i32*, i32** %15, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = load i64, i64* %32, align 8
  %202 = call i32 @memcpy(i32* %199, i32* %200, i64 %201)
  br label %203

203:                                              ; preds = %198, %194
  %204 = load i64, i64* %32, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 %204
  store i32* %206, i32** %15, align 8
  %207 = load i32*, i32** %15, align 8
  %208 = load i32*, i32** %14, align 8
  %209 = ptrtoint i32* %207 to i64
  %210 = ptrtoint i32* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 4
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %203, %191, %182, %169, %159, %117, %89
  %214 = load i64, i64* %6, align 8
  ret i64 %214
}

declare dso_local i64 @ZSTD_decodeSeqHeaders(i32*, i32**, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @BIT_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @ZSTD_decodeSequence(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTD_execSequence(i32*, i32*, i32, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIT_endOfDStream(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
