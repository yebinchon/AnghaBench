; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_pub_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_pub_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32* }

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DH_F_DH_PUB_DECODE = common dso_local global i32 0, align 4
@DH_R_PARAMETER_ENCODING_ERROR = common dso_local global i32 0, align 4
@DH_R_DECODE_ERROR = common dso_local global i32 0, align 4
@DH_R_BN_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @dh_pub_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_pub_decode(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @X509_PUBKEY_get0_param(i32* null, i8** %6, i32* %8, i32** %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @X509_ALGOR_get0(i32* null, i32* %10, i8** %11, i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @DH_F_DH_PUB_DECODE, align 4
  %28 = load i32, i32* @DH_R_PARAMETER_ENCODING_ERROR, align 4
  %29 = call i32 @DHerr(i32 %27, i32 %28)
  br label %76

30:                                               ; preds = %20
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.TYPE_13__* @d2i_dhp(%struct.TYPE_12__* %39, i8** %7, i32 %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %15, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @DH_F_DH_PUB_DECODE, align 4
  %45 = load i32, i32* @DH_R_DECODE_ERROR, align 4
  %46 = call i32 @DHerr(i32 %44, i32 %45)
  br label %76

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = call i32* @d2i_ASN1_INTEGER(i32* null, i8** %6, i32 %48)
  store i32* %49, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @DH_F_DH_PUB_DECODE, align 4
  %53 = load i32, i32* @DH_R_DECODE_ERROR, align 4
  %54 = call i32 @DHerr(i32 %52, i32 %53)
  br label %76

55:                                               ; preds = %47
  %56 = load i32*, i32** %14, align 8
  %57 = call i32* @ASN1_INTEGER_to_BN(i32* %56, i32* null)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = icmp eq i32* %57, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @DH_F_DH_PUB_DECODE, align 4
  %63 = load i32, i32* @DH_R_BN_DECODE_ERROR, align 4
  %64 = call i32 @DHerr(i32 %62, i32 %63)
  br label %76

65:                                               ; preds = %55
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @ASN1_INTEGER_free(i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %75 = call i32 @EVP_PKEY_assign(%struct.TYPE_12__* %68, i32 %73, %struct.TYPE_13__* %74)
  store i32 1, i32* %3, align 4
  br label %81

76:                                               ; preds = %61, %51, %43, %26
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @ASN1_INTEGER_free(i32* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %80 = call i32 @DH_free(%struct.TYPE_13__* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %65, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @X509_PUBKEY_get0_param(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32 @X509_ALGOR_get0(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local %struct.TYPE_13__* @d2i_dhp(%struct.TYPE_12__*, i8**, i32) #1

declare dso_local i32* @d2i_ASN1_INTEGER(i32*, i8**, i32) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @EVP_PKEY_assign(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @DH_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
