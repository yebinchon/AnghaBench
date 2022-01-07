; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_fuzz.c_sshbuf_fuzz_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_fuzz.c_sshbuf_fuzz_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fuzz alloc/dealloc\00", align 1
@NUM_FUZZ_TESTS = common dso_local global i64 0, align 8
@SSHBUF_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_fuzz_tests() #0 {
  %1 = alloca %struct.sshbuf*, align 8
  %2 = alloca %struct.sshbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %9, %struct.sshbuf** %1, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %11 = call i64 @sshbuf_set_max_size(%struct.sshbuf* %10, i32 16384)
  %12 = call i32 @ASSERT_INT_EQ(i64 %11, i32 0)
  %13 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %14 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %13, i32* null)
  %15 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %16 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %15)
  %17 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %16, i32* null)
  %18 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %19 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %18)
  %20 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %21 = call i64 @sshbuf_len(%struct.sshbuf* %20)
  %22 = call i32 @ASSERT_MEM_ZERO_NE(%struct.sshbuf* %19, i64 %21)
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %218, %0
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @NUM_FUZZ_TESTS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %221

27:                                               ; preds = %23
  %28 = call i32 @arc4random_uniform(i32 10)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %27
  %33 = call i32 @arc4random_uniform(i32 10)
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %205, %86, %32
  %36 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %37 = call i64 @sshbuf_avail(%struct.sshbuf* %36)
  store i64 %37, i64* %3, align 8
  %38 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %39 = call i64 @sshbuf_len(%struct.sshbuf* %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @sshbuf_reserve(%struct.sshbuf* %40, i64 %41, %struct.sshbuf** %2)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %47 = call i32 @ASSERT_PTR_EQ(%struct.sshbuf* %46, i32* null)
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ASSERT_SIZE_T_LT(i64 %48, i64 %49)
  %51 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %52 = call i64 @sshbuf_avail(%struct.sshbuf* %51)
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @ASSERT_SIZE_T_EQ(i64 %52, i64 %53)
  %55 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %56 = call i64 @sshbuf_len(%struct.sshbuf* %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @ASSERT_SIZE_T_EQ(i64 %56, i64 %57)
  br label %82

59:                                               ; preds = %35
  %60 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %61 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %60, i32* null)
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @ASSERT_SIZE_T_GE(i64 %62, i64 %63)
  %65 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %66 = call i64 @sshbuf_avail(%struct.sshbuf* %65)
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %67, %68
  %70 = call i32 @ASSERT_SIZE_T_EQ(i64 %66, i64 %69)
  %71 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %72 = call i64 @sshbuf_len(%struct.sshbuf* %71)
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %73, %74
  %76 = call i32 @ASSERT_SIZE_T_EQ(i64 %72, i64 %75)
  %77 = load %struct.sshbuf*, %struct.sshbuf** %2, align 8
  %78 = call i32 @arc4random_uniform(i32 255)
  %79 = add nsw i32 %78, 1
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @memset(%struct.sshbuf* %77, i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %59, %45
  br label %211

83:                                               ; preds = %27
  %84 = load i64, i64* %6, align 8
  %85 = icmp ult i64 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = call i32 @arc4random_uniform(i32 8192)
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %6, align 8
  br label %35

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8
  %91 = icmp eq i64 %90, 3
  br i1 %91, label %92, label %139

92:                                               ; preds = %89
  %93 = call i32 @arc4random_uniform(i32 10)
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %142, %92
  %96 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %97 = call i64 @sshbuf_avail(%struct.sshbuf* %96)
  store i64 %97, i64* %3, align 8
  %98 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %99 = call i64 @sshbuf_len(%struct.sshbuf* %98)
  store i64 %99, i64* %4, align 8
  %100 = call i32 (...) @arc4random()
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 (%struct.sshbuf*, i64)* @sshbuf_consume, i32 (%struct.sshbuf*, i64)* @sshbuf_consume_end
  %105 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 %104(%struct.sshbuf* %105, i64 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %95
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @ASSERT_SIZE_T_LT(i64 %111, i64 %112)
  %114 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %115 = call i64 @sshbuf_avail(%struct.sshbuf* %114)
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @ASSERT_SIZE_T_EQ(i64 %115, i64 %116)
  %118 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %119 = call i64 @sshbuf_len(%struct.sshbuf* %118)
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @ASSERT_SIZE_T_EQ(i64 %119, i64 %120)
  br label %138

122:                                              ; preds = %95
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @ASSERT_SIZE_T_GE(i64 %123, i64 %124)
  %126 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %127 = call i64 @sshbuf_avail(%struct.sshbuf* %126)
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %128, %129
  %131 = call i32 @ASSERT_SIZE_T_EQ(i64 %127, i64 %130)
  %132 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %133 = call i64 @sshbuf_len(%struct.sshbuf* %132)
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %134, %135
  %137 = call i32 @ASSERT_SIZE_T_EQ(i64 %133, i64 %136)
  br label %138

138:                                              ; preds = %122, %110
  br label %209

139:                                              ; preds = %89
  %140 = load i64, i64* %6, align 8
  %141 = icmp ult i64 %140, 8
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = call i32 @arc4random_uniform(i32 2048)
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %6, align 8
  br label %95

145:                                              ; preds = %139
  %146 = load i64, i64* %6, align 8
  %147 = icmp eq i64 %146, 8
  br i1 %147, label %148, label %169

148:                                              ; preds = %145
  %149 = call i32 @arc4random_uniform(i32 16384)
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %6, align 8
  %151 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %152 = call i64 @sshbuf_max_size(%struct.sshbuf* %151)
  store i64 %152, i64* %3, align 8
  %153 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %154 = load i64, i64* %6, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i64 @sshbuf_set_max_size(%struct.sshbuf* %153, i32 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %160 = call i64 @sshbuf_max_size(%struct.sshbuf* %159)
  %161 = load i64, i64* %3, align 8
  %162 = call i32 @ASSERT_SIZE_T_EQ(i64 %160, i64 %161)
  br label %168

163:                                              ; preds = %148
  %164 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %165 = call i64 @sshbuf_max_size(%struct.sshbuf* %164)
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @ASSERT_SIZE_T_EQ(i64 %165, i64 %166)
  br label %168

168:                                              ; preds = %163, %158
  br label %207

169:                                              ; preds = %145
  %170 = call i32 @arc4random_uniform(i32 8192)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %169
  %173 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %174 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %173)
  %175 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %174, i32* null)
  %176 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %177 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %176)
  %178 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %179 = call i64 @sshbuf_len(%struct.sshbuf* %178)
  %180 = call i32 @ASSERT_MEM_ZERO_NE(%struct.sshbuf* %177, i64 %179)
  %181 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %182 = call i32 @sshbuf_free(%struct.sshbuf* %181)
  %183 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %183, %struct.sshbuf** %1, align 8
  %184 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %185 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %184, i32* null)
  %186 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %187 = call i64 @sshbuf_set_max_size(%struct.sshbuf* %186, i32 16384)
  %188 = call i32 @ASSERT_INT_EQ(i64 %187, i32 0)
  br label %206

