; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pub_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pub_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@RSA_F_RSA_PUB_DECODE = common dso_local global i32 0, align 4
@ERR_R_RSA_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @rsa_pub_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_pub_decode(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @X509_PUBKEY_get0_param(i32* null, i8** %6, i32* %7, i32** %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32* @d2i_RSAPublicKey(i32* null, i8** %6, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @RSA_F_RSA_PUB_DECODE, align 4
  %20 = load i32, i32* @ERR_R_RSA_LIB, align 4
  %21 = call i32 @RSAerr(i32 %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @rsa_param_decode(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @RSA_free(i32* %28)
  store i32 0, i32* %3, align 4
  br label %44

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @EVP_PKEY_assign(%struct.TYPE_6__* %31, i32 %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @RSA_free(i32* %41)
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %27, %18, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @X509_PUBKEY_get0_param(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32* @d2i_RSAPublicKey(i32*, i8**, i32) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @rsa_param_decode(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @EVP_PKEY_assign(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
