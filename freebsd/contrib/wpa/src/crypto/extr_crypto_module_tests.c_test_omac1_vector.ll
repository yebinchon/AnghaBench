; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_omac1_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_omac1_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omac1_test_vector = type { i32*, i32*, i32, i32* }

@__const.test_omac1_vector.key = private unnamed_addr constant [16 x i32] [i32 43, i32 126, i32 21, i32 22, i32 40, i32 174, i32 210, i32 166, i32 171, i32 247, i32 21, i32 136, i32 9, i32 207, i32 79, i32 60], align 16
@__const.test_omac1_vector.msg = private unnamed_addr constant [3 x i32] [i32 18, i32 52, i32 86], align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"OMAC1-AES-128 test vector %u failed\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"OMAC1-AES-128(vector) test vector %u failed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"OMAC1-AES-128(vector2) test vector %u failed\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"OMAC1-AES-128 short test mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omac1_test_vector*, i32)* @test_omac1_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_omac1_vector(%struct.omac1_test_vector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omac1_test_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca [24 x i32], align 16
  %9 = alloca [24 x i32], align 16
  %10 = alloca [3 x i32*], align 16
  %11 = alloca [3 x i64], align 16
  store %struct.omac1_test_vector* %0, %struct.omac1_test_vector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i32]* @__const.test_omac1_vector.key to i8*), i64 64, i1 false)
  %13 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([3 x i32]* @__const.test_omac1_vector.msg to i8*), i64 12, i1 false)
  %14 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %15 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %18 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %21 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %24 = call i64 @omac1_aes_128(i32* %16, i32* %19, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %28 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %29 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @os_memcmp(i32* %27, i32* %30, i32 16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26, %2
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 1, i32* %3, align 4
  br label %162

37:                                               ; preds = %26
  %38 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %39 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %131

42:                                               ; preds = %37
  %43 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %44 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %45, i32** %46, align 16
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 1, i64* %47, align 16
  %48 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %49 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %51, i32** %52, align 8
  %53 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %54 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 %57, i64* %58, align 8
  %59 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %60 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %64 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %65 = call i64 @omac1_aes_128_vector(i32* %61, i32 2, i32** %62, i64* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %42
  %68 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %69 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %70 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @os_memcmp(i32* %68, i32* %71, i32 16)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67, %42
  %75 = load i32, i32* @MSG_ERROR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  br label %162

78:                                               ; preds = %67
  %79 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %80 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %81, i32** %82, align 16
  %83 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %84 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %87, i64* %88, align 16
  %89 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %90 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %93 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 -2
  %98 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %97, i32** %98, align 8
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 1, i64* %99, align 8
  %100 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %101 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %104 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = getelementptr inbounds i32, i32* %107, i64 -1
  %109 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %108, i32** %109, align 16
  %110 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 1, i64* %110, align 16
  %111 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %112 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %116 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %117 = call i64 @omac1_aes_128_vector(i32* %113, i32 3, i32** %114, i64* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %78
  %120 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %121 = load %struct.omac1_test_vector*, %struct.omac1_test_vector** %4, align 8
  %122 = getelementptr inbounds %struct.omac1_test_vector, %struct.omac1_test_vector* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @os_memcmp(i32* %120, i32* %123, i32 16)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119, %78
  %127 = load i32, i32* @MSG_ERROR, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  store i32 1, i32* %3, align 4
  br label %162

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %37
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %133 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %132, i32** %133, align 16
  %134 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 1, i64* %134, align 16
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %136 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %135, i32** %136, align 8
  %137 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 1, i64* %137, align 8
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %139 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %138, i32** %139, align 16
  %140 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 1, i64* %140, align 16
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %143 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %144 = call i64 @omac1_aes_128(i32* %141, i32* %142, i32 12, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %131
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %148 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %149 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %150 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %151 = call i64 @omac1_aes_128_vector(i32* %147, i32 3, i32** %148, i64* %149, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %155 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %156 = call i64 @os_memcmp(i32* %154, i32* %155, i32 16)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %146, %131
  %159 = load i32, i32* @MSG_ERROR, align 4
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %162

161:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %158, %126, %74, %33
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @omac1_aes_128(i32*, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @omac1_aes_128_vector(i32*, i32, i32**, i64*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
