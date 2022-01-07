; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@corruption_detected = common dso_local global i32 0, align 4
@BIT_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressSequences(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_8__, align 4
  %29 = alloca %struct.TYPE_9__, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %12, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %14, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %17, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %21, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %24, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %25, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %26, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %27, align 8
  %67 = load i32*, i32** %24, align 8
  %68 = load i32*, i32** %25, align 8
  %69 = load i32*, i32** %26, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i64 @ZSTD_decodeSeqHeaders(i32* %22, i32** %23, i64* %19, i32* %67, i32* %68, i32* %69, i32* %70, i32 %77)
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %18, align 8
  %80 = call i64 @ZSTD_isError(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %5
  %83 = load i64, i64* %18, align 8
  store i64 %83, i64* %6, align 8
  br label %210

84:                                               ; preds = %5
  %85 = load i64, i64* %18, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %13, align 8
  %88 = call i32 @memset(%struct.TYPE_8__* %28, i32 0, i32 4)
  %89 = load i32*, i32** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  store i32* %89, i32** %90, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 4, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 4, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i64 @BIT_initDStream(i32* %97, i32* %98, i32 %105)
  store i64 %106, i64* %18, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i64 @ERR_isError(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %84
  %111 = load i32, i32* @corruption_detected, align 4
  %112 = call i64 @ERROR(i32 %111)
  store i64 %112, i64* %6, align 8
  br label %210

113:                                              ; preds = %84
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %116 = load i32*, i32** %24, align 8
  %117 = call i32 @FSE_initDState(i32* %114, i32* %115, i32* %116)
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %120 = load i32*, i32** %26, align 8
  %121 = call i32 @FSE_initDState(i32* %118, i32* %119, i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %124 = load i32*, i32** %25, align 8
  %125 = call i32 @FSE_initDState(i32* %122, i32* %123, i32* %124)
  br label %126

126:                                              ; preds = %152, %113
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %128 = call i64 @BIT_reloadDStream(i32* %127)
  %129 = load i64, i64* @BIT_DStream_completed, align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %22, align 4
  %133 = icmp sgt i32 %132, 0
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi i1 [ false, %126 ], [ %133, %131 ]
  br i1 %135, label %136, label %156

136:                                              ; preds = %134
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %22, align 4
  %139 = call i32 @ZSTD_decodeSequence(%struct.TYPE_8__* %28, %struct.TYPE_9__* %29)
  %140 = load i32*, i32** %16, align 8
  %141 = load i32*, i32** %21, align 8
  %142 = load i32*, i32** %27, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ZSTD_execSequence(i32* %140, i32 %145, i32** %20, i32* %141, i32* %142, i32* %143)
  store i64 %146, i64* %30, align 8
  %147 = load i64, i64* %30, align 8
  %148 = call i64 @ZSTD_isError(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %136
  %151 = load i64, i64* %30, align 8
  store i64 %151, i64* %6, align 8
  br label %210

152:                                              ; preds = %136
  %153 = load i64, i64* %30, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %16, align 8
  br label %126

156:                                              ; preds = %134
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %158 = call i32 @BIT_endOfDStream(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @corruption_detected, align 4
  %162 = call i64 @ERROR(i32 %161)
  store i64 %162, i64* %6, align 8
  br label %210

163:                                              ; preds = %156
  %164 = load i32, i32* %22, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @corruption_detected, align 4
  %168 = call i64 @ERROR(i32 %167)
  store i64 %168, i64* %6, align 8
  br label %210

169:                                              ; preds = %163
  %170 = load i32*, i32** %21, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = ptrtoint i32* %170 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  store i64 %175, i64* %31, align 8
  %176 = load i32*, i32** %20, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = icmp ugt i32* %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = load i32, i32* @corruption_detected, align 4
  %181 = call i64 @ERROR(i32 %180)
  store i64 %181, i64* %6, align 8
  br label %210

182:                                              ; preds = %169
  %183 = load i32*, i32** %16, align 8
  %184 = load i64, i64* %31, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32*, i32** %17, align 8
  %187 = icmp ugt i32* %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @dstSize_tooSmall, align 4
  %190 = call i64 @ERROR(i32 %189)
  store i64 %190, i64* %6, align 8
  br label %210

191:                                              ; preds = %182
  %192 = load i32*, i32** %16, align 8
  %193 = load i32*, i32** %20, align 8
  %194 = icmp ne i32* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i32*, i32** %16, align 8
  %197 = load i32*, i32** %20, align 8
  %198 = load i64, i64* %31, align 8
  %199 = call i32 @memmove(i32* %196, i32* %197, i64 %198)
  br label %200

200:                                              ; preds = %195, %191
  %201 = load i64, i64* %31, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 %201
  store i32* %203, i32** %16, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  store i64 %209, i64* %6, align 8
  br label %210

210:                                              ; preds = %200, %188, %179, %166, %160, %150, %110, %82
  %211 = load i64, i64* %6, align 8
  ret i64 %211
}

declare dso_local i64 @ZSTD_decodeSeqHeaders(i32*, i32**, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @BIT_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @ZSTD_decodeSequence(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTD_execSequence(i32*, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @BIT_endOfDStream(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
