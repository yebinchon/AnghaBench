; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_md5.c_hmac_md5_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_md5.c_hmac_md5_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_md5_vector(i32* %0, i64 %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [64 x i32], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca [6 x i32*], align 16
  %17 = alloca i64, align 8
  %18 = alloca [6 x i64], align 16
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ugt i64 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %122

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 64
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %28 = call i32 @md5_vector(i32 1, i32** %8, i64* %9, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %122

31:                                               ; preds = %26
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  store i32* %32, i32** %8, align 8
  store i64 16, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %23
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %35 = call i32 @os_memset(i32* %34, i32 0, i32 256)
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @os_memcpy(i32* %36, i32* %37, i64 %38)
  store i64 0, i64* %17, align 8
  br label %40

40:                                               ; preds = %48, %33
  %41 = load i64, i64* %17, align 8
  %42 = icmp ult i64 %41, 64
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, 54
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %17, align 8
  br label %40

51:                                               ; preds = %40
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %53 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  store i32* %52, i32** %53, align 16
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  store i64 64, i64* %54, align 16
  store i64 0, i64* %17, align 8
  br label %55

55:                                               ; preds = %74, %51
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i32**, i32*** %11, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %17, align 8
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 %65
  store i32* %63, i32** %66, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = load i64, i64* %17, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %17, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 %72
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %59
  %75 = load i64, i64* %17, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %17, align 8
  br label %55

77:                                               ; preds = %55
  %78 = load i64, i64* %10, align 8
  %79 = add i64 1, %78
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  %82 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @md5_vector(i32 %80, i32** %81, i64* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  br label %122

87:                                               ; preds = %77
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %89 = call i32 @os_memset(i32* %88, i32 0, i32 256)
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @os_memcpy(i32* %90, i32* %91, i64 %92)
  store i64 0, i64* %17, align 8
  br label %94

94:                                               ; preds = %102, %87
  %95 = load i64, i64* %17, align 8
  %96 = icmp ult i64 %95, 64
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i64, i64* %17, align 8
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, 92
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %17, align 8
  br label %94

105:                                              ; preds = %94
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %107 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  store i32* %106, i32** %107, align 16
  %108 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  store i64 64, i64* %108, align 16
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 1
  store i32* %109, i32** %110, align 8
  %111 = load i64, i64* @MD5_MAC_LEN, align 8
  %112 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 1
  store i64 %111, i64* %112, align 8
  %113 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  %114 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @md5_vector(i32 2, i32** %113, i64* %114, i32* %115)
  store i32 %116, i32* %19, align 4
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %118 = call i32 @os_memset(i32* %117, i32 0, i32 256)
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %120 = call i32 @os_memset(i32* %119, i32 0, i32 64)
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %105, %86, %30, %22
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
