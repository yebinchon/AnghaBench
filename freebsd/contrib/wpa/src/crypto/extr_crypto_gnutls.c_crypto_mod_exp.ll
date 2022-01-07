; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_mod_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCRYMPI_FMT_USG = common dso_local global i32 0, align 4
@GPG_ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mod_exp(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i64* %7, i64** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32 -1, i32* %21, align 4
  %22 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @gcry_mpi_scan(i32** %17, i32 %22, i32* %23, i64 %24, i32* null)
  %26 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @gcry_mpi_scan(i32** %18, i32 %29, i32* %30, i64 %31, i32* null)
  %33 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @gcry_mpi_scan(i32** %19, i32 %36, i32* %37, i64 %38, i32* null)
  %40 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %28, %8
  br label %63

43:                                               ; preds = %35
  %44 = load i64, i64* %14, align 8
  %45 = mul i64 %44, 8
  %46 = call i32* @gcry_mpi_new(i64 %45)
  store i32* %46, i32** %20, align 8
  %47 = load i32*, i32** %20, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @gcry_mpi_powm(i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = load i32, i32* @GCRYMPI_FMT_USG, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = load i64*, i64** %16, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %16, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = call i64 @gcry_mpi_print(i32 %52, i32* %53, i64 %55, i64* %56, i32* %57)
  %59 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %63

62:                                               ; preds = %43
  store i32 0, i32* %21, align 4
  br label %63

63:                                               ; preds = %62, %61, %42
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @gcry_mpi_release(i32* %64)
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @gcry_mpi_release(i32* %66)
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @gcry_mpi_release(i32* %68)
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @gcry_mpi_release(i32* %70)
  %72 = load i32, i32* %21, align 4
  ret i32 %72
}

declare dso_local i64 @gcry_mpi_scan(i32**, i32, i32*, i64, i32*) #1

declare dso_local i32* @gcry_mpi_new(i64) #1

declare dso_local i32 @gcry_mpi_powm(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @gcry_mpi_print(i32, i32*, i64, i64*, i32*) #1

declare dso_local i32 @gcry_mpi_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
