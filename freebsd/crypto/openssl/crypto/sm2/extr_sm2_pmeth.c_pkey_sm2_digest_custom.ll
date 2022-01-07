; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_digest_custom.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_digest_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SM2_F_PKEY_SM2_DIGEST_CUSTOM = common dso_local global i32 0, align 4
@SM2_R_ID_NOT_SET = common dso_local global i32 0, align 4
@SM2_R_INVALID_DIGEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @pkey_sm2_digest_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_sm2_digest_custom(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @EVP_MD_CTX_md(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @EVP_MD_size(i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @SM2_F_PKEY_SM2_DIGEST_CUSTOM, align 4
  %36 = load i32, i32* @SM2_R_ID_NOT_SET, align 4
  %37 = call i32 @SM2err(i32 %35, i32 %36)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

38:                                               ; preds = %2
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @SM2_F_PKEY_SM2_DIGEST_CUSTOM, align 4
  %43 = load i32, i32* @SM2_R_INVALID_DIGEST, align 4
  %44 = call i32 @SM2err(i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @sm2_compute_z_digest(i32* %16, i32* %46, i32 %49, i32 %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

57:                                               ; preds = %45
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @EVP_DigestUpdate(i32* %58, i32* %16, i64 %60)
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %56, %41, %34
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_md(i32*) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @SM2err(i32, i32) #2

declare dso_local i32 @sm2_compute_z_digest(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
