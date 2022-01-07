; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_copyBlockSequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_copyBlockSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i64 }

@MINMATCH = common dso_local global i64 0, align 8
@ZSTD_REP_NUM = common dso_local global i32 0, align 4
@repStartValue = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ZSTD_copyBlockSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_copyBlockSequences(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call %struct.TYPE_10__* @ZSTD_getSeqStore(%struct.TYPE_13__* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = ptrtoint %struct.TYPE_11__* %17 to i64
  %20 = ptrtoint %struct.TYPE_11__* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 24
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %30
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %36, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %234, %1
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %237

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MINMATCH, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store i64 %74, i64* %78, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %49
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 65536
  store i64 %95, i64* %93, align 8
  br label %109

96:                                               ; preds = %84
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 65536
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %96
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %49
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ZSTD_REP_NUM, align 4
  %117 = icmp ule i32 %115, %116
  br i1 %117, label %118, label %205

118:                                              ; preds = %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load i64, i64* %7, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %129, %134
  store i32 %135, i32* %9, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %118
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ult i32 %147, 3
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %9, align 4
  br label %156

152:                                              ; preds = %142
  %153 = load i64, i64* %7, align 8
  %154 = trunc i64 %153 to i32
  %155 = sub i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %152, %149
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %156, %118
  %164 = load i32, i32* %9, align 4
  %165 = icmp sge i32 %164, -3
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  br label %185

177:                                              ; preds = %163
  %178 = load i32*, i32** @repStartValue, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 0, %179
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  br label %185

185:                                              ; preds = %177, %170
  %186 = phi i32 [ %176, %170 ], [ %184, %177 ]
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = load i64, i64* %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %204

197:                                              ; preds = %185
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add i32 %202, -1
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %197, %185
  br label %213

205:                                              ; preds = %110
  %206 = load i32, i32* @ZSTD_REP_NUM, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub i32 %211, %206
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %205, %204
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %215 = load i64, i64* %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %8, align 8
  %221 = load i64, i64* %8, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  store i32 %222, i32* %226, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %8, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %8, align 8
  br label %234

234:                                              ; preds = %213
  %235 = load i64, i64* %7, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %7, align 8
  br label %45

237:                                              ; preds = %45
  %238 = load i64, i64* %5, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, %238
  store i64 %243, i64* %241, align 8
  ret void
}

declare dso_local %struct.TYPE_10__* @ZSTD_getSeqStore(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
