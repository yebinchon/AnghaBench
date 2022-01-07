; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8** }

@REPCODE_STARTVALUE = common dso_local global i8* null, align 8
@ZSTDv06_REP_INIT = common dso_local global i64 0, align 8
@corruption_detected = common dso_local global i32 0, align 4
@BITv06_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8*, i64, i8*, i64)* @ZSTDv06_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv06_decompressSequences(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
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
  %27 = alloca %struct.TYPE_9__, align 8
  %28 = alloca %struct.TYPE_10__, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
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
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %14, align 8
  store i32* %43, i32** %16, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %17, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %18, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %19, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %20, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %21, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %22, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %23, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %24, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @ZSTDv06_decodeSeqHeaders(i32* %25, i32* %74, i32* %75, i32* %76, i32 %79, i32* %80, i64 %81)
  store i64 %82, i64* %26, align 8
  %83 = load i64, i64* %26, align 8
  %84 = call i64 @ZSTDv06_isError(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %5
  %87 = load i64, i64* %26, align 8
  store i64 %87, i64* %6, align 8
  br label %216

88:                                               ; preds = %5
  %89 = load i64, i64* %26, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %12, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %25, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %180

96:                                               ; preds = %88
  %97 = call i32 @memset(%struct.TYPE_9__* %27, i32 0, i32 24)
  %98 = load i8*, i8** @REPCODE_STARTVALUE, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  store i64 0, i64* %29, align 8
  br label %100

100:                                              ; preds = %110, %96
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* @ZSTDv06_REP_INIT, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i8*, i8** @REPCODE_STARTVALUE, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* %29, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %104
  %111 = load i64, i64* %29, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %29, align 8
  br label %100

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %115 = load i32*, i32** %12, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i64 @BITv06_initDStream(i32* %114, i32* %115, i32 %122)
  store i64 %123, i64* %30, align 8
  %124 = load i64, i64* %30, align 8
  %125 = call i64 @ERR_isError(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load i32, i32* @corruption_detected, align 4
  %129 = call i64 @ERROR(i32 %128)
  store i64 %129, i64* %6, align 8
  br label %216

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %133 = load i32*, i32** %19, align 8
  %134 = call i32 @FSEv06_initDState(i32* %131, i32* %132, i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @FSEv06_initDState(i32* %135, i32* %136, i32* %137)
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @FSEv06_initDState(i32* %139, i32* %140, i32* %141)
  br label %143

143:                                              ; preds = %169, %130
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %145 = call i64 @BITv06_reloadDStream(i32* %144)
  %146 = load i64, i64* @BITv06_DStream_completed, align 8
  %147 = icmp sle i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %25, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %148, %143
  %152 = phi i1 [ false, %143 ], [ %150, %148 ]
  br i1 %152, label %153, label %173

153:                                              ; preds = %151
  %154 = load i32, i32* %25, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %25, align 4
  %156 = call i32 @ZSTDv06_decodeSequence(%struct.TYPE_9__* %27, %struct.TYPE_10__* %28)
  %157 = load i32*, i32** %16, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = load i32*, i32** %22, align 8
  %161 = load i32*, i32** %23, align 8
  %162 = load i32*, i32** %24, align 8
  %163 = call i64 @ZSTDv06_execSequence(i32* %157, i32* %158, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %27, i32** %17, i32* %159, i32* %160, i32* %161, i32* %162)
  store i64 %163, i64* %31, align 8
  %164 = load i64, i64* %31, align 8
  %165 = call i64 @ZSTDv06_isError(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i64, i64* %31, align 8
  store i64 %168, i64* %6, align 8
  br label %216

169:                                              ; preds = %153
  %170 = load i64, i64* %31, align 8
  %171 = load i32*, i32** %16, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 %170
  store i32* %172, i32** %16, align 8
  br label %143

173:                                              ; preds = %151
  %174 = load i32, i32* %25, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* @corruption_detected, align 4
  %178 = call i64 @ERROR(i32 %177)
  store i64 %178, i64* %6, align 8
  br label %216

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %88
  %181 = load i32*, i32** %18, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = ptrtoint i32* %181 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  store i64 %186, i64* %32, align 8
  %187 = load i32*, i32** %17, align 8
  %188 = load i32*, i32** %18, align 8
  %189 = icmp ugt i32* %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i32, i32* @corruption_detected, align 4
  %192 = call i64 @ERROR(i32 %191)
  store i64 %192, i64* %6, align 8
  br label %216

193:                                              ; preds = %180
  %194 = load i32*, i32** %16, align 8
  %195 = load i64, i64* %32, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32*, i32** %15, align 8
  %198 = icmp ugt i32* %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i32, i32* @dstSize_tooSmall, align 4
  %201 = call i64 @ERROR(i32 %200)
  store i64 %201, i64* %6, align 8
  br label %216

202:                                              ; preds = %193
  %203 = load i32*, i32** %16, align 8
  %204 = load i32*, i32** %17, align 8
  %205 = load i64, i64* %32, align 8
  %206 = call i32 @memcpy(i32* %203, i32* %204, i64 %205)
  %207 = load i64, i64* %32, align 8
  %208 = load i32*, i32** %16, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 %207
  store i32* %209, i32** %16, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = ptrtoint i32* %210 to i64
  %213 = ptrtoint i32* %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 4
  store i64 %215, i64* %6, align 8
  br label %216

216:                                              ; preds = %202, %199, %190, %176, %167, %127, %86
  %217 = load i64, i64* %6, align 8
  ret i64 %217
}

declare dso_local i64 @ZSTDv06_decodeSeqHeaders(i32*, i32*, i32*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTDv06_isError(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @BITv06_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSEv06_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BITv06_reloadDStream(i32*) #1

declare dso_local i32 @ZSTDv06_decodeSequence(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTDv06_execSequence(i32*, i32*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
