; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pub_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pub_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32* }

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DSA_F_DSA_PUB_DECODE = common dso_local global i32 0, align 4
@DSA_R_DECODE_ERROR = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@V_ASN1_UNDEF = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@DSA_R_PARAMETER_ENCODING_ERROR = common dso_local global i32 0, align 4
@DSA_R_BN_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dsa_pub_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_pub_decode(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @X509_PUBKEY_get0_param(i32* null, i8** %6, i32* %8, i32** %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @X509_ALGOR_get0(i32* null, i32* %10, i8** %11, i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %12, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.TYPE_7__* @d2i_DSAparams(i32* null, i8** %7, i32 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %15, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32, i32* @DSA_F_DSA_PUB_DECODE, align 4
  %40 = load i32, i32* @DSA_R_DECODE_ERROR, align 4
  %41 = call i32 @DSAerr(i32 %39, i32 %40)
  br label %88

42:                                               ; preds = %26
  br label %64

43:                                               ; preds = %20
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @V_ASN1_NULL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @V_ASN1_UNDEF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %43
  %52 = call %struct.TYPE_7__* (...) @DSA_new()
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %15, align 8
  %53 = icmp eq %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @DSA_F_DSA_PUB_DECODE, align 4
  %56 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %57 = call i32 @DSAerr(i32 %55, i32 %56)
  br label %88

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %47
  %60 = load i32, i32* @DSA_F_DSA_PUB_DECODE, align 4
  %61 = load i32, i32* @DSA_R_PARAMETER_ENCODING_ERROR, align 4
  %62 = call i32 @DSAerr(i32 %60, i32 %61)
  br label %88

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @d2i_ASN1_INTEGER(i32* null, i8** %6, i32 %65)
  store i32* %66, i32** %14, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @DSA_F_DSA_PUB_DECODE, align 4
  %70 = load i32, i32* @DSA_R_DECODE_ERROR, align 4
  %71 = call i32 @DSAerr(i32 %69, i32 %70)
  br label %88

72:                                               ; preds = %64
  %73 = load i32*, i32** %14, align 8
  %74 = call i32* @ASN1_INTEGER_to_BN(i32* %73, i32* null)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = icmp eq i32* %74, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @DSA_F_DSA_PUB_DECODE, align 4
  %80 = load i32, i32* @DSA_R_BN_DECODE_ERROR, align 4
  %81 = call i32 @DSAerr(i32 %79, i32 %80)
  br label %88

82:                                               ; preds = %72
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @ASN1_INTEGER_free(i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = call i32 @EVP_PKEY_assign_DSA(i32* %85, %struct.TYPE_7__* %86)
  store i32 1, i32* %3, align 4
  br label %93

88:                                               ; preds = %78, %68, %59, %54, %38
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @ASN1_INTEGER_free(i32* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %92 = call i32 @DSA_free(%struct.TYPE_7__* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %82, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @X509_PUBKEY_get0_param(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32*, i32*, i8**, i32*) #1

declare dso_local %struct.TYPE_7__* @d2i_DSAparams(i32*, i8**, i32) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @DSA_new(...) #1

declare dso_local i32* @d2i_ASN1_INTEGER(i32*, i8**, i32) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DSA(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @DSA_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
