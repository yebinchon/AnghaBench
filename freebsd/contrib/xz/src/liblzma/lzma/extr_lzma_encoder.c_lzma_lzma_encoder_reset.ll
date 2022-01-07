; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder.c_lzma_lzma_encoder_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder.c_lzma_lzma_encoder_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i64*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@STATE_LIT_LIT = common dso_local global i32 0, align 4
@REPS = common dso_local global i64 0, align 8
@STATES = common dso_local global i64 0, align 8
@FULL_DISTANCES = common dso_local global i64 0, align 8
@DIST_MODEL_END = common dso_local global i64 0, align 8
@DIST_STATES = common dso_local global i64 0, align 8
@DIST_SLOT_BITS = common dso_local global i32 0, align 4
@ALIGN_BITS = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_lzma_encoder_reset(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @is_options_valid(%struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %208

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = sub i32 %20, 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 22
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = sub i32 %32, 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 21
  %38 = call i32 @rc_reset(i32* %37)
  %39 = load i32, i32* @STATE_LIT_LIT, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 8
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %52, %16
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @REPS, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 19
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %42

55:                                               ; preds = %42
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 18
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @literal_init(i32 %58, i32 %61, i32 %64)
  store i64 0, i64* %7, align 8
  br label %66

66:                                               ; preds = %131, %55
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @STATES, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %134

70:                                               ; preds = %66
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %99, %70
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = zext i32 %75 to i64
  %77 = icmp ule i64 %72, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 17
  %81 = load i32**, i32*** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32*, i32** %81, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bit_reset(i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 16
  %91 = load i32**, i32*** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bit_reset(i32 %97)
  br label %99

99:                                               ; preds = %78
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %71

102:                                              ; preds = %71
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 15
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bit_reset(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 14
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bit_reset(i32 %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 13
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bit_reset(i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 12
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @bit_reset(i32 %129)
  br label %131

131:                                              ; preds = %102
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  br label %66

134:                                              ; preds = %66
  store i64 0, i64* %9, align 8
  br label %135

135:                                              ; preds = %149, %134
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* @FULL_DISTANCES, align 8
  %138 = load i64, i64* @DIST_MODEL_END, align 8
  %139 = sub i64 %137, %138
  %140 = icmp ult i64 %136, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @bit_reset(i32 %147)
  br label %149

149:                                              ; preds = %141
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %9, align 8
  br label %135

152:                                              ; preds = %135
  store i64 0, i64* %10, align 8
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* @DIST_STATES, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 10
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DIST_SLOT_BITS, align 4
  %165 = call i32 @bittree_reset(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %153

169:                                              ; preds = %153
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ALIGN_BITS, align 4
  %174 = call i32 @bittree_reset(i32 %172, i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 1, %179
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @length_encoder_reset(i32* %176, i32 %180, i32 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 1, %189
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @length_encoder_reset(i32* %186, i32 %190, i32 %193)
  %195 = load i32, i32* @UINT32_MAX, align 4
  %196 = sdiv i32 %195, 2
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @UINT32_MAX, align 4
  %200 = sdiv i32 %199, 2
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* @LZMA_OK, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %169, %14
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @is_options_valid(%struct.TYPE_6__*) #1

declare dso_local i32 @rc_reset(i32*) #1

declare dso_local i32 @literal_init(i32, i32, i32) #1

declare dso_local i32 @bit_reset(i32) #1

declare dso_local i32 @bittree_reset(i32, i32) #1

declare dso_local i32 @length_encoder_reset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
