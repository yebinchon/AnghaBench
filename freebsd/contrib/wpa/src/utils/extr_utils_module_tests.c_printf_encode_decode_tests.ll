; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_printf_encode_decode_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_printf_encode_decode_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_test_data = type { i32*, i32, i8* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"printf encode/decode tests\00", align 1
@printf_tests = common dso_local global %struct.printf_test_data* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%d: -> \22%s\22\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error in decoding#1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Error in decoding#2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Error in bounds checking#1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\DD\DD\DD\DD\DD\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Error in bounds checking#2(%d)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\\xa\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\\xq\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%d printf test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @printf_encode_decode_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printf_encode_decode_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca %struct.printf_test_data*, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @MSG_INFO, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %90, %0
  %12 = load %struct.printf_test_data*, %struct.printf_test_data** @printf_tests, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %12, i64 %14
  %16 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %93

19:                                               ; preds = %11
  %20 = load %struct.printf_test_data*, %struct.printf_test_data** @printf_tests, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %20, i64 %22
  store %struct.printf_test_data* %23, %struct.printf_test_data** %8, align 8
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %25 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %26 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %29 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @printf_encode(i8* %24, i32 100, i32* %27, i32 %30)
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = load i32, i32* %2, align 4
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* %34)
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %38 = call i32 @printf_decode(i32* %36, i32 400, i8* %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %42 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %19
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %48 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %49 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @os_memcmp(i32* %47, i32* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46, %19
  %55 = load i32, i32* @MSG_ERROR, align 4
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @wpa_hexdump(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %56, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %46
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %63 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %64 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @printf_decode(i32* %62, i32 400, i8* %65)
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %70 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %61
  %75 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %76 = load %struct.printf_test_data*, %struct.printf_test_data** %8, align 8
  %77 = getelementptr inbounds %struct.printf_test_data, %struct.printf_test_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @os_memcmp(i32* %75, i32* %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74, %61
  %83 = load i32, i32* @MSG_ERROR, align 4
  %84 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %84, i64 %85)
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %82, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %11

93:                                               ; preds = %11
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 5
  store i8 65, i8* %94, align 1
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %96 = call i32 @printf_encode(i8* %95, i32 5, i32* bitcast ([6 x i8]* @.str.4 to i32*), i32 5)
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 65
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* @MSG_ERROR, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %93
  store i32 5, i32* %2, align 4
  br label %107

107:                                              ; preds = %130, %106
  %108 = load i32, i32* %2, align 4
  %109 = icmp slt i32 %108, 10
  br i1 %109, label %110, label %133

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %112
  store i8 65, i8* %113, align 1
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @printf_encode(i8* %114, i32 %115, i32* bitcast ([6 x i8]* @.str.6 to i32*), i32 5)
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 65
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = load i32, i32* @MSG_ERROR, align 4
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %107

133:                                              ; preds = %107
  %134 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %135 = call i32 @printf_decode(i32* %134, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %133
  %141 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %142 = call i32 @printf_decode(i32* %141, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = icmp ne i32 %146, 10
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %140
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %153 = call i32 @printf_decode(i32* %152, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = icmp ne i32 %157, 113
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %151
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %159, %155
  %163 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %164 = call i32 @printf_decode(i32* %163, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = icmp ne i32 %168, 97
  br i1 %169, label %170, label %173

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %170, %166
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 10, i32* %174, align 16
  %175 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 10, i32* %175, align 4
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 5, i32* %176, align 8
  %177 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  store i32 10, i32* %177, align 4
  %178 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  store i32 5, i32* %178, align 16
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  store i32 0, i32* %179, align 4
  %180 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %181 = call i32 @int_array_len(i32* %180)
  %182 = icmp ne i32 %181, 5
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %183, %173
  %187 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %188 = call i32 @int_array_sort_unique(i32* %187)
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %190 = call i32 @int_array_len(i32* %189)
  %191 = icmp ne i32 %190, 2
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* @MSG_ERROR, align 4
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  store i32 -1, i32* %1, align 4
  br label %203

202:                                              ; preds = %195
  store i32 0, i32* %1, align 4
  br label %203

203:                                              ; preds = %202, %198
  %204 = load i32, i32* %1, align 4
  ret i32 %204
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @printf_encode(i8*, i32, i32*, i32) #1

declare dso_local i32 @printf_decode(i32*, i32, i8*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @int_array_len(i32*) #1

declare dso_local i32 @int_array_sort_unique(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
