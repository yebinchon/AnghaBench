; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_fse_compress.c_FSE_normalizeCount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_fse_compress.c_FSE_normalizeCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_DEFAULT_TABLELOG = common dso_local global i32 0, align 4
@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@FSE_MAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@FSE_normalizeCount.rtbTable = internal constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_normalizeCount(i16* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i16* %0, i16** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @FSE_DEFAULT_TABLELOG, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @GENERIC, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %6, align 8
  br label %211

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FSE_MAX_TABLELOG, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @tableLog_tooLarge, align 4
  %40 = call i64 @ERROR(i32 %39)
  store i64 %40, i64* %6, align 8
  br label %211

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @FSE_minTableLog(i64 %43, i32 %44)
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @GENERIC, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %6, align 8
  br label %211

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 62, %51
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %10, align 8
  %54 = udiv i64 0, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 20
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i16 0, i16* %18, align 2
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = lshr i64 %63, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %169, %50
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %72, label %172

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  br label %211

82:                                               ; preds = %72
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i16*, i16** %7, align 8
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %90, i64 %92
  store i16 0, i16* %93, align 2
  br label %169

94:                                               ; preds = %82
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %16, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ule i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i16*, i16** %7, align 8
  %104 = load i32, i32* %16, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %103, i64 %105
  store i16 -1, i16* %106, align 2
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %15, align 4
  br label %168

109:                                              ; preds = %94
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = mul i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = lshr i32 %116, %117
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %20, align 2
  %120 = load i16, i16* %20, align 2
  %121 = sext i16 %120 to i32
  %122 = icmp slt i32 %121, 8
  br i1 %122, label %123, label %149

123:                                              ; preds = %109
  %124 = load i32, i32* %14, align 4
  %125 = load i16, i16* %20, align 2
  %126 = sext i16 %125 to i64
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* @FSE_normalizeCount.rtbTable, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %124, %128
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %16, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul i32 %134, %135
  %137 = load i16, i16* %20, align 2
  %138 = sext i16 %137 to i32
  %139 = load i32, i32* %12, align 4
  %140 = shl i32 %138, %139
  %141 = sub i32 %136, %140
  %142 = load i32, i32* %21, align 4
  %143 = icmp ugt i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i16, i16* %20, align 2
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %146, %144
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %20, align 2
  br label %149

149:                                              ; preds = %123, %109
  %150 = load i16, i16* %20, align 2
  %151 = sext i16 %150 to i32
  %152 = load i16, i16* %18, align 2
  %153 = sext i16 %152 to i32
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i16, i16* %20, align 2
  store i16 %156, i16* %18, align 2
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = load i16, i16* %20, align 2
  %160 = load i16*, i16** %7, align 8
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %160, i64 %162
  store i16 %159, i16* %163, align 2
  %164 = load i16, i16* %20, align 2
  %165 = sext i16 %164 to i32
  %166 = load i32, i32* %15, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %158, %102
  br label %169

169:                                              ; preds = %168, %89
  %170 = load i32, i32* %16, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %68

172:                                              ; preds = %68
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 0, %173
  %175 = load i16*, i16** %7, align 8
  %176 = load i32, i32* %17, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i16, i16* %175, i64 %177
  %179 = load i16, i16* %178, align 2
  %180 = sext i16 %179 to i32
  %181 = ashr i32 %180, 1
  %182 = icmp sge i32 %174, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %172
  %184 = load i16*, i16** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @FSE_normalizeM2(i16* %184, i32 %185, i32* %186, i64 %187, i32 %188)
  store i64 %189, i64* %22, align 8
  %190 = load i64, i64* %22, align 8
  %191 = call i64 @FSE_isError(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = load i64, i64* %22, align 8
  store i64 %194, i64* %6, align 8
  br label %211

195:                                              ; preds = %183
  br label %208

196:                                              ; preds = %172
  %197 = load i32, i32* %15, align 4
  %198 = trunc i32 %197 to i16
  %199 = sext i16 %198 to i32
  %200 = load i16*, i16** %7, align 8
  %201 = load i32, i32* %17, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i16, i16* %200, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = add nsw i32 %205, %199
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %203, align 2
  br label %208

208:                                              ; preds = %196, %195
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %6, align 8
  br label %211

211:                                              ; preds = %208, %193, %81, %47, %38, %31
  %212 = load i64, i64* %6, align 8
  ret i64 %212
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_minTableLog(i64, i32) #1

declare dso_local i64 @FSE_normalizeM2(i16*, i32, i32*, i64, i32) #1

declare dso_local i64 @FSE_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
