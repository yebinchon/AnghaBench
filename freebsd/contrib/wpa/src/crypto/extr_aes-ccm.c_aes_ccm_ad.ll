; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_ad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CCM: Auth mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_ccm_ad(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i64 2, i64* %22, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %24, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %25, align 8
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %27, align 8
  %39 = load i64, i64* %19, align 8
  %40 = icmp ugt i64 %39, 30
  br i1 %40, label %46, label %41

41:                                               ; preds = %10
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %10
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %86

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i8* @aes_encrypt_init(i32* %48, i64 %49)
  store i8* %50, i8** %23, align 8
  %51 = load i8*, i8** %23, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %86

54:                                               ; preds = %47
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @aes_ccm_encr_start(i64 2, i32* %55, i32* %35)
  %57 = load i8*, i8** %23, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @aes_ccm_decr_auth(i8* %57, i64 %58, i32* %35, i32* %59, i32* %38)
  %61 = load i8*, i8** %23, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = call i32 @aes_ccm_encr(i8* %61, i64 2, i32* %62, i64 %63, i32* %64, i32* %35)
  %66 = load i8*, i8** %23, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i32 @aes_ccm_auth_start(i8* %66, i64 %67, i64 2, i32* %68, i32* %69, i64 %70, i64 %71, i32* %32)
  %73 = load i8*, i8** %23, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @aes_ccm_auth(i8* %73, i32* %74, i64 %75, i32* %32)
  %77 = load i8*, i8** %23, align 8
  %78 = call i32 @aes_encrypt_deinit(i8* %77)
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @os_memcmp_const(i32* %32, i32* %38, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %54
  %83 = load i32, i32* @MSG_EXCESSIVE, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %86

85:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %86

86:                                               ; preds = %85, %82, %53, %46
  %87 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @aes_encrypt_init(i32*, i64) #2

declare dso_local i32 @aes_ccm_encr_start(i64, i32*, i32*) #2

declare dso_local i32 @aes_ccm_decr_auth(i8*, i64, i32*, i32*, i32*) #2

declare dso_local i32 @aes_ccm_encr(i8*, i64, i32*, i64, i32*, i32*) #2

declare dso_local i32 @aes_ccm_auth_start(i8*, i64, i64, i32*, i32*, i64, i64, i32*) #2

declare dso_local i32 @aes_ccm_auth(i8*, i32*, i64, i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
