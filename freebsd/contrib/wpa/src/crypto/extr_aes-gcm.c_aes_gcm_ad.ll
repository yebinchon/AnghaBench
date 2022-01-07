; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gcm_ad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gcm_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GCM: Tag mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_gcm_ad(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9) #0 {
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
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca [16 x i32], align 16
  %26 = alloca [16 x i32], align 16
  %27 = alloca i8*, align 8
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
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %22, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i8* @aes_gcm_init_hash_subkey(i32* %36, i64 %37, i32* %32)
  store i8* %38, i8** %27, align 8
  %39 = load i8*, i8** %27, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %10
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %71

42:                                               ; preds = %10
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @aes_gcm_prepare_j0(i32* %43, i64 %44, i32* %32, i32* %35)
  %46 = load i8*, i8** %27, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @aes_gcm_gctr(i8* %46, i32* %35, i32* %47, i64 %48, i32* %49)
  %51 = load i32*, i32** %18, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %56 = call i32 @aes_gcm_ghash(i32* %32, i32* %51, i64 %52, i32* %53, i64 %54, i32* %55)
  %57 = load i8*, i8** %27, align 8
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %60 = call i32 @aes_gctr(i8* %57, i32* %35, i32* %58, i32 64, i32* %59)
  %61 = load i8*, i8** %27, align 8
  %62 = call i32 @aes_encrypt_deinit(i8* %61)
  %63 = load i32*, i32** %20, align 8
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  %65 = call i64 @os_memcmp_const(i32* %63, i32* %64, i32 16)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %42
  %68 = load i32, i32* @MSG_EXCESSIVE, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %71

70:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %71

71:                                               ; preds = %70, %67, %41
  %72 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @aes_gcm_init_hash_subkey(i32*, i64, i32*) #2

declare dso_local i32 @aes_gcm_prepare_j0(i32*, i64, i32*, i32*) #2

declare dso_local i32 @aes_gcm_gctr(i8*, i32*, i32*, i64, i32*) #2

declare dso_local i32 @aes_gcm_ghash(i32*, i32*, i64, i32*, i64, i32*) #2

declare dso_local i32 @aes_gctr(i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

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
