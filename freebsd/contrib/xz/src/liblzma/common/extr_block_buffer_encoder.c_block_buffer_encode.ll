; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_buffer_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_buffer_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32*, i64, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@LZMA_OPTIONS_ERROR = common dso_local global i64 0, align 8
@LZMA_CHECK_ID_MAX = common dso_local global i32 0, align 4
@LZMA_UNSUPPORTED_CHECK = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@LZMA_BUF_ERROR = common dso_local global i64 0, align 8
@LZMA_DATA_ERROR = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32*, i32*, i64, i32*, i64*, i64, i32)* @block_buffer_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_buffer_encode(%struct.TYPE_12__* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i64*, i64** %15, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i64*, i64** %15, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %33, %30, %27, %8
  %42 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %42, i64* %9, align 8
  br label %219

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @LZMA_OPTIONS_ERROR, align 8
  store i64 %49, i64* %9, align 8
  br label %219

50:                                               ; preds = %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @LZMA_CHECK_ID_MAX, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %50
  %66 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %66, i64* %9, align 8
  br label %219

67:                                               ; preds = %60, %57
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @lzma_check_is_supported(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load i64, i64* @LZMA_UNSUPPORTED_CHECK, align 8
  store i64 %74, i64* %9, align 8
  br label %219

75:                                               ; preds = %67
  %76 = load i64, i64* %16, align 8
  %77 = load i64*, i64** %15, align 8
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %76, %78
  %80 = and i64 %79, 3
  %81 = load i64, i64* %16, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %16, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @lzma_check_size(i64 %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* @UINT32_MAX, align 8
  %89 = icmp ne i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64, i64* %16, align 8
  %93 = load i64*, i64** %15, align 8
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %92, %94
  %96 = load i64, i64* %18, align 8
  %97 = icmp ule i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %75
  %99 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %99, i64* %9, align 8
  br label %219

100:                                              ; preds = %75
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %16, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @lzma2_bound(i64 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i64, i64* @LZMA_DATA_ERROR, align 8
  store i64 %116, i64* %9, align 8
  br label %219

117:                                              ; preds = %100
  %118 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %118, i64* %19, align 8
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i64*, i64** %15, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i64 @block_encode_normal(%struct.TYPE_12__* %122, i32* %123, i32* %124, i64 %125, i32* %126, i64* %127, i64 %128)
  store i64 %129, i64* %19, align 8
  br label %130

130:                                              ; preds = %121, %117
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* @LZMA_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load i64, i64* %19, align 8
  %136 = load i64, i64* @LZMA_BUF_ERROR, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* %19, align 8
  store i64 %139, i64* %9, align 8
  br label %219

140:                                              ; preds = %134
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i64*, i64** %15, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @block_encode_uncompressed(%struct.TYPE_12__* %141, i32* %142, i64 %143, i32* %144, i64* %145, i64 %146)
  %148 = call i32 @return_if_error(i32 %147)
  br label %149

149:                                              ; preds = %140, %130
  %150 = load i64*, i64** %15, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = icmp ule i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %20, align 8
  br label %159

159:                                              ; preds = %175, %149
  %160 = load i64, i64* %20, align 8
  %161 = and i64 %160, 3
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i64*, i64** %15, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %16, align 8
  %167 = icmp ult i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32*, i32** %14, align 8
  %171 = load i64*, i64** %15, align 8
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %163
  %176 = load i64, i64* %20, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %20, align 8
  br label %159

178:                                              ; preds = %159
  %179 = load i64, i64* %18, align 8
  %180 = icmp ugt i64 %179, 0
  br i1 %180, label %181, label %217

181:                                              ; preds = %178
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @lzma_check_init(%struct.TYPE_11__* %21, i64 %184)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i64, i64* %13, align 8
  %191 = call i32 @lzma_check_update(%struct.TYPE_11__* %21, i64 %188, i32* %189, i64 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @lzma_check_finish(%struct.TYPE_11__* %21, i64 %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %18, align 8
  %203 = call i32 @memcpy(i32* %198, i32 %201, i64 %202)
  %204 = load i32*, i32** %14, align 8
  %205 = load i64*, i64** %15, align 8
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* %18, align 8
  %212 = call i32 @memcpy(i32* %207, i32 %210, i64 %211)
  %213 = load i64, i64* %18, align 8
  %214 = load i64*, i64** %15, align 8
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, %213
  store i64 %216, i64* %214, align 8
  br label %217

217:                                              ; preds = %181, %178
  %218 = load i64, i64* @LZMA_OK, align 8
  store i64 %218, i64* %9, align 8
  br label %219

219:                                              ; preds = %217, %138, %115, %98, %73, %65, %48, %41
  %220 = load i64, i64* %9, align 8
  ret i64 %220
}

declare dso_local i32 @lzma_check_is_supported(i64) #1

declare dso_local i64 @lzma_check_size(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lzma2_bound(i64) #1

declare dso_local i64 @block_encode_normal(%struct.TYPE_12__*, i32*, i32*, i64, i32*, i64*, i64) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @block_encode_uncompressed(%struct.TYPE_12__*, i32*, i64, i32*, i64*, i64) #1

declare dso_local i32 @lzma_check_init(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @lzma_check_update(%struct.TYPE_11__*, i64, i32*, i64) #1

declare dso_local i32 @lzma_check_finish(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
