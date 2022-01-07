; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_export_keying_material_early.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_export_keying_material_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@tls13_export_keying_material_early.exporterlabel = internal constant [9 x i8] c"exporter\00", align 1
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_export_keying_material_early(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %25 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %32 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %35 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %35, i32** %20, align 8
  store i32 0, i32* %23, align 4
  %36 = load i32*, i32** %20, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = call i32 @ossl_statem_export_early_allowed(%struct.TYPE_11__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %7
  br label %123

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call %struct.TYPE_10__* @SSL_SESSION_get0_cipher(%struct.TYPE_12__* %64)
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %24, align 8
  br label %71

66:                                               ; preds = %53, %48, %43
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call %struct.TYPE_10__* @SSL_SESSION_get0_cipher(%struct.TYPE_12__* %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %24, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @ssl_md(i32 %74)
  store i32* %75, i32** %19, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = call i64 @EVP_DigestInit_ex(i32* %76, i32* %77, i32* null)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %121, label %80

80:                                               ; preds = %71
  %81 = load i32*, i32** %20, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @EVP_DigestUpdate(i32* %81, i8* %82, i64 %83)
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %121, label %86

86:                                               ; preds = %80
  %87 = load i32*, i32** %20, align 8
  %88 = call i64 @EVP_DigestFinal_ex(i32* %87, i8* %31, i32* %21)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i64 @EVP_DigestInit_ex(i32* %91, i32* %92, i32* null)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %90
  %96 = load i32*, i32** %20, align 8
  %97 = call i64 @EVP_DigestFinal_ex(i32* %96, i8* %34, i32* %22)
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %21, align 4
  %110 = zext i32 %109 to i64
  %111 = call i32 @tls13_hkdf_expand(%struct.TYPE_11__* %100, i32* %101, i8* %104, i8* %105, i32 %107, i8* %34, i32 %108, i8* %28, i64 %110, i32 0)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %99
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %21, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @tls13_hkdf_expand(%struct.TYPE_11__* %114, i32* %115, i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tls13_export_keying_material_early.exporterlabel, i64 0, i64 0), i32 8, i8* %31, i32 %116, i8* %117, i64 %118, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113, %99, %95, %90, %86, %80, %71
  br label %123

122:                                              ; preds = %113
  store i32 1, i32* %23, align 4
  br label %123

123:                                              ; preds = %122, %121, %42
  %124 = load i32*, i32** %20, align 8
  %125 = call i32 @EVP_MD_CTX_free(i32* %124)
  %126 = load i32, i32* %23, align 4
  %127 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @ossl_statem_export_early_allowed(%struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_10__* @SSL_SESSION_get0_cipher(%struct.TYPE_12__*) #2

declare dso_local i32* @ssl_md(i32) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_11__*, i32*, i8*, i8*, i32, i8*, i32, i8*, i64, i32) #2

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
