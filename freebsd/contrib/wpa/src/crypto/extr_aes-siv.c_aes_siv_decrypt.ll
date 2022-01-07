; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-siv.c_aes_siv_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-siv.c_aes_siv_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_siv_decrypt(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %25, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %26, align 8
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %27, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(i32** %42)
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %41, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 32
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 48
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 64
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %40, %8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %140

57:                                               ; preds = %53, %50, %47
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %58, %60
  store i64 %61, i64* %22, align 8
  %62 = load i64, i64* %11, align 8
  %63 = udiv i64 %62, 2
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %20, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %21, align 8
  store i64 0, i64* %23, align 8
  br label %68

68:                                               ; preds = %85, %57
  %69 = load i64, i64* %23, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32**, i32*** %15, align 8
  %74 = load i64, i64* %23, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %23, align 8
  %78 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 %77
  store i32* %76, i32** %78, align 8
  %79 = load i64*, i64** %16, align 8
  %80 = load i64, i64* %23, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %23, align 8
  %84 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 %83
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %72
  %86 = load i64, i64* %23, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %23, align 8
  br label %68

88:                                               ; preds = %68
  %89 = load i32*, i32** %17, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 %90
  store i32* %89, i32** %91, align 8
  %92 = load i64, i64* %22, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 %93
  store i64 %92, i64* %94, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @os_memcpy(i32* %32, i32* %95, i64 %97)
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i64, i64* %22, align 8
  %105 = call i32 @os_memcpy(i32* %99, i32* %103, i64 %104)
  %106 = getelementptr inbounds i32, i32* %32, i64 8
  %107 = load i32, i32* %106, align 16
  %108 = and i32 %107, 127
  store i32 %108, i32* %106, align 16
  %109 = getelementptr inbounds i32, i32* %32, i64 12
  %110 = load i32, i32* %109, align 16
  %111 = and i32 %110, 127
  store i32 %111, i32* %109, align 16
  %112 = load i32*, i32** %21, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i64, i64* %22, align 8
  %116 = call i32 @aes_ctr_encrypt(i32* %112, i64 %113, i32* %32, i32* %114, i64 %115)
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %88
  %120 = load i32, i32* %24, align 4
  store i32 %120, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %140

121:                                              ; preds = %88
  %122 = load i32*, i32** %20, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds [6 x i32*], [6 x i32*]* %18, i64 0, i64 0
  %127 = getelementptr inbounds [6 x i64], [6 x i64]* %19, i64 0, i64 0
  %128 = call i32 @aes_s2v(i32* %122, i64 %123, i64 %125, i32** %126, i64* %127, i32* %35)
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %24, align 4
  store i32 %132, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %140

133:                                              ; preds = %121
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %136 = call i64 @os_memcmp(i32* %35, i32* %134, i32 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %140

139:                                              ; preds = %133
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %140

140:                                              ; preds = %139, %138, %131, %119, %56
  %141 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @aes_ctr_encrypt(i32*, i64, i32*, i32*, i64) #2

declare dso_local i32 @aes_s2v(i32*, i64, i64, i32**, i64*, i32*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
