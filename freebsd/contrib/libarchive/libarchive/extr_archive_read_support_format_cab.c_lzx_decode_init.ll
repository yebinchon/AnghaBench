; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { %struct.lzx_dec* }
%struct.lzx_dec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@SLOT_BASE = common dso_local global i32 0, align 4
@SLOT_MAX = common dso_local global i32 0, align 4
@slots = common dso_local global i32* null, align 8
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_stream*, i32)* @lzx_decode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_decode_init(%struct.lzx_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzx_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lzx_dec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [18 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.lzx_stream* %0, %struct.lzx_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %15 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %14, i32 0, i32 0
  %16 = load %struct.lzx_dec*, %struct.lzx_dec** %15, align 8
  %17 = icmp eq %struct.lzx_dec* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = call %struct.lzx_dec* @calloc(i32 1, i32 88)
  %20 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %21 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %20, i32 0, i32 0
  store %struct.lzx_dec* %19, %struct.lzx_dec** %21, align 8
  %22 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %23 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %22, i32 0, i32 0
  %24 = load %struct.lzx_dec*, %struct.lzx_dec** %23, align 8
  %25 = icmp eq %struct.lzx_dec* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %3, align 4
  br label %245

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %31 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %30, i32 0, i32 0
  %32 = load %struct.lzx_dec*, %struct.lzx_dec** %31, align 8
  store %struct.lzx_dec* %32, %struct.lzx_dec** %6, align 8
  %33 = load i32, i32* @ARCHIVE_FAILED, align 4
  %34 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %35 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SLOT_BASE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SLOT_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %29
  %44 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %44, i32* %3, align 4
  br label %245

45:                                               ; preds = %39
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  %47 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %48 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %50 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** @slots, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SLOT_BASE, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %62 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %64 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %68 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %70 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %69, i32 0, i32 14
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp eq %struct.TYPE_4__* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %45
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %76 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %73, %45
  %80 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %81 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %80, i32 0, i32 14
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @free(%struct.TYPE_4__* %82)
  %84 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %85 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @malloc(i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_4__*
  %89 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %90 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %89, i32 0, i32 14
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %90, align 8
  %91 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %92 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %91, i32 0, i32 14
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp eq %struct.TYPE_4__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %96, i32* %3, align 4
  br label %245

97:                                               ; preds = %79
  %98 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %99 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %98, i32 0, i32 13
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_4__* %100)
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 8, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @malloc(i32 %105)
  %107 = bitcast i8* %106 to %struct.TYPE_4__*
  %108 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %109 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %108, i32 0, i32 13
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %111 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %110, i32 0, i32 13
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp eq %struct.TYPE_4__* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %115, i32* %3, align 4
  br label %245

116:                                              ; preds = %97
  %117 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %118 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %117, i32 0, i32 7
  %119 = call i32 @lzx_huffman_free(i32* %118)
  br label %120

120:                                              ; preds = %116, %73
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %130, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 18
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [18 x i32], [18 x i32]* %12, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %121

133:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %186, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %189

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %10, align 4
  br label %150

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [18 x i32], [18 x i32]* %12, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %143, %141
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 17
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  store i32 -2, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %161, %153
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = ashr i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %155

164:                                              ; preds = %155
  %165 = load i32, i32* %11, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %167, %164
  br label %169

169:                                              ; preds = %168, %150
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %172 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %171, i32 0, i32 13
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 %170, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %180 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %179, i32 0, i32 13
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 4
  br label %186

186:                                              ; preds = %169
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %134

189:                                              ; preds = %134
  %190 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %191 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %190, i32 0, i32 12
  store i64 0, i64* %191, align 8
  %192 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %193 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %192, i32 0, i32 11
  store i64 0, i64* %193, align 8
  %194 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %195 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %194, i32 0, i32 10
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i64 0, i64* %196, align 8
  %197 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %198 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %197, i32 0, i32 10
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %201 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %200, i32 0, i32 5
  store i32 1, i32* %201, align 4
  %202 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %203 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %202, i32 0, i32 4
  store i32 1, i32* %203, align 8
  %204 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %205 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %204, i32 0, i32 3
  store i32 1, i32* %205, align 4
  %206 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %207 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %206, i32 0, i32 9
  %208 = call i64 @lzx_huffman_init(i32* %207, i32 8, i32 8)
  %209 = load i64, i64* @ARCHIVE_OK, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %189
  %212 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %212, i32* %3, align 4
  br label %245

213:                                              ; preds = %189
  %214 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %215 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %214, i32 0, i32 8
  %216 = call i64 @lzx_huffman_init(i32* %215, i32 20, i32 10)
  %217 = load i64, i64* @ARCHIVE_OK, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %220, i32* %3, align 4
  br label %245

221:                                              ; preds = %213
  %222 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %223 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %222, i32 0, i32 7
  %224 = load i32, i32* %9, align 4
  %225 = shl i32 %224, 3
  %226 = add nsw i32 256, %225
  %227 = call i64 @lzx_huffman_init(i32* %223, i32 %226, i32 16)
  %228 = load i64, i64* @ARCHIVE_OK, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %231, i32* %3, align 4
  br label %245

232:                                              ; preds = %221
  %233 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %234 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %233, i32 0, i32 6
  %235 = call i64 @lzx_huffman_init(i32* %234, i32 249, i32 16)
  %236 = load i64, i64* @ARCHIVE_OK, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %239, i32* %3, align 4
  br label %245

240:                                              ; preds = %232
  %241 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %242 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %241, i32 0, i32 0
  store i32 0, i32* %242, align 8
  %243 = load i64, i64* @ARCHIVE_OK, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %240, %238, %230, %219, %211, %114, %95, %43, %26
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local %struct.lzx_dec* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @lzx_huffman_free(i32*) #1

declare dso_local i64 @lzx_huffman_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
