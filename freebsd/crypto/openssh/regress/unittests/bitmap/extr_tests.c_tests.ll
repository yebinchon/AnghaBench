; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/bitmap/extr_tests.c_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/bitmap/extr_tests.c_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bitmap_new\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bitmap_set_bit / bitmap_test_bit\00", align 1
@NTESTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"set %d/%d/%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"match %d/%d/%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"length %d/%d/%d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"serialise %d/%d/%d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"deserialise %d/%d/%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"clear %d/%d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i32], align 16
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i32, align 4
  %11 = call i32 @TEST_START(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.bitmap* (...) @bitmap_new()
  store %struct.bitmap* %12, %struct.bitmap** %1, align 8
  %13 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %14 = call i32 @ASSERT_PTR_NE(%struct.bitmap* %13, i32* null)
  %15 = call %struct.bitmap* (...) @BN_new()
  store %struct.bitmap* %15, %struct.bitmap** %2, align 8
  %16 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %17 = call i32 @ASSERT_PTR_NE(%struct.bitmap* %16, i32* null)
  %18 = call i32 (...) @TEST_DONE()
  %19 = call i32 @TEST_START(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %20

20:                                               ; preds = %257, %0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NTESTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %260

24:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %25

25:                                               ; preds = %253, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NTESTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %256

29:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %30

30:                                               ; preds = %249, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NTESTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %252

34:                                               ; preds = %30
  %35 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %36 = call i32 @bitmap_zero(%struct.bitmap* %35)
  %37 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %38 = call i32 @BN_clear(%struct.bitmap* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @test_subtest_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @bitmap_set_bit(%struct.bitmap* %46, i32 %47)
  %49 = call i32 @ASSERT_INT_EQ(i32 %48, i32 0)
  %50 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @BN_set_bit(%struct.bitmap* %50, i32 %51)
  %53 = call i32 @ASSERT_INT_EQ(i32 %52, i32 1)
  br label %54

54:                                               ; preds = %45, %34
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @bitmap_set_bit(%struct.bitmap* %58, i32 %59)
  %61 = call i32 @ASSERT_INT_EQ(i32 %60, i32 0)
  %62 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @BN_set_bit(%struct.bitmap* %62, i32 %63)
  %65 = call i32 @ASSERT_INT_EQ(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @bitmap_set_bit(%struct.bitmap* %70, i32 %71)
  %73 = call i32 @ASSERT_INT_EQ(i32 %72, i32 0)
  %74 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @BN_set_bit(%struct.bitmap* %74, i32 %75)
  %77 = call i32 @ASSERT_INT_EQ(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %69, %66
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @test_subtest_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %95, %78
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @NTESTS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @BN_is_bit_set(%struct.bitmap* %88, i32 %89)
  %91 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @bitmap_test_bit(%struct.bitmap* %91, i32 %92)
  %94 = call i32 @ASSERT_INT_EQ(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %83

98:                                               ; preds = %83
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @test_subtest_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %104 = call i32 @BN_num_bits(%struct.bitmap* %103)
  %105 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %106 = call i64 @bitmap_nbits(%struct.bitmap* %105)
  %107 = trunc i64 %106 to i32
  %108 = call i32 @ASSERT_INT_EQ(i32 %104, i32 %107)
  %109 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %110 = call i32 @BN_num_bytes(%struct.bitmap* %109)
  %111 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %112 = call i64 @bitmap_nbytes(%struct.bitmap* %111)
  %113 = trunc i64 %112 to i32
  %114 = call i32 @ASSERT_INT_EQ(i32 %110, i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @test_subtest_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %120 = call i64 @bitmap_nbytes(%struct.bitmap* %119)
  store i64 %120, i64* %3, align 8
  %121 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %122 = call i32 @memset(i32* %121, i32 252, i32 4096)
  %123 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %124 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %125 = call i32 @bitmap_to_string(%struct.bitmap* %123, i32* %124, i32 4096)
  %126 = call i32 @ASSERT_INT_EQ(i32 %125, i32 0)
  %127 = load i64, i64* %3, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %138, %98
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 4096
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ASSERT_U8_EQ(i32 %136, i32 252)
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %129

141:                                              ; preds = %129
  %142 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %143 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %144 = call i32 @BN_bn2bin(%struct.bitmap* %142, i32* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @ASSERT_INT_GE(i32 %145, i32 0)
  %147 = load i32, i32* %10, align 4
  %148 = load i64, i64* %3, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @ASSERT_INT_EQ(i32 %147, i32 %149)
  %151 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %152 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %153 = load i64, i64* %3, align 8
  %154 = call i32 @ASSERT_MEM_EQ(i32* %151, i32* %152, i64 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @test_subtest_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %156, i32 %157)
  %159 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %160 = call i32 @bitmap_zero(%struct.bitmap* %159)
  %161 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %162 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %163 = load i64, i64* %3, align 8
  %164 = call i32 @bitmap_from_string(%struct.bitmap* %161, i32* %162, i64 %163)
  %165 = call i32 @ASSERT_INT_EQ(i32 %164, i32 0)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %178, %141
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @NTESTS, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @BN_is_bit_set(%struct.bitmap* %171, i32 %172)
  %174 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @bitmap_test_bit(%struct.bitmap* %174, i32 %175)
  %177 = call i32 @ASSERT_INT_EQ(i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %166

181:                                              ; preds = %166
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @test_subtest_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32 %183, i32 %184)
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %199, %181
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @NTESTS, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @bitmap_set_bit(%struct.bitmap* %191, i32 %192)
  %194 = call i32 @ASSERT_INT_EQ(i32 %193, i32 0)
  %195 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @BN_set_bit(%struct.bitmap* %195, i32 %196)
  %198 = call i32 @ASSERT_INT_EQ(i32 %197, i32 1)
  br label %199

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %186

202:                                              ; preds = %186
  %203 = load i32, i32* %4, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @bitmap_clear_bit(%struct.bitmap* %206, i32 %207)
  %209 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @BN_clear_bit(%struct.bitmap* %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %202
  %213 = load i32, i32* %5, align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @bitmap_clear_bit(%struct.bitmap* %216, i32 %217)
  %219 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @BN_clear_bit(%struct.bitmap* %219, i32 %220)
  br label %222

222:                                              ; preds = %215, %212
  %223 = load i32, i32* %6, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @bitmap_clear_bit(%struct.bitmap* %226, i32 %227)
  %229 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @BN_clear_bit(%struct.bitmap* %229, i32 %230)
  br label %232

232:                                              ; preds = %225, %222
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %245, %232
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @NTESTS, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @BN_is_bit_set(%struct.bitmap* %238, i32 %239)
  %241 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @bitmap_test_bit(%struct.bitmap* %241, i32 %242)
  %244 = call i32 @ASSERT_INT_EQ(i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %237
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %233

248:                                              ; preds = %233
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %30

252:                                              ; preds = %30
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %5, align 4
  br label %25

256:                                              ; preds = %25
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %4, align 4
  br label %20

260:                                              ; preds = %20
  %261 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %262 = call i32 @bitmap_free(%struct.bitmap* %261)
  %263 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %264 = call i32 @BN_free(%struct.bitmap* %263)
  %265 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local %struct.bitmap* @bitmap_new(...) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.bitmap*, i32*) #1

declare dso_local %struct.bitmap* @BN_new(...) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i32 @bitmap_zero(%struct.bitmap*) #1

declare dso_local i32 @BN_clear(%struct.bitmap*) #1

declare dso_local i32 @test_subtest_info(i8*, i32, i32, i32) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @BN_set_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @BN_is_bit_set(%struct.bitmap*, i32) #1

declare dso_local i32 @bitmap_test_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @BN_num_bits(%struct.bitmap*) #1

declare dso_local i64 @bitmap_nbits(%struct.bitmap*) #1

declare dso_local i32 @BN_num_bytes(%struct.bitmap*) #1

declare dso_local i64 @bitmap_nbytes(%struct.bitmap*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bitmap_to_string(%struct.bitmap*, i32*, i32) #1

declare dso_local i32 @ASSERT_U8_EQ(i32, i32) #1

declare dso_local i32 @BN_bn2bin(%struct.bitmap*, i32*) #1

declare dso_local i32 @ASSERT_INT_GE(i32, i32) #1

declare dso_local i32 @ASSERT_MEM_EQ(i32*, i32*, i64) #1

declare dso_local i32 @bitmap_from_string(%struct.bitmap*, i32*, i64) #1

declare dso_local i32 @bitmap_clear_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @BN_clear_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @bitmap_free(%struct.bitmap*) #1

declare dso_local i32 @BN_free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
