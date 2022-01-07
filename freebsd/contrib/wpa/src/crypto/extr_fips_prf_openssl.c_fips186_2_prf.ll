; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_openssl.c_fips186_2_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_openssl.c_fips186_2_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fips186_2_prf(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca [5 x i32], align 16
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %16, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %19, 256
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 256, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @os_memset(i32* %24, i32 0, i32 %27)
  br label %30

29:                                               ; preds = %4
  store i64 256, i64* %6, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @os_memcpy(i32* %31, i32* %32, i32 %34)
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 1732584193, i32* %36, align 16
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 -271733879, i32* %37, align 4
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 -1732584194, i32* %38, align 8
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 271733878, i32* %39, align 4
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 -1009589776, i32* %40, align 16
  %41 = load i64, i64* %8, align 8
  %42 = udiv i64 %41, 40
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %116, %30
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %119

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %112, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %115

52:                                               ; preds = %49
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %55 = call i32 @os_memcpy(i32* %53, i32* %54, i32 20)
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %58 = call i32 @sha1_transform(i32* %56, i32* %57)
  %59 = load i32*, i32** %16, align 8
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = call i32 @WPA_PUT_BE32(i32* %59, i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @WPA_PUT_BE32(i32* %64, i32 %66)
  %68 = load i32*, i32** %16, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @WPA_PUT_BE32(i32* %69, i32 %71)
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 12
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WPA_PUT_BE32(i32* %74, i32 %76)
  %78 = load i32*, i32** %16, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %81 = load i32, i32* %80, align 16
  %82 = call i32 @WPA_PUT_BE32(i32* %79, i32 %81)
  store i32 1, i32* %17, align 4
  store i32 19, i32* %15, align 4
  br label %83

83:                                               ; preds = %106, %52
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %90, %95
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 255
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %17, align 4
  %105 = ashr i32 %104, 8
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %86
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %15, align 4
  br label %83

109:                                              ; preds = %83
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 20
  store i32* %111, i32** %16, align 8
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %49

115:                                              ; preds = %49
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %44

119:                                              ; preds = %44
  ret i32 0
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha1_transform(i32*, i32*) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
