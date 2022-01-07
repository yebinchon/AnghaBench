; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64*, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64*, i32, i32, i32, i32 }

@ZSTDv07_REP_INIT = common dso_local global i64 0, align 8
@corruption_detected = common dso_local global i32 0, align 4
@BITv07_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64, i8*, i64)* @ZSTDv07_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv07_decompressSequences(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_5__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %13, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %14, align 8
  store i32* %44, i32** %16, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %18, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %19, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %20, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %21, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %22, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %23, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %24, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @ZSTDv07_decodeSeqHeaders(i32* %25, i32* %75, i32* %76, i32* %77, i32 %80, i32* %81, i64 %82)
  store i64 %83, i64* %26, align 8
  %84 = load i64, i64* %26, align 8
  %85 = call i64 @ZSTDv07_isError(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %5
  %88 = load i64, i64* %26, align 8
  store i64 %88, i64* %6, align 8
  br label %235

89:                                               ; preds = %5
  %90 = load i64, i64* %26, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 %90
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %25, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %203

95:                                               ; preds = %89
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  store i64 0, i64* %28, align 8
  br label %98

98:                                               ; preds = %113, %95
  %99 = load i64, i64* %28, align 8
  %100 = load i64, i64* @ZSTDv07_REP_INIT, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %28, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %28, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %102
  %114 = load i64, i64* %28, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %28, align 8
  br label %98

116:                                              ; preds = %98
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %118 = load i32*, i32** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i64 @BITv07_initDStream(i32* %117, i32* %118, i32 %125)
  store i64 %126, i64* %29, align 8
  %127 = load i64, i64* %29, align 8
  %128 = call i64 @ERR_isError(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i32, i32* @corruption_detected, align 4
  %132 = call i64 @ERROR(i32 %131)
  store i64 %132, i64* %6, align 8
  br label %235

133:                                              ; preds = %116
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %136 = load i32*, i32** %19, align 8
  %137 = call i32 @FSEv07_initDState(i32* %134, i32* %135, i32* %136)
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %140 = load i32*, i32** %21, align 8
  %141 = call i32 @FSEv07_initDState(i32* %138, i32* %139, i32* %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 @FSEv07_initDState(i32* %142, i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %173, %133
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %148 = call i64 @BITv07_reloadDStream(i32* %147)
  %149 = load i64, i64* @BITv07_DStream_completed, align 8
  %150 = icmp sle i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %25, align 4
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %146
  %155 = phi i1 [ false, %146 ], [ %153, %151 ]
  br i1 %155, label %156, label %177

156:                                              ; preds = %154
  %157 = load i32, i32* %25, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %25, align 4
  %159 = call i32 @ZSTDv07_decodeSequence(%struct.TYPE_5__* %27)
  store i32 %159, i32* %30, align 4
  %160 = load i32*, i32** %16, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = load i32, i32* %30, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = load i32*, i32** %22, align 8
  %165 = load i32*, i32** %23, align 8
  %166 = load i32*, i32** %24, align 8
  %167 = call i64 @ZSTDv07_execSequence(i32* %160, i32* %161, i32 %162, i32** %17, i32* %163, i32* %164, i32* %165, i32* %166)
  store i64 %167, i64* %31, align 8
  %168 = load i64, i64* %31, align 8
  %169 = call i64 @ZSTDv07_isError(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %156
  %172 = load i64, i64* %31, align 8
  store i64 %172, i64* %6, align 8
  br label %235

173:                                              ; preds = %156
  %174 = load i64, i64* %31, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 %174
  store i32* %176, i32** %16, align 8
  br label %146

177:                                              ; preds = %154
  %178 = load i32, i32* %25, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* @corruption_detected, align 4
  %182 = call i64 @ERROR(i32 %181)
  store i64 %182, i64* %6, align 8
  br label %235

183:                                              ; preds = %177
  store i64 0, i64* %32, align 8
  br label %184

184:                                              ; preds = %199, %183
  %185 = load i64, i64* %32, align 8
  %186 = load i64, i64* @ZSTDv07_REP_INIT, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* %32, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %32, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  store i64 %193, i64* %198, align 8
  br label %199

199:                                              ; preds = %188
  %200 = load i64, i64* %32, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %32, align 8
  br label %184

202:                                              ; preds = %184
  br label %203

203:                                              ; preds = %202, %89
  %204 = load i32*, i32** %18, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  store i64 %209, i64* %33, align 8
  %210 = load i64, i64* %33, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i32*, i32** %16, align 8
  %213 = ptrtoint i32* %211 to i64
  %214 = ptrtoint i32* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 4
  %217 = icmp ugt i64 %210, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %203
  %219 = load i32, i32* @dstSize_tooSmall, align 4
  %220 = call i64 @ERROR(i32 %219)
  store i64 %220, i64* %6, align 8
  br label %235

221:                                              ; preds = %203
  %222 = load i32*, i32** %16, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load i64, i64* %33, align 8
  %225 = call i32 @memcpy(i32* %222, i32* %223, i64 %224)
  %226 = load i64, i64* %33, align 8
  %227 = load i32*, i32** %16, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 %226
  store i32* %228, i32** %16, align 8
  %229 = load i32*, i32** %16, align 8
  %230 = load i32*, i32** %14, align 8
  %231 = ptrtoint i32* %229 to i64
  %232 = ptrtoint i32* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 4
  store i64 %234, i64* %6, align 8
  br label %235

235:                                              ; preds = %221, %218, %180, %171, %130, %87
  %236 = load i64, i64* %6, align 8
  ret i64 %236
}

declare dso_local i64 @ZSTDv07_decodeSeqHeaders(i32*, i32*, i32*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTDv07_isError(i64) #1

declare dso_local i64 @BITv07_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSEv07_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BITv07_reloadDStream(i32*) #1

declare dso_local i32 @ZSTDv07_decodeSequence(%struct.TYPE_5__*) #1

declare dso_local i64 @ZSTDv07_execSequence(i32*, i32*, i32, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
