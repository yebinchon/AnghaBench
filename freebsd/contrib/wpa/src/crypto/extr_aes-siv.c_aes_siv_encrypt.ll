; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-siv.c_aes_siv_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-siv.c_aes_siv_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_siv_encrypt(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [6 x i32*], align 16
  %19 = alloca [6 x i64], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32** %33)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 32
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 48
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %116

48:                                               ; preds = %44, %41, %38
  %49 = load i64, i64* %11, align 8
  %50 = udiv i64 %49, 2
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %10, align 8
  store i32* %51, i32** %20, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %21, align 8
  store i64 0, i64* %24, align 8
  br label %55

55:                                               ; preds = %72, %48
  %56 = load i64, i64* %24, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32**, i32*** %15, align 8
  %61 = load i64, i64* %24, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %24, align 8
  %65 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 %64
  store i32* %63, i32** %65, align 8
  %66 = load i64*, i64** %16, align 8
  %67 = load i64, i64* %24, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %24, align 8
  %71 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 %70
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %59
  %73 = load i64, i64* %24, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %24, align 8
  br label %55

75:                                               ; preds = %55
  %76 = load i32*, i32** %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 %77
  store i32* %76, i32** %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 %80
  store i64 %79, i64* %81, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  %86 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  %87 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 0
  %88 = call i64 @aes_s2v(i32* %82, i64 %83, i64 %85, i32** %86, i64* %87, i32* %31)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %116

91:                                               ; preds = %75
  %92 = load i32*, i32** %17, align 8
  store i32* %92, i32** %25, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32* %96, i32** %26, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 @os_memcpy(i32* %97, i32* %31, i64 %99)
  %101 = load i32*, i32** %26, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @os_memcpy(i32* %101, i32* %102, i64 %103)
  %105 = getelementptr inbounds i32, i32* %31, i64 8
  %106 = load i32, i32* %105, align 16
  %107 = and i32 %106, 127
  store i32 %107, i32* %105, align 16
  %108 = getelementptr inbounds i32, i32* %31, i64 12
  %109 = load i32, i32* %108, align 16
  %110 = and i32 %109, 127
  store i32 %110, i32* %108, align 16
  %111 = load i32*, i32** %21, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32*, i32** %26, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @aes_ctr_encrypt(i32* %111, i64 %112, i32* %31, i32* %113, i64 %114)
  store i32 %115, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %116

116:                                              ; preds = %91, %90, %47
  %117 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i64 @aes_s2v(i32*, i64, i64, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @aes_ctr_encrypt(i32*, i64, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