189:                                              ; preds = %169
  %190 = call i32 @arc4random_buf(i64* %6, i32 8)
  br label %191

191:                                              ; preds = %197, %189
  %192 = load i64, i64* %6, align 8
  %193 = load i32, i32* @SSHBUF_SIZE_MAX, align 4
  %194 = sdiv i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load i64, i64* %6, align 8
  %199 = shl i64 %198, 1
  store i64 %199, i64* %6, align 8
  %200 = call i32 (...) @arc4random()
  %201 = and i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* %6, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %6, align 8
  br label %191

205:                                              ; preds = %191
  br label %35

206:                                              ; preds = %172
  br label %207

207:                                              ; preds = %206, %168
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208, %138
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %82
  %212 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %213 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %212)
  %214 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %213, i32* null)
  %215 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %216 = call i64 @sshbuf_max_size(%struct.sshbuf* %215)
  %217 = call i32 @ASSERT_SIZE_T_LE(i64 %216, i32 16384)
  br label %218

218:                                              ; preds = %211
  %219 = load i64, i64* %5, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %5, align 8
  br label %23

221:                                              ; preds = %23
  %222 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %223 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %222)
  %224 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %223, i32* null)
  %225 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %226 = call %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf* %225)
  %227 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %228 = call i64 @sshbuf_len(%struct.sshbuf* %227)
  %229 = call i32 @ASSERT_MEM_ZERO_NE(%struct.sshbuf* %226, i64 %228)
  %230 = load %struct.sshbuf*, %struct.sshbuf** %1, align 8
  %231 = call i32 @sshbuf_free(%struct.sshbuf* %230)
  %232 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @ASSERT_INT_EQ(i64, i32) #1

declare dso_local i64 @sshbuf_set_max_size(%struct.sshbuf*, i32) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @ASSERT_MEM_ZERO_NE(%struct.sshbuf*, i64) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @arc4random_uniform(i32) #1

declare dso_local i64 @sshbuf_avail(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i64, %struct.sshbuf**) #1

declare dso_local i32 @ASSERT_PTR_EQ(%struct.sshbuf*, i32*) #1

declare dso_local i32 @ASSERT_SIZE_T_LT(i64, i64) #1

declare dso_local i32 @ASSERT_SIZE_T_EQ(i64, i64) #1

declare dso_local i32 @ASSERT_SIZE_T_GE(i64, i64) #1

declare dso_local i32 @memset(%struct.sshbuf*, i32, i64) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @sshbuf_consume(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_consume_end(%struct.sshbuf*, i64) #1

declare dso_local i64 @sshbuf_max_size(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @arc4random_buf(i64*, i32) #1

declare dso_local i32 @ASSERT_SIZE_T_LE(i64, i32) #1

declare dso_local i32 @TEST_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
