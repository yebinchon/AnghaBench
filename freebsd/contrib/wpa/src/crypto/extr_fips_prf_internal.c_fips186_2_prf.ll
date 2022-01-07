; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_internal.c_fips186_2_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_internal.c_fips186_2_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

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

44:                                               ; preds = %117, %30
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %113, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %116

52:                                               ; preds = %49
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %55 = call i32 @os_memcpy(i32* %53, i32* %54, i32 20)
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %58 = call i32 @SHA1Transform(i32* %56, i32* %57)
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = call i32 @host_to_be32(i32 %60)
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %61, i32* %62, align 16
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @host_to_be32(i32 %64)
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @host_to_be32(i32 %68)
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @host_to_be32(i32 %72)
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %76 = load i32, i32* %75, align 16
  %77 = call i32 @host_to_be32(i32 %76)
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %77, i32* %78, align 16
  %79 = load i32*, i32** %16, align 8
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %81 = call i32 @os_memcpy(i32* %79, i32* %80, i32 20)
  store i32 1, i32* %17, align 4
  store i32 19, i32* %15, align 4
  br label %82

82:                                               ; preds = %105, %52
  %83 = load i32, i32* %15, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %89, %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = and i32 %98, 255
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %17, align 4
  %104 = ashr i32 %103, 8
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %85
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %15, align 4
  br label %82

108:                                              ; preds = %82
  %109 = load i32, i32* @SHA1_MAC_LEN, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %16, align 8
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %49

116:                                              ; preds = %49
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %44

120:                                              ; preds = %44
  ret i32 0
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SHA1Transform(i32*, i32*) #1

declare dso_local i32 @host_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
