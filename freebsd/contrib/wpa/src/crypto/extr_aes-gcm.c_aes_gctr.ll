; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gctr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i64, i32*)* @aes_gctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gctr(i8* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %17, align 8
  %28 = load i32*, i32** %10, align 8
  store i32* %28, i32** %18, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 1, i32* %19, align 4
  br label %94

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = udiv i64 %33, 16
  store i64 %34, i64* %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = call i32 @os_memcpy(i32* %23, i32* %35, i32 %36)
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %58, %32
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @aes_encrypt(i8* %43, i32* %23, i32* %44)
  %46 = load i32*, i32** %18, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = call i32 @xor_block(i32* %46, i32* %47)
  %49 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %50 = load i32*, i32** %17, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %17, align 8
  %53 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %18, align 8
  %57 = call i32 @inc32(i32* %23)
  br label %58

58:                                               ; preds = %42
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32*, i32** %17, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %61
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @aes_encrypt(i8* %73, i32* %23, i32* %26)
  store i64 0, i64* %11, align 8
  br label %75

75:                                               ; preds = %89, %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i32*, i32** %17, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %17, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32, i32* %26, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %82, %85
  %87 = load i32*, i32** %18, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %18, align 8
  store i32 %86, i32* %87, align 4
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %75

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %61
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %93, %31
  %95 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %19, align 4
  switch i32 %96, label %98 [
    i32 0, label %97
    i32 1, label %97
  ]

97:                                               ; preds = %94, %94
  ret void

98:                                               ; preds = %94
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #2

declare dso_local i32 @xor_block(i32*, i32*) #2

declare dso_local i32 @inc32(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
