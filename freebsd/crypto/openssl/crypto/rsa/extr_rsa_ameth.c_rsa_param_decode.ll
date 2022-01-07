; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_param_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_param_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@RSA_F_RSA_PARAM_DECODE = common dso_local global i32 0, align 4
@RSA_R_INVALID_PSS_PARAMETERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @rsa_param_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_param_decode(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @X509_ALGOR_get0(i32** %6, i32* %8, i8** %7, i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @OBJ_obj2nid(i32* %11)
  %13 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @V_ASN1_UNDEF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @RSA_F_RSA_PARAM_DECODE, align 4
  %27 = load i32, i32* @RSA_R_INVALID_PSS_PARAMETERS, align 4
  %28 = call i32 @RSAerr(i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @rsa_pss_decode(i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %25, %20, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @X509_ALGOR_get0(i32**, i32*, i8**, i32*) #1

declare dso_local i64 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32* @rsa_pss_decode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
