; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-wrap.c_aes_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-wrap.c_aes_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_wrap(i32* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32*, i32** %11, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @os_memset(i32* %28, i32 166, i32 8)
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 8, %32
  %34 = call i32 @os_memcpy(i32* %30, i32* %31, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @aes_encrypt_init(i32* %35, i64 %36)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %105

41:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %99, %41
  %43 = load i32, i32* %17, align 4
  %44 = icmp sle i32 %43, 5
  br i1 %44, label %45, label %102

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %47, i32** %13, align 8
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %95, %45
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %48
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @os_memcpy(i32* %24, i32* %53, i32 8)
  %55 = getelementptr inbounds i32, i32* %24, i64 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @os_memcpy(i32* %55, i32* %56, i32 8)
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 @aes_encrypt(i8* %58, i32* %24, i32* %24)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @os_memcpy(i32* %60, i32* %24, i32 8)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %19, align 4
  %73 = lshr i32 %72, 8
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %19, align 4
  %79 = lshr i32 %78, 16
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %19, align 4
  %85 = lshr i32 %84, 24
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %24, i64 8
  %92 = call i32 @os_memcpy(i32* %90, i32* %91, i32 8)
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  store i32* %94, i32** %13, align 8
  br label %95

95:                                               ; preds = %52
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %48

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %42

102:                                              ; preds = %42
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 @aes_encrypt_deinit(i8* %103)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %105

105:                                              ; preds = %102, %40
  %106 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i8* @aes_encrypt_init(i32*, i64) #2

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
