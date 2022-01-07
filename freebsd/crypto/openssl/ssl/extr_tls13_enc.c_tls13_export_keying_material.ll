; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_export_keying_material.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_export_keying_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@tls13_export_keying_material.exporterlabel = internal constant [9 x i8] c"exporter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_export_keying_material(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  %30 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %33 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = call i32* @ssl_handshake_md(%struct.TYPE_6__* %36)
  store i32* %37, i32** %21, align 8
  %38 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %38, i32** %22, align 8
  store i32 0, i32* %25, align 4
  %39 = load i32*, i32** %22, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = call i32 @ossl_statem_export_allowed(%struct.TYPE_6__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %8
  br label %98

46:                                               ; preds = %41
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32*, i32** %22, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = call i64 @EVP_DigestInit_ex(i32* %51, i32* %52, i32* null)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %22, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @EVP_DigestUpdate(i32* %56, i8* %57, i64 %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %96, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %22, align 8
  %63 = call i64 @EVP_DigestFinal_ex(i32* %62, i8* %32, i32* %23)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %96, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %22, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = call i64 @EVP_DigestInit_ex(i32* %66, i32* %67, i32* null)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %22, align 8
  %72 = call i64 @EVP_DigestFinal_ex(i32* %71, i8* %35, i32* %24)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %23, align 4
  %85 = zext i32 %84 to i64
  %86 = call i32 @tls13_hkdf_expand(%struct.TYPE_6__* %75, i32* %76, i8* %79, i8* %80, i32 %82, i8* %35, i32 %83, i8* %29, i64 %85, i32 0)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %74
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %23, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @tls13_hkdf_expand(%struct.TYPE_6__* %89, i32* %90, i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tls13_export_keying_material.exporterlabel, i64 0, i64 0), i32 8, i8* %32, i32 %91, i8* %92, i64 %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88, %74, %70, %65, %61, %55, %50
  br label %98

97:                                               ; preds = %88
  store i32 1, i32* %25, align 4
  br label %98

98:                                               ; preds = %97, %96, %45
  %99 = load i32*, i32** %22, align 8
  %100 = call i32 @EVP_MD_CTX_free(i32* %99)
  %101 = load i32, i32* %25, align 4
  %102 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_6__*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @ossl_statem_export_allowed(%struct.TYPE_6__*) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_6__*, i32*, i8*, i8*, i32, i8*, i32, i8*, i64, i32) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
