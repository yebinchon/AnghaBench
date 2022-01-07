; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_auth_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_auth_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CCM B_0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64*, i64*, i64, i64, i64*)* @aes_ccm_auth_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_ccm_auth_start(i8* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64* %7, i64** %16, align 8
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = mul nsw i32 2, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 64, i32 0
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %35, 2
  %37 = udiv i64 %36, 2
  %38 = shl i64 %37, 3
  %39 = getelementptr inbounds i64, i64* %28, i64 0
  %40 = load i64, i64* %39, align 16
  %41 = or i64 %40, %38
  store i64 %41, i64* %39, align 16
  %42 = load i64, i64* %11, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i64, i64* %28, i64 0
  %45 = load i64, i64* %44, align 16
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 16
  %47 = getelementptr inbounds i64, i64* %28, i64 1
  %48 = load i64*, i64** %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub i64 15, %49
  %51 = call i32 @os_memcpy(i64* %47, i64* %48, i64 %50)
  %52 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds i64, i64* %28, i64 %55
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @WPA_PUT_BE16(i64* %56, i64 %57)
  %59 = load i32, i32* @MSG_EXCESSIVE, align 4
  %60 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %61 = call i32 @wpa_hexdump_key(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %28, i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = load i64*, i64** %16, align 8
  %64 = call i32 @aes_encrypt(i8* %62, i64* %28, i64* %63)
  %65 = load i64, i64* %14, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %8
  store i32 1, i32* %20, align 4
  br label %107

68:                                               ; preds = %8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @WPA_PUT_BE16(i64* %25, i64 %69)
  %71 = getelementptr inbounds i64, i64* %25, i64 2
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @os_memcpy(i64* %71, i64* %72, i64 %73)
  %75 = getelementptr inbounds i64, i64* %25, i64 2
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = mul nuw i64 8, %23
  %79 = sub i64 %78, 2
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @os_memset(i64* %77, i32 0, i32 %82)
  %84 = load i64*, i64** %16, align 8
  %85 = call i32 @xor_aes_block(i64* %25, i64* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = call i32 @aes_encrypt(i8* %86, i64* %25, i64* %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %68
  %95 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %25, i64 %96
  %98 = load i64*, i64** %16, align 8
  %99 = call i32 @xor_aes_block(i64* %97, i64* %98)
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %25, i64 %102
  %104 = load i64*, i64** %16, align 8
  %105 = call i32 @aes_encrypt(i8* %100, i64* %103, i64* %104)
  br label %106

106:                                              ; preds = %94, %68
  store i32 0, i32* %20, align 4
  br label %107

107:                                              ; preds = %106, %67
  %108 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %20, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #2

declare dso_local i32 @WPA_PUT_BE16(i64*, i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i32) #2

declare dso_local i32 @aes_encrypt(i8*, i64*, i64*) #2

declare dso_local i32 @os_memset(i64*, i32, i32) #2

declare dso_local i32 @xor_aes_block(i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
