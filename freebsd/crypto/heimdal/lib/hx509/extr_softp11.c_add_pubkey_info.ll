; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_pubkey_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_pubkey_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_object = type { i32 }

@CKK_RSA = common dso_local global i64 0, align 8
@CKR_OK = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rsa-modulus\00", align 1
@CKR_GENERAL_ERROR = common dso_local global i32 0, align 4
@CKA_MODULUS = common dso_local global i32 0, align 4
@CKA_MODULUS_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rsa-exponent\00", align 1
@CKA_PUBLIC_EXPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.st_object*, i64, i32)* @add_pubkey_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pubkey_info(i32 %0, %struct.st_object* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.st_object* %1, %struct.st_object** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @CKK_RSA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CKR_OK, align 4
  store i32 %20, i32* %5, align 4
  br label %84

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @_hx509_cert_private_key(i32 %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @CKR_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %84

27:                                               ; preds = %21
  %28 = load i32, i32* @context, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32* @_hx509_cert_private_key(i32 %29)
  %31 = call i32* @_hx509_private_key_get_internal(i32 %28, i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %84

36:                                               ; preds = %27
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @BN_num_bits(i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @BN_num_bytes(i32* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32* @malloc(i64 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @BN_bn2bin(i32* %43, i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @BN_free(i32* %46)
  %48 = load %struct.st_object*, %struct.st_object** %7, align 8
  %49 = load i32, i32* @CKA_MODULUS, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @add_object_attribute(%struct.st_object* %48, i32 0, i32 %49, i32* %50, i64 %51)
  %53 = load %struct.st_object*, %struct.st_object** %7, align 8
  %54 = load i32, i32* @CKA_MODULUS_BITS, align 4
  %55 = call i32 @add_object_attribute(%struct.st_object* %53, i32 0, i32 %54, i32* %13, i64 4)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load i32, i32* @context, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32* @_hx509_cert_private_key(i32 %59)
  %61 = call i32* @_hx509_private_key_get_internal(i32 %58, i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %36
  %65 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %65, i32* %5, align 4
  br label %84

66:                                               ; preds = %36
  %67 = load i32*, i32** %10, align 8
  %68 = call i64 @BN_num_bytes(i32* %67)
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32* @malloc(i64 %69)
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @BN_bn2bin(i32* %71, i32* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @BN_free(i32* %74)
  %76 = load %struct.st_object*, %struct.st_object** %7, align 8
  %77 = load i32, i32* @CKA_PUBLIC_EXPONENT, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @add_object_attribute(%struct.st_object* %76, i32 0, i32 %77, i32* %78, i64 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @free(i32* %81)
  %83 = load i32, i32* @CKR_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %66, %64, %34, %25, %19
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32* @_hx509_cert_private_key(i32) #1

declare dso_local i32* @_hx509_private_key_get_internal(i32, i32*, i8*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @BN_bn2bin(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @add_object_attribute(%struct.st_object*, i32, i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
