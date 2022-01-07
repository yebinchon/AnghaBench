; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_DigestFinalXOF.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_DigestFinalXOF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i8*)*, i32, i32 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*, i32, i32, i32*)* }

@EVP_MD_FLAG_XOF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EVP_MD_CTRL_XOF_LEN = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4
@EVP_F_EVP_DIGESTFINALXOF = common dso_local global i32 0, align 4
@EVP_R_NOT_XOF_OR_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestFinalXOF(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EVP_MD_FLAG_XOF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load i64 (%struct.TYPE_9__*, i32, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load i32, i32* @EVP_MD_CTRL_XOF_LEN, align 4
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 %25(%struct.TYPE_9__* %26, i32 %27, i32 %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %20
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_9__*, i8*)*, i32 (%struct.TYPE_9__*, i8*)** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 %37(%struct.TYPE_9__* %38, i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_9__*)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i32 %52(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %57 = call i32 @EVP_MD_CTX_set_flags(%struct.TYPE_9__* %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %32
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @OPENSSL_cleanse(i32 %61, i32 %66)
  br label %72

68:                                               ; preds = %20, %16, %3
  %69 = load i32, i32* @EVP_F_EVP_DIGESTFINALXOF, align 4
  %70 = load i32, i32* @EVP_R_NOT_XOF_OR_INVALID_LENGTH, align 4
  %71 = call i32 @EVPerr(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @EVP_MD_CTX_set_flags(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
