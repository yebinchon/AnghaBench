; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_dh_derive_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_dh_derive_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCRYMPI_FMT_USG = common dso_local global i32 0, align 4
@GPG_ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_dh_derive_secret(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32* %7, i32** %20, align 8
  store i64 %8, i64* %21, align 8
  store i32* %9, i32** %22, align 8
  store i64* %10, i64** %23, align 8
  store i32* null, i32** %24, align 8
  store i32 -1, i32* %25, align 4
  %30 = load i64, i64* %21, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %11
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %20, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i64 @os_memcmp(i32* %38, i32* %39, i64 %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %11
  store i32 -1, i32* %12, align 4
  br label %119

44:                                               ; preds = %37, %33
  %45 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %46 = load i32*, i32** %20, align 8
  %47 = load i64, i64* %21, align 8
  %48 = call i64 @gcry_mpi_scan(i32** %24, i32 %45, i32* %46, i64 %47, i32* null)
  %49 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i32*, i32** %24, align 8
  %53 = call i64 @gcry_mpi_cmp_ui(i32* %52, i32 1)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %44
  br label %115

56:                                               ; preds = %51
  %57 = load i32*, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %105

59:                                               ; preds = %56
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %60 = load i64, i64* %15, align 8
  %61 = mul i64 %60, 8
  %62 = call i32* @gcry_mpi_new(i64 %61)
  store i32* %62, i32** %28, align 8
  %63 = load i32*, i32** %28, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @gcry_mpi_scan(i32** %26, i32 %66, i32* %67, i64 %68, i32* null)
  %70 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i64 @gcry_mpi_scan(i32** %27, i32 %73, i32* %74, i64 %75, i32* null)
  %77 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %78 = icmp ne i64 %76, %77
  br label %79

79:                                               ; preds = %72, %65, %59
  %80 = phi i1 [ true, %65 ], [ true, %59 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %29, align 4
  %82 = load i32, i32* %29, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %28, align 8
  %86 = load i32*, i32** %24, align 8
  %87 = load i32*, i32** %27, align 8
  %88 = load i32*, i32** %26, align 8
  %89 = call i32 @gcry_mpi_powm(i32* %85, i32* %86, i32* %87, i32* %88)
  %90 = load i32*, i32** %28, align 8
  %91 = call i64 @gcry_mpi_cmp_ui(i32* %90, i32 1)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %29, align 4
  br label %94

94:                                               ; preds = %84, %79
  %95 = load i32*, i32** %26, align 8
  %96 = call i32 @gcry_mpi_release(i32* %95)
  %97 = load i32*, i32** %27, align 8
  %98 = call i32 @gcry_mpi_release(i32* %97)
  %99 = load i32*, i32** %28, align 8
  %100 = call i32 @gcry_mpi_release(i32* %99)
  %101 = load i32, i32* %29, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %115

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %56
  %106 = load i32*, i32** %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i32*, i32** %22, align 8
  %113 = load i64*, i64** %23, align 8
  %114 = call i32 @crypto_mod_exp(i32* %106, i64 %107, i32* %108, i64 %109, i32* %110, i64 %111, i32* %112, i64* %113)
  store i32 %114, i32* %25, align 4
  br label %115

115:                                              ; preds = %105, %103, %55
  %116 = load i32*, i32** %24, align 8
  %117 = call i32 @gcry_mpi_release(i32* %116)
  %118 = load i32, i32* %25, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %115, %43
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i64 @gcry_mpi_scan(i32**, i32, i32*, i64, i32*) #1

declare dso_local i64 @gcry_mpi_cmp_ui(i32*, i32) #1

declare dso_local i32* @gcry_mpi_new(i64) #1

declare dso_local i32 @gcry_mpi_powm(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gcry_mpi_release(i32*) #1

declare dso_local i32 @crypto_mod_exp(i32*, i64, i32*, i64, i32*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
